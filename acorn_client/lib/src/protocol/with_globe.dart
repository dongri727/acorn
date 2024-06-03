/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class WithGlobe implements _i1.SerializableModel {
  WithGlobe._({
    this.id,
    required this.principalId,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.xCoordinate,
    required this.yCoordinate,
    required this.zCoordinate,
    required this.coefficient,
  });

  factory WithGlobe({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double xCoordinate,
    required double yCoordinate,
    required double zCoordinate,
    required double coefficient,
  }) = _WithGlobeImpl;

  factory WithGlobe.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithGlobe(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      annee: jsonSerialization['annee'] as String,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      xCoordinate: (jsonSerialization['xCoordinate'] as num).toDouble(),
      yCoordinate: (jsonSerialization['yCoordinate'] as num).toDouble(),
      zCoordinate: (jsonSerialization['zCoordinate'] as num).toDouble(),
      coefficient: (jsonSerialization['coefficient'] as num).toDouble(),
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

  double xCoordinate;

  double yCoordinate;

  double zCoordinate;

  double coefficient;

  WithGlobe copyWith({
    int? id,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? xCoordinate,
    double? yCoordinate,
    double? zCoordinate,
    double? coefficient,
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
      'xCoordinate': xCoordinate,
      'yCoordinate': yCoordinate,
      'zCoordinate': zCoordinate,
      'coefficient': coefficient,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WithGlobeImpl extends WithGlobe {
  _WithGlobeImpl({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double xCoordinate,
    required double yCoordinate,
    required double zCoordinate,
    required double coefficient,
  }) : super._(
          id: id,
          principalId: principalId,
          annee: annee,
          affair: affair,
          location: location,
          precise: precise,
          xCoordinate: xCoordinate,
          yCoordinate: yCoordinate,
          zCoordinate: zCoordinate,
          coefficient: coefficient,
        );

  @override
  WithGlobe copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? xCoordinate,
    double? yCoordinate,
    double? zCoordinate,
    double? coefficient,
  }) {
    return WithGlobe(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      annee: annee ?? this.annee,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      xCoordinate: xCoordinate ?? this.xCoordinate,
      yCoordinate: yCoordinate ?? this.yCoordinate,
      zCoordinate: zCoordinate ?? this.zCoordinate,
      coefficient: coefficient ?? this.coefficient,
    );
  }
}
