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

abstract class PrincipalPatt implements _i1.SerializableModel {
  PrincipalPatt._({
    this.id,
    required this.principalId,
    required this.pattId,
  });

  factory PrincipalPatt({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PrincipalPattImpl;

  factory PrincipalPatt.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalPatt(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      pattId: jsonSerialization['pattId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int pattId;

  /// Returns a shallow copy of this [PrincipalPatt]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalPatt copyWith({
    int? id,
    int? principalId,
    int? pattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalPattImpl extends PrincipalPatt {
  _PrincipalPattImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
          id: id,
          principalId: principalId,
          pattId: pattId,
        );

  /// Returns a shallow copy of this [PrincipalPatt]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalPatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PrincipalPatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}
