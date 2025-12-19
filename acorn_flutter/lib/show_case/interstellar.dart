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
import 'interstellar_info.dart';
import 'cassini_info.dart';


class PioneerVoyager extends StatefulWidget {
  const PioneerVoyager({super.key});

  @override
  PioneerVoyagerState createState() => PioneerVoyagerState();
}

class PioneerVoyagerState extends State<PioneerVoyager> {
  final String _viewType = 'echarts-div-pv';
  bool _isLoading = true;

  List<dynamic>? voyager1;
  List<dynamic>? voyager2;
  List<dynamic>? pioneer10;
  List<dynamic>? pioneer11;
  List<dynamic>? newHorizons;
  List<dynamic>? interstellar;

  @override
  void initState() {
    super.initState();

    // ECharts を描画するための DIV を登録
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final html.DivElement div = html.DivElement()
        ..id = 'echarts_div_pv'
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

    while (html.document.getElementById('echarts_div_pv') == null &&
        attempts < maxAttempts) {
      await Future.delayed(const Duration(milliseconds: 100));
      attempts++;
    }

    if (html.document.getElementById('echarts_div_pv') == null) {
      // どうしても見つからなかった場合
      debugPrint('Error: echarts_div_pv not found after waiting.');
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

  Future<void> _loadData() async {
    final voyager1Data = await rootBundle.loadString(
        'assets/json/showcase/voyager1.json');
    final voyager2Data = await rootBundle.loadString(
        'assets/json/showcase/voyager2.json');
    final pioneer10Data = await rootBundle.loadString(
        'assets/json/showcase/pioneer10.json');
    final pioneer11Data = await rootBundle.loadString(
        'assets/json/showcase/pioneer11.json');
    final newHorizonsData = await rootBundle.loadString(
        'assets/json/showcase/new_horizons.json');

    final List<dynamic> combineData = [];
    combineData.addAll(json.decode(voyager1Data));
    combineData.addAll(json.decode(voyager2Data));
    combineData.addAll(json.decode(pioneer10Data));
    combineData.addAll(json.decode(pioneer11Data));
    combineData.addAll(json.decode(newHorizonsData));

    setState(() {
      interstellar = combineData;
    });
  }

  /// 惑星のほぼ円軌道を生成（Dart 側で計算）
  List<List<double>> _generateOrbitData(double radius, double interval,
      double z) {
    final List<List<double>> orbit = [];
    for (double t = 0; t < 2 * math.pi; t += interval) {
      final double x = radius * math.cos(t);
      final double y = radius * math.sin(t);
      orbit.add([x, y, z]);
    }
    return orbit;
  }

  /// 太陽圏（簡易の球面点群）を生成
  /// intervalPhi / intervalTheta は角度の刻み（ラジアン）
  List<List<double>> _generateHeliosphereData({
    required double radius,
    required double intervalPhi,
    required double intervalTheta,
  }) {
    final List<List<double>> points = [];
    for (double phi = 0; phi <= math.pi; phi += intervalPhi) {
      for (double theta = 0; theta < 2 * math.pi; theta += intervalTheta) {
        final double x = radius * math.sin(phi) * math.cos(theta);
        final double y = radius * math.sin(phi) * math.sin(theta);
        final double z = radius * math.cos(phi);
        points.add([x, y, z]);
      }
    }
    return points;
  }

  /// ECharts のオプションを組み立てる
  Map<String, dynamic> _buildChartOptions(List<dynamic> interstellarData) {
    // interstellarData から z の min/max を推定（データが空ならフォールバック）
    double minZ = 0;
    double maxZ = 1;
    if (interstellarData.isNotEmpty) {
      double? minTmp;
      double? maxTmp;
      for (final row in interstellarData) {
        if (row is List && row.length >= 3) {
          final zVal = row[2];
          if (zVal is num) {
            final z = zVal.toDouble();
            minTmp = (minTmp == null) ? z : math.min(minTmp, z);
            maxTmp = (maxTmp == null) ? z : math.max(maxTmp, z);
          }
        }
      }
      if (minTmp != null && maxTmp != null) {
        minZ = minTmp;
        maxZ = maxTmp;
      }
    }
    //const double midZ = (2450000 + 2455000) / 2;

    final mercuryOrbit = _generateOrbitData(5.82, 0.05, 0);
    final venusOrbit = _generateOrbitData(10.75, 0.05, 0);
    final earthOrbit = _generateOrbitData(14.93, 0.05, 0);
    final marsOrbit = _generateOrbitData(22.68, 0.05, 0);
    final beltOrbit = _generateOrbitData(40.31, 0.05, 0);
    final jupiterOrbit = _generateOrbitData(77.85, 0.05, 0);

    return {
      'backgroundColor': 'transparent',
      'tooltip': {
        'trigger': 'item',
        'triggerOn': 'click',
      },
      'xAxis3D': {
        'type': 'value',
        'name': 'Pisces-Virgo',
        'min': -600,
        'max': 600,
        'splitLine': {'show': false},
        'axisLabel': {'show': false}, // ★ 数字を消す
        'axisTick': {'show': true} // ★ 目盛り線は残す（念のため明示）
      },
      'yAxis3D': {
        'type': 'value',
        'name': 'Gemini-Sagittarius',
        'min': -600,
        'max': 600,
        'splitLine': {'show': false},
        'axisLabel': {'show': false}, // ★ 数字を消す
        'axisTick': {'show': true} // ★ 目盛り線は残す（念のため明示）
      },
      'zAxis3D': {
        'type': 'value',
        'name': 'North Ecliptic Pole',
        'min': -600,
        'max': 600,
        'splitLine': {'show': false},
        'axisLabel': {'show': false}, // ★ 数字を消す
        'axisTick': {'show': true} // ★ 目盛り線は残す（念のため明示）
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
          'projection': 'orthographic',
        },
      },
      'series': [
        // 航跡
        {
          'name': 'Interstellar Missions',
          'type': 'scatter3D',
          'data': interstellarData,
          'symbolSize': 5,
          'encode': {
            'x': 0,
            'y': 1,
            'z': 2,
            'itemName': 3, // ★ JSONの name を第四要素と仮定
          },
          'label': {
            'show': true, // ★ 常に表示
            'position': 'right',
            'formatter': '{b}', // ★ itemName を表示
            'fontSize': 12,
            'color': '#ccffcc'
          },
          'itemStyle': {
            'opacity': 0.9,
            'color': 'inherit' // ★ JSONの color をそのまま使う
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
        {
        'name': 'Heliosphere',
        'type': 'scatter3D',
        'data': _generateHeliosphereData(
        radius: 1100,
        intervalPhi: math.pi / 36,
        intervalTheta: math.pi / 36,
        ),
        'symbolSize': 2,
        'itemStyle': {'color': 'white', 'opacity': 0.40},
        'tooltip': {'show': false},
        },
      ],
    };
  }

  /// JSONとオプションを JS に渡して ECharts を初期化
  Future<void> _initializeChart() async {
    if (interstellar == null) return;

    final Map<String, dynamic> option = _buildChartOptions(interstellar!);
    final String optionJson = json.encode(option);

    // JS ブリッジ関数
    initChart('echarts_div_pv', optionJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interstellar Missions'),
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
                        builder: (context) => InterstellarInfo()));
              },
              icon: const Icon(Icons.question_mark, color: Colors.blue,))
        ],
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
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