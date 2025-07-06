/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class WithMap implements _i1.SerializableModel {
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

  factory WithMap.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithMap(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      annee: jsonSerialization['annee'] as String,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      logarithm: (jsonSerialization['logarithm'] as num).toDouble(),
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

  /// Returns a shallow copy of this [WithMap]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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

  /// Returns a shallow copy of this [WithMap]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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
