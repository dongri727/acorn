/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Lieux extends _i1.SerializableEntity {
  Lieux._({
    this.id,
    required this.principalId,
    required this.latitude,
    required this.longitude,
    required this.threeDX,
    required this.threeDY,
    required this.threeDZ,
  });

  factory Lieux({
    int? id,
    required int principalId,
    required double latitude,
    required double longitude,
    required double threeDX,
    required double threeDY,
    required double threeDZ,
  }) = _LieuxImpl;

  factory Lieux.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Lieux(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      threeDX: serializationManager
          .deserialize<double>(jsonSerialization['threeDX']),
      threeDY: serializationManager
          .deserialize<double>(jsonSerialization['threeDY']),
      threeDZ: serializationManager
          .deserialize<double>(jsonSerialization['threeDZ']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  double latitude;

  double longitude;

  double threeDX;

  double threeDY;

  double threeDZ;

  Lieux copyWith({
    int? id,
    int? principalId,
    double? latitude,
    double? longitude,
    double? threeDX,
    double? threeDY,
    double? threeDZ,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'latitude': latitude,
      'longitude': longitude,
      'threeDX': threeDX,
      'threeDY': threeDY,
      'threeDZ': threeDZ,
    };
  }
}

class _Undefined {}

class _LieuxImpl extends Lieux {
  _LieuxImpl({
    int? id,
    required int principalId,
    required double latitude,
    required double longitude,
    required double threeDX,
    required double threeDY,
    required double threeDZ,
  }) : super._(
          id: id,
          principalId: principalId,
          latitude: latitude,
          longitude: longitude,
          threeDX: threeDX,
          threeDY: threeDY,
          threeDZ: threeDZ,
        );

  @override
  Lieux copyWith({
    Object? id = _Undefined,
    int? principalId,
    double? latitude,
    double? longitude,
    double? threeDX,
    double? threeDY,
    double? threeDZ,
  }) {
    return Lieux(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      threeDX: threeDX ?? this.threeDX,
      threeDY: threeDY ?? this.threeDY,
      threeDZ: threeDZ ?? this.threeDZ,
    );
  }
}
