import 'dart:convert';
import 'dart:html' as html;
import 'package:web/web.dart';
import 'dart:math';
import 'dart:ui_web' as ui_web;
import 'package:flutter/material.dart';
import 'echarts_js.dart';

class MapPage extends StatefulWidget {
  // 前ページから受け取るパラメータ
  final List<Map<String, dynamic>> scatterData;
  final List<dynamic> coastLine;
  final List<dynamic> ridgeLine;
  final List<dynamic> trenchLine;

  const MapPage({
    super.key,
    required this.scatterData,
    required this.coastLine,
    required this.ridgeLine,
    required this.trenchLine,
  });

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final String _viewType = 'echarts-div-a';
  bool _isLoading = true; // ローディング状態のフラグ

  @override
  void initState() {
    super.initState();

    // HTML 要素（チャート用の DIV）の登録
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final html.DivElement div = html.DivElement()
        ..id = 'echarts_div_a'
        ..style.width = '100%'
        ..style.height = '800px';
      return div;
    });

    // ウィジェットツリーのレンダリング完了後に DOM の生成を確認してからチャート初期化する
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _waitForDomAndInitialize();
    });
  }

  /// DOM に対象の DIV が現れるまで待ってからチャートを初期化する
  Future<void> _waitForDomAndInitialize() async {
    const maxAttempts = 50;
    int attempts = 0;
    // document.getElementById を使って、対象の DOM 要素が存在するか確認
    while (html.document.getElementById('echarts_div_a') == null && attempts < maxAttempts) {
      await Future.delayed(const Duration(milliseconds: 100));
      attempts++;
    }

    if (html.document.getElementById('echarts_div_a') != null) {
      await _initializeChart();
    } else {
      print('Error: echarts_div not found after waiting.');
    }

    // チャートの初期化が完了したら、ローディングを解除する
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _initializeChart() async {
    try {
      // 各ラインデータを変換

      // Compute midZ from pacificData
      List<double> zValues = widget.scatterData
          .map((item) => (item['value'][2] as num).toDouble())
          .toList();
      double minZ = zValues.reduce(min).floorToDouble();
      double maxZ = zValues.reduce(max).ceilToDouble();
      double midZ = (minZ + maxZ) / 2;

      // Set all line z-values to midZ
      final List<List<double>> transformedCoast = widget.coastLine.map((coordinate) {
        final double lon = (coordinate[0] is num)
            ? (coordinate[0] as num).toDouble()
            : double.tryParse(coordinate[0].toString()) ?? 0.0;
        final double lat = (coordinate[1] is num)
            ? (coordinate[1] as num).toDouble()
            : double.tryParse(coordinate[1].toString()) ?? 0.0;
        return [lon, lat, midZ];
      }).toList();

      final List<List<double>> transformedRidge = widget.ridgeLine.map((coordinate) {
        final double lon = (coordinate[0] is num)
            ? (coordinate[0] as num).toDouble()
            : double.tryParse(coordinate[0].toString()) ?? 0.0;
        final double lat = (coordinate[1] is num)
            ? (coordinate[1] as num).toDouble()
            : double.tryParse(coordinate[1].toString()) ?? 0.0;
        return [lon, lat, midZ];
      }).toList();

      final List<List<double>> transformedTrench = widget.trenchLine.map((coordinate) {
        final double lon = (coordinate[0] is num)
            ? (coordinate[0] as num).toDouble()
            : double.tryParse(coordinate[0].toString()) ?? 0.0;
        final double lat = (coordinate[1] is num)
            ? (coordinate[1] as num).toDouble()
            : double.tryParse(coordinate[1].toString()) ?? 0.0;
        return [lon, lat, midZ];
      }).toList();

      // チャートオプションの作成
      final Map<String, dynamic> option = _buildChartOptions(
        transformedCoast,
        transformedRidge,
        transformedTrench,
        widget.scatterData,
      );

      final String optionJson = json.encode(option);
      // 対象の DIV が存在することが確認できたのでチャートを初期化
      initChart('echarts_div_a', optionJson);
    } catch (e) {
      print('Error initializing chart: $e');
    }
  }

  /// JSON形式の List<dynamic> データを [longitude, latitude, 0.0] の形式に変換
  List<List<double>> _transformData(List<dynamic> data) {
    return data.map((item) {
      final double lon = (item[0] is num)
          ? item[0].toDouble()
          : double.tryParse(item[0].toString()) ?? 0.0;
      final double lat = (item[1] is num)
          ? item[1].toDouble()
          : double.tryParse(item[1].toString()) ?? 0.0;
      return [lon, lat, 0.0];
    }).toList();
  }

  /// ECharts 用のオプションを生成
  Map<String, dynamic> _buildChartOptions(
      List<List<double>> coast,
      List<List<double>> ridge,
      List<List<double>> trench,
      List<Map<String, dynamic>> scatterData,
      ) {
    return {
      'tooltip': {
        'trigger': 'item',
        'triggerOn': 'click',
      },
      'xAxis3D': {
        'type': 'value',
        'name': 'Longitude',
        'min': -180,
        'max': 180,
        'splitNumber': 6,
      },
      'yAxis3D': {
        'type': 'value',
        'name': 'Latitude',
        'min': -90,
        'max': 90,
        'splitNumber': 2,
      },
      'zAxis3D': {
        'type': 'value',
        'name': 'Timeline',
        'min': 'minZ',
        'max': 'maxZ',
        'splitNumber': 2,
      },
      'grid3D': {
        'axisLine': {'lineStyle': {'color': '#fff'}},
        'axisPointer': {'lineStyle': {'color': '#ffbd67'}},
        'boxWidth': 360,
        'boxDepth': 180,
        'boxHeight': 180,
        'viewControl': {
          'projection': 'orthographic',
          'targetCoord': [0, 0, 0],
          'alpha': 180,
          'beta': 0,
          'zoom': 1.5,
          'autoRotate': false,
        },
      },
      'series': [
        {
          'name': 'Coast',
          'type': 'scatter3D',
          'data': coast,
          'symbolSize': 3,
          'itemStyle': {'color': 'white'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Ridge',
          'type': 'scatter3D',
          'data': ridge,
          'symbolSize': 3,
          'itemStyle': {'color': '#bc8f8f'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Trench',
          'type': 'scatter3D',
          'data': trench,
          'symbolSize': 3,
          'itemStyle': {'color': '#cd5c5c'},
          'tooltip': {'show': false},
        },
        if (scatterData.isNotEmpty)
          {
            'type': 'scatter3D',
            'data': scatterData,
            'symbolSize': 8,
            'dimensions': ['Longitude', 'Latitude', 'Logarithm', 'Year', 'Location', 'Precise'],
            'itemStyle': {'color': 'yellow'},
            'tooltip': {'show': true},
          },
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title: const Text('Results on Map (Atlantic centered)'),
      ),*/
      body: Stack(
        children: [
          // 常に HtmlElementView を表示しておき、上からローディングをオーバーレイする
          HtmlElementView(viewType: _viewType),
          if (_isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}