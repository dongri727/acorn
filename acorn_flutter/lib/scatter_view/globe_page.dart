import 'dart:convert';
import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../fetch/fetch_with_map.dart';
import 'echarts_js.dart';

class GlobePage extends StatefulWidget {
  final List<int>? principalIds;
  const GlobePage({super.key, this.principalIds});

  @override
  GlobePageState createState() => GlobePageState();
}

class GlobePageState extends State<GlobePage> {
  final FetchWithMapRepository _repository = FetchWithMapRepository();
  // ECharts を表示するための viewType 名
  final String _viewType = 'echarts-div-globe';

  // 実際にプロットするデータを保持
  // (repository.fetchWithMap で取得したデータを _onFetchWithMapButtonPressed でセットする想定)
  List<Map<String, dynamic>> _dataList = [];

  @override
  void initState() {
    super.initState();

    // Globe 用の ECharts コンテナを登録
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final html.DivElement div = html.DivElement()
        ..id = 'echarts_div_globe'
        ..style.width = '100%'
        ..style.height = '800px';

      // 画面描画直後に ECharts 初期化を実行
      Future.microtask(() async {
        await _initializeChart();
      });

      return div;
    });
  }

  /// ボタン押下時にバックエンドからデータを取得し、_dataList をセット
  Future<void> _onFetchWithMapButtonPressed() async {
    try {
      // widget.principalIds から ID リストを取得
      final keyNumbers = widget.principalIds ?? [];
      if (keyNumbers.isEmpty) {
        debugPrint('No principal IDs provided');
        return;
      }
      // データ取得
      final listWithMap = await _repository.fetchWithMap(keyNumbers: keyNumbers);

      setState(() {
        // ECharts が期待する [longitude, latitude, 他] 形式へ格納
        _dataList = listWithMap
            .map((d) => {
          'name': d.affair, // ツールチップなどで表示したい名称
          'value': [
            d.longitude,
            d.latitude,
            d.logarithm, // 時系列や他の数値表現に使う想定(例)
            d.annee,
            d.location,
            d.precise
          ],
        })
            .toList();
      });

      // データを更新したので再度チャートを初期化(再描画)
      await _initializeChart();
    } catch (e) {
      debugPrint('Error fetching data: $e');
    }
  }

  /// ECharts のオプション生成と initChart 呼び出し
  Future<void> _initializeChart() async {
    try {
      final String coastLineString = await rootBundle.loadString('assets/json/coastline.json');
      final List<dynamic> coastLineData = json.decode(coastLineString);
      final String ridgeLineString = await rootBundle.loadString('assets/json/ridge.json');
      final List<dynamic> ridgeLineData = json.decode(ridgeLineString);
      final String trenchLineString = await rootBundle.loadString('assets/json/trench.json');
      final List<dynamic> trenchLineData = json.decode(trenchLineString);

      final transformedCoast = _transformData(coastLineData);
      final transformedRidge = _transformData(ridgeLineData);
      final transformedTrench = _transformData(trenchLineData);

      // ECharts 用のオプションを作成
      final Map<String, dynamic> option = _buildChartOptions(transformedCoast, transformedRidge, transformedTrench);

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
      return [lon, lat, 0.0];
    }).toList();
  }

  /// Globe で表示する際の ECharts オプションを定義
  Map<String, dynamic> _buildChartOptions(List<List<double>> coast, List<List<double>> ridge, List<List<double>> trench) {
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
            'color': "#adff2f",
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
          'data': _dataList,
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
      appBar: AppBar(
        title: const Text('Results on Globe'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            // Globe を表示する領域
            Expanded(
              child: HtmlElementView(viewType: _viewType),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _onFetchWithMapButtonPressed,
              child: const Text('Show on Globe'),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'You can rotate or zoom in/out the globe.\nTap "Show on Globe" to fetch and display the data by principal IDs.',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
