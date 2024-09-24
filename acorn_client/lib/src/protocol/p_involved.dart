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

abstract class PlaceInvolved implements _i1.SerializableModel {
  PlaceInvolved._({
    this.id,
    required this.principalId,
    required this.placeId,
  });

  factory PlaceInvolved({
    int? id,
    required int principalId,
    required int placeId,
  }) = _PlaceInvolvedImpl;

  factory PlaceInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlaceInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      placeId: jsonSerialization['placeId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int placeId;

  PlaceInvolved copyWith({
    int? id,
    int? principalId,
    int? placeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlaceInvolvedImpl extends PlaceInvolved {
  _PlaceInvolvedImpl({
    int? id,
    required int principalId,
    required int placeId,
  }) : super._(
          id: id,
          principalId: principalId,
          placeId: placeId,
        );

  @override
  PlaceInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? placeId,
  }) {
    return PlaceInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      placeId: placeId ?? this.placeId,
    );
  }
}
