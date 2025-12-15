/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PrincipalOrgs implements _i1.SerializableModel {
  PrincipalOrgs._({
    this.id,
    required this.principalId,
    required this.orgId,
  });

  factory PrincipalOrgs({
    int? id,
    required int principalId,
    required int orgId,
  }) = _PrincipalOrgsImpl;

  factory PrincipalOrgs.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalOrgs(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      orgId: jsonSerialization['orgId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int orgId;

  /// Returns a shallow copy of this [PrincipalOrgs]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalOrgs copyWith({
    int? id,
    int? principalId,
    int? orgId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrincipalOrgs',
      if (id != null) 'id': id,
      'principalId': principalId,
      'orgId': orgId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalOrgsImpl extends PrincipalOrgs {
  _PrincipalOrgsImpl({
    int? id,
    required int principalId,
    required int orgId,
  }) : super._(
         id: id,
         principalId: principalId,
         orgId: orgId,
       );

  /// Returns a shallow copy of this [PrincipalOrgs]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalOrgs copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? orgId,
  }) {
    return PrincipalOrgs(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      orgId: orgId ?? this.orgId,
    );
  }
}
