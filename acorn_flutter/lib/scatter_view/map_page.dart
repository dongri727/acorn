import 'dart:convert';
import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../fetch/fetch_with_map.dart';
import 'map_model.dart';

class MapPage extends StatefulWidget {
  final List<int>? principalIds;
  const MapPage({super.key, this.principalIds});

  @override
  MapPageState createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  final String _viewType = 'echarts-div';
  final FetchWithMapRepository _repository = FetchWithMapRepository();

  // Data list initialization
  List<Map<String, dynamic>> _dataList = [];

  @override
  void initState() {
    super.initState();

    // Register the view factory for the ECharts container
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
      final html.DivElement div = html.DivElement()
        ..id = 'echarts_div'
        ..style.width = '100%'
        ..style.height = '800px';

      // Initialize
      Future.microtask(() async {
        await _initializeChart();
      });

      return div;
    });
  }

  Future<void> _onFetchWithMapButtonPressed() async {
    try {
      // `principalIds` を使用して検索する
      final keyNumbers = widget.principalIds ?? []; // null の場合は空リストを使用
      if (keyNumbers.isEmpty) {
        print('No principal IDs provided');
        return;
      }

      final listWithMap = await _repository.fetchWithMap(keyNumbers: keyNumbers);

      setState(() {
        _dataList = listWithMap.map((d) {
          return {
            'value': [d.longitude, d.latitude, d.logarithm, d.annee, d.location, d.precise],
            'name': d.affair
          };
        }).toList();
      });

      await _initializeChart();
    } catch (e) {
      print('Error fetching data: $e');
    }
  }


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

      final Map<String, dynamic> option = _buildChartOptions(transformedCoast, transformedRidge, transformedTrench);

      final String optionJson = json.encode(option);
      initChart('echarts_div', optionJson);
    } catch (e) {
      print('Error initializing chart: $e');
    }
  }

  List<List<double>> _transformData(List<dynamic> data) {
    return data.map((item) {
      final double lon = (item[0] is num) ? item[0].toDouble() : double.tryParse(item[0].toString()) ?? 0.0;
      final double lat = (item[1] is num) ? item[1].toDouble() : double.tryParse(item[1].toString()) ?? 0.0;
      return [lon, lat, 0.0];
    }).toList();
  }

  Map<String, dynamic> _buildChartOptions(List<List<double>> coast, List<List<double>> ridge, List<List<double>> trench) {
    return {
      'tooltip': {},
      'xAxis3D': {
        'type': 'value',
        'name': 'Longitude',
        'min': -180,
        'max': 180,
        'splitNumber': 6
      },
      'yAxis3D': {
        'type': 'value',
        'name': 'Latitude',
        'min': -90,
        'max': 90,
        'splitNumber': 2
      },
      'zAxis3D': {
        'type': 'value',
        'name': 'Timeline',
        'min': -5000,
        'max': 2000,
        'splitNumber': 2
      },
      'grid3D': {
        'axisLine': {
          'lineStyle': {'color': '#fff'},
        },
        'axisPointer': {
          'lineStyle': {'color': '#ffbd67'},
        },
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
          'type': 'scatter3D',
          'data': coast,
          'symbolSize': 3,
          'itemStyle': {'color': 'white'}
        },
        {
          'type': 'scatter3D',
          'data': ridge,
          'symbolSize': 3,
          'itemStyle': {'color': '#bc8f8f'}
        },
        {
          'type': 'scatter3D',
          'data': trench,
          'symbolSize': 3,
          'itemStyle': {'color': '#cd5c5c'}
        },
        if (_dataList.isNotEmpty)
          {
            'type': 'scatter3D',
            'data': _dataList,
            'symbolSize': 8,
            'dimensions': ['Longitude', 'Latitude', 'Logarithm', 'Year', 'Location', 'Precise'],
            'itemStyle': {'color': 'yellow'},
          }
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results on Map (Atlantic centered) '),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/both.png'),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: [
            Expanded(child: HtmlElementView(viewType: _viewType)),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: _onFetchWithMapButtonPressed,
                child: const Text('Show on Map'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                  'You can zoom in, zoom out, and rotate the view. \nHowever, we currently do not support adjustments when the view is cut off due to zooming in.\n In such cases, please either zoom out or use the Pacific-centered map or the globe view.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
