import 'dart:convert';
import 'dart:html' as html;
import 'dart:math' as math;
import 'dart:ui_web' as ui_web;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../index.dart';
import '../l10n/app_localizations.dart';
import '../scatter_view/echarts_js.dart';
import '../utils/navigation_button.dart';
import '../utils/shadowed_container.dart';
import 'cassini_info.dart';


class CassiniHuygens extends StatefulWidget {
  const CassiniHuygens({super.key});

  @override
  CassiniHuygensState createState() => CassiniHuygensState();
}

class CassiniHuygensState extends State<CassiniHuygens> {
  final String _viewType = 'echarts-div-ch';
  bool _isLoading = true;

  List<dynamic>? cassini; // JSONそのまま

  @override
  void initState() {
    super.initState();

    // ECharts を描画するための DIV を登録
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final html.DivElement div = html.DivElement()
        ..id = 'echarts_div_ch'
        ..style.width = '100%'
        ..style.height = '800px';
      return div;
    });

    // Widget ツリー描画後に DOM を待ってから初期化
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _waitForDomAndInitialize();
    });
  }

  /// DOM ができるのを待ってから、JSON を読み込み → チャート初期化
  Future<void> _waitForDomAndInitialize() async {
    const maxAttempts = 50;
    int attempts = 0;

    while (html.document.getElementById('echarts_div_ch') == null &&
        attempts < maxAttempts) {
      await Future.delayed(const Duration(milliseconds: 100));
      attempts++;
    }

    if (html.document.getElementById('echarts_div_ch') == null) {
      // どうしても見つからなかった場合
      debugPrint('Error: echarts_div_ch not found after waiting.');
      if (mounted) {
        setState(() => _isLoading = false);
      }
      return;
    }

    try {
      await _loadData();
      await _initializeChart();
    } catch (e) {
      debugPrint('Error initializing chart: $e');
    }

    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  /// assets/json/showcase/cassini_huygens.json を読み込む
  Future<void> _loadData() async {
    final String jsonString =
    await rootBundle.loadString('assets/json/showcase/cassini_huygens.json');
    final List<dynamic> jsonData = json.decode(jsonString);
    cassini = jsonData;
  }

  /// 惑星のほぼ円軌道を生成（Dart 側で計算）
  List<List<double>> _generateOrbitData(double radius, double interval, double z) {
    final List<List<double>> data = [];
    for (double t = 0; t < 2 * math.pi; t += interval) {
      final double x = radius * math.cos(t);
      final double y = radius * math.sin(t);
      data.add([x, y, z]);
    }
    return data;
  }

  /// ECharts のオプションを組み立てる
  Map<String, dynamic> _buildChartOptions(List<dynamic> cassiniData) {
    // 必要なら cassiniData から z の min/max を取ってもOK
    const double minZ = 2450000;
    const double maxZ = 2455000;
    const double midZ = (minZ + maxZ) / 2;

    final mercuryOrbit = _generateOrbitData(5.82, 0.05, minZ);
    final venusOrbit = _generateOrbitData(10.75, 0.05, minZ);
    final earthOrbit = _generateOrbitData(14.93, 0.05, minZ);
    final marsOrbit = _generateOrbitData(22.68, 0.05, minZ);
    final beltOrbit = _generateOrbitData(40.31, 0.05, minZ);
    final jupiterOrbit = _generateOrbitData(77.85, 0.05, minZ);

    return {
      'backgroundColor': 'transparent',

      'tooltip': {
        'trigger': 'item',
        'triggerOn': 'click',
      },
      'xAxis3D': {
        'type': 'value',
        'name': 'Pisces-Virgo',
        'min': -30,
        'max': 30,
        'splitLine': {'show': false},
        'axisLabel': {'show': false},     // ★ 数字を消す
        'axisTick': {'show': true}   // ★ 目盛り線は残す（念のため明示）
      },
      'yAxis3D': {
        'type': 'value',
        'name': 'Gemini-Sagittarius',
        'min': -30,
        'max': 30,
        'splitLine': {'show': false},
        'axisLabel': {'show': false},     // ★ 数字を消す
        'axisTick': {'show': true}   // ★ 目盛り線は残す（念のため明示）
      },
      'zAxis3D': {
        'type': 'value',
        'name': 'Timeline',
        'min': minZ,
        'max': maxZ,
        'splitLine': {'show': false},
        'axisLabel': {'show': false},     // ★ 数字を消す
        'axisTick': {'show': true}   // ★ 目盛り線は残す（念のため明示）
      },
      'grid3D': {
        'splitLine': {'show': false},
        'axisLine': {
          'lineStyle': {'color': '#E6E1E6'}
        },
        'axisPointer': {
          'lineStyle': {'color': '#ffbd67'}
        },
        'viewControl': {
          'alpha': 40,
          'beta': -60,
          'projection': 'perspective',
        },
      },
      'series': [
        // カッシーニ航跡
        {
          'name': 'Cassini-Huygens',
          'type': 'scatter3D',
          'data': cassiniData,
          'symbolSize': 5,
          'encode': {
            'x': 0,
            'y': 1,
            'z': 2,
            'itemName': 3,   // ★ JSONの name を第四要素と仮定
          },
          'label': {
            'show': true,    // ★ 常に表示
            'position': 'right',
            'formatter': '{b}',  // ★ itemName を表示
            'fontSize': 12,
            'color': '#ccffcc'
          },
          'itemStyle': {
            'opacity': 0.9,
            'color': 'inherit'    // ★ JSONの color をそのまま使う
          },
          'tooltip': {'show': true},
        },
        // 惑星軌道（簡易）
        {
          'name': 'Mercury',
          'type': 'scatter3D',
          'data': mercuryOrbit,
          'symbolSize': 2,
          'itemStyle': {'color': '#FF6347'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Venus',
          'type': 'scatter3D',
          'data': venusOrbit,
          'symbolSize': 2,
          'itemStyle': {'color': '#ffa07a'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Earth',
          'type': 'scatter3D',
          'data': earthOrbit,
          'symbolSize': 2,
          'itemStyle': {'color': 'blue'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Mars',
          'type': 'scatter3D',
          'data': marsOrbit,
          'symbolSize': 2,
          'itemStyle': {'color': '#cd5c5c'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Asteroid Belt',
          'type': 'scatter3D',
          'data': beltOrbit,
          'symbolSize': 2,
          'itemStyle': {'color': '#888888'},
          'tooltip': {'show': false},
        },
        {
          'name': 'Jupiter',
          'type': 'scatter3D',
          'data': jupiterOrbit,
          'symbolSize': 2,
          'itemStyle': {'color': '#888888'},
          'tooltip': {'show': false},
        },
      ],
    };
  }

  /// JSONとオプションを JS に渡して ECharts を初期化
  Future<void> _initializeChart() async {
    if (cassini == null) return;

    final Map<String, dynamic> option = _buildChartOptions(cassini!);
    final String optionJson = json.encode(option);

    // map_page.dart と同じ JS ブリッジ関数
    initChart('echarts_div_ch', optionJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cassini-Huygens'),
        backgroundColor: Colors.grey[200],
        leading: ShadowedContainer(
            child: NavigationButton(
              destinationPage: const IndexPage(),
              buttonText: AppLocalizations.of(context)!.tabTopB,
            )
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CassiniInfo()));
              },
              icon: const Icon(Icons.question_mark, color: Colors.blue,))
        ],
      ),
      body: Container(
        constraints: const BoxConstraints.expand( ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cosmos.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            HtmlElementView(viewType: _viewType),
            if (_isLoading)
              Container(
                color: Colors.black.withValues(alpha: 0.5),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}