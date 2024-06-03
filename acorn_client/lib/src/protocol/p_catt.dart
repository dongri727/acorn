/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PrincipalCatt implements _i1.SerializableModel {
  PrincipalCatt._({
    this.id,
    required this.principalId,
    required this.cattId,
  });

  factory PrincipalCatt({
    int? id,
    required int principalId,
    required int cattId,
  }) = _PrincipalCattImpl;

  factory PrincipalCatt.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalCatt(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      cattId: jsonSerialization['cattId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int cattId;

  PrincipalCatt copyWith({
    int? id,
    int? principalId,
    int? cattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalCattImpl extends PrincipalCatt {
  _PrincipalCattImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  @override
  PrincipalCatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return PrincipalCatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}
