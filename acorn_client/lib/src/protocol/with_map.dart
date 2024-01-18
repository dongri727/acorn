/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class WithMap extends _i1.SerializableEntity {
  WithMap._({
    this.id,
    required this.principalId,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.latitude,
    required this.longitude,
    required this.logarithm,
  });

  factory WithMap({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double latitude,
    required double longitude,
    required double logarithm,
  }) = _WithMapImpl;

  factory WithMap.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WithMap(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      annee:
          serializationManager.deserialize<String>(jsonSerialization['annee']),
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
      logarithm: serializationManager
          .deserialize<double>(jsonSerialization['logarithm']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  String annee;

  String affair;

  String location;

  String precise;

  double latitude;

  double longitude;

  double logarithm;

  WithMap copyWith({
    int? id,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? latitude,
    double? longitude,
    double? logarithm,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'latitude': latitude,
      'longitude': longitude,
      'logarithm': logarithm,
    };
  }
}

class _Undefined {}

class _WithMapImpl extends WithMap {
  _WithMapImpl({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double latitude,
    required double longitude,
    required double logarithm,
  }) : super._(
          id: id,
          principalId: principalId,
          annee: annee,
          affair: affair,
          location: location,
          precise: precise,
          latitude: latitude,
          longitude: longitude,
          logarithm: logarithm,
        );

  @override
  WithMap copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? latitude,
    double? longitude,
    double? logarithm,
  }) {
    return WithMap(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      annee: annee ?? this.annee,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      logarithm: logarithm ?? this.logarithm,
    );
  }
}
