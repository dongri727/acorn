import 'package:js/js.dart';

/// Annotate the Dart function to bind it to the JavaScript `initChart` function.
/// This allows Dart to call the JavaScript function directly.
@JS('initChart')
external void initChart(String chartId, String optionsJson);

class MapData {
  final double longitude;
  final double latitude;
  final double logarithm;
  final int annee;
  final String location;
  final String precise;
  final String affair;

  MapData({
    required this.longitude,
    required this.latitude,
    required this.logarithm,
    required this.annee,
    required this.location,
    required this.precise,
    required this.affair,
  });

  factory MapData.fromJson(Map<String, dynamic> json) {
    return MapData(
      longitude: json['longitude'],
      latitude: json['latitude'],
      logarithm: json['logarithm'],
      annee: json['annee'],
      location: json['location'],
      precise: json['precise'],
      affair: json['affair'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'logarithm': logarithm,
      'annee': annee,
      'location': location,
      'precise': precise,
      'affair': affair,
    };
  }
}
