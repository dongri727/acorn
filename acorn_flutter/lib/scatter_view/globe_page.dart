import 'dart:convert';
import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'echarts_js.dart';
import 'globe_hint_page.dart';

class GlobePage extends StatefulWidget {
  // 前ページから受け取るパラメータ
  final List<Map<String, dynamic>> scatterData;
  final List<dynamic> globeLine;
  final List<dynamic> globeRidge;
  final List<dynamic> globeTrench;

  const GlobePage({
    super.key,
    required this.scatterData,
    required this.globeLine,
    required this.globeRidge,
    required this.globeTrench,
  });

  @override
  GlobePageState createState() => GlobePageState();
}

class GlobePageState extends State<GlobePage> {
  // ECharts を表示するための viewType 名
  final String _viewType = 'echarts-div-globe';
  bool _isLoading = true; // ローディング状態のフラグ

  @override
  void initState() {
    super.initState();

    // Globe 用の ECharts コンテナを登録
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final html.DivElement div = html.DivElement()
        ..id = 'echarts_div_globe'
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
    while (html.document.getElementById('echarts_div_globe') == null && attempts < maxAttempts) {
      await Future.delayed(const Duration(milliseconds: 100));
      attempts++;
    }

    if (html.document.getElementById('echarts_div_globe') != null) {
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

  /// ECharts のオプション生成と initChart 呼び出し
  Future<void> _initializeChart() async {
    try {

      final transformedCoast = _transformData(widget.globeLine);
      final transformedRidge = _transformData(widget.globeRidge);
      final transformedTrench = _transformData(widget.globeTrench);

      // ECharts 用のオプションを作成
      final Map<String, dynamic> option = _buildChartOptions(
          transformedCoast,
          transformedRidge,
          transformedTrench,
          widget.scatterData,
      );

      // Dart のマップを JSON に変換して、JS 側に渡す
      final String optionJson = json.encode(option);
      initChart('echarts_div_globe', optionJson);
    } catch (e) {
      debugPrint('Error initializing chart: $e');
    }
  }

  List<List<double>> _transformData(List<dynamic> data) {
    return data.map((item) {
      final double lon = (item[0] is num) ? item[0].toDouble() : double.tryParse(item[0].toString()) ?? 0.0;
      final double lat = (item[1] is num) ? item[1].toDouble() : double.tryParse(item[1].toString()) ?? 0.0;
      return [lon, lat, -5000.0];
    }).toList();
  }

  /// Globe で表示する際の ECharts オプションを定義
  Map<String, dynamic> _buildChartOptions(List<List<double>> coast, List<List<double>> ridge, List<List<double>> trench, List<Map<String, dynamic>> scatterData) {
    return {
      'tooltip': {
        'trigger': 'item'
      },
      'globe': {
        'environment': '#000000', // 背景
        'shading': 'lambert',
        'light': {
          'main': {
            'intensity': 0.2,
          },
        },
        'viewControl': {
          'autoRotate': false,
          'alpha': 30,
          'beta': 160,
          'zoomSensitivity': 2,
        },
      },
      'series': [
        {
          'type': 'scatter3D',
          'coordinateSystem': "globe",
          'blendMode': "lighter",
          'symbolSize': 5,
          'itemStyle': {
            'color': "white",
            'opacity': 1
          },
          'data': coast,
          'tooltip': {'show': false}
        },
        {
          'type': 'scatter3D',
          'coordinateSystem': "globe",
          'blendMode': "lighter",
          'symbolSize': 5,
          'itemStyle': {
            'color': "#b22222",
            'opacity': 1
          },
          'data': ridge,
          'tooltip': {'show': false}
        },
        {
          'type': 'scatter3D',
          'coordinateSystem': "globe",
          'blendMode': "lighter",
          'symbolSize': 5,
          'itemStyle': {
            'color': "#008000",
            'opacity': 1
          },
          'data': trench,
          'tooltip': {'show': false}
        },
        {
          'type': 'scatter3D',
          'coordinateSystem': 'globe',
          // 取得したデータをそのまま描画
          'data': scatterData,
          'symbolSize': 8,
          // value の各要素名を指定しておくとデバッグ・ツールで見やすい
          'dimensions': [
            'Longitude',
            'Latitude',
            'Logarithm',
            'Year',
            'Location',
            'Precise'
          ],
          // 色やマテリアルに関する設定
          'itemStyle': {
            'color': 'yellow',
            'opacity': 0.8,
          },
          'tooltip': {'show': true}
        }
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*      appBar: AppBar(
        title: const Text('Results on Globe'),
      ),*/
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            // 常に HtmlElementView を表示しておき、上からローディングをオーバーレイする
            Positioned.fill(child: HtmlElementView(viewType: _viewType)),
            if (_isLoading)
              Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // HintPage へ遷移する処理
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GlobeHintPage()),
          );
        },
        tooltip: 'Show Hint',
        child: const Icon(Icons.question_mark),
      ),
    );
  }
}
