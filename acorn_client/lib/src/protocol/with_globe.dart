/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class WithGlobe extends _i1.SerializableEntity {
  WithGlobe({
    this.id,
    required this.principal_id,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.x_coordinate,
    required this.y_coordinate,
    required this.z_coordinate,
    required this.coefficient,
  });

  factory WithGlobe.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WithGlobe(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      annee:
          serializationManager.deserialize<String>(jsonSerialization['annee']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
      precise: serializationManager
          .deserialize<String>(jsonSerialization['precise']),
      x_coordinate: serializationManager
          .deserialize<double>(jsonSerialization['x_coordinate']),
      y_coordinate: serializationManager
          .deserialize<double>(jsonSerialization['y_coordinate']),
      z_coordinate: serializationManager
          .deserialize<double>(jsonSerialization['z_coordinate']),
      coefficient: serializationManager
          .deserialize<double>(jsonSerialization['coefficient']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principal_id;

  String annee;

  String affair;

  String location;

  String precise;

  double x_coordinate;

  double y_coordinate;

  double z_coordinate;

  double coefficient;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'x_coordinate': x_coordinate,
      'y_coordinate': y_coordinate,
      'z_coordinate': z_coordinate,
      'coefficient': coefficient,
    };
  }
}
