/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Principal extends _i1.SerializableEntity {
  Principal({
    this.id,
    required this.period,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.precise,
    required this.latitude,
    required this.longitude,
    required this.three_d_x,
    required this.three_d_y,
    required this.three_d_z,
  });

  factory Principal.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Principal(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      period:
          serializationManager.deserialize<int>(jsonSerialization['period']),
      annee:
          serializationManager.deserialize<double>(jsonSerialization['annee']),
      month: serializationManager.deserialize<int>(jsonSerialization['month']),
      day: serializationManager.deserialize<int>(jsonSerialization['day']),
      point: serializationManager.deserialize<int>(jsonSerialization['point']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
      precise: serializationManager
          .deserialize<String>(jsonSerialization['precise']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      three_d_x: serializationManager
          .deserialize<double>(jsonSerialization['three_d_x']),
      three_d_y: serializationManager
          .deserialize<double>(jsonSerialization['three_d_y']),
      three_d_z: serializationManager
          .deserialize<double>(jsonSerialization['three_d_z']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int period;

  double annee;

  int month;

  int day;

  int point;

  String affair;

  String location;

  String precise;

  double latitude;

  double longitude;

  double three_d_x;

  double three_d_y;

  double three_d_z;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
      'latitude': latitude,
      'longitude': longitude,
      'three_d_x': three_d_x,
      'three_d_y': three_d_y,
      'three_d_z': three_d_z,
    };
  }
}
