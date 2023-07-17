/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Lieux extends _i1.SerializableEntity {
  Lieux({
    this.id,
    required this.principal_id,
    required this.latitude,
    required this.longitude,
    required this.three_d_x,
    required this.three_d_y,
    required this.three_d_z,
  });

  factory Lieux.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Lieux(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
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

  int principal_id;

  double latitude;

  double longitude;

  double three_d_x;

  double three_d_y;

  double three_d_z;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'latitude': latitude,
      'longitude': longitude,
      'three_d_x': three_d_x,
      'three_d_y': three_d_y,
      'three_d_z': three_d_z,
    };
  }
}
