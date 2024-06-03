/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PrincipalUser implements _i1.SerializableModel {
  PrincipalUser._({
    this.id,
    required this.principalId,
    required this.userId,
  });

  factory PrincipalUser({
    int? id,
    required int principalId,
    required int userId,
  }) = _PrincipalUserImpl;

  factory PrincipalUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalUser(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      userId: jsonSerialization['userId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int userId;

  PrincipalUser copyWith({
    int? id,
    int? principalId,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'userId': userId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalUserImpl extends PrincipalUser {
  _PrincipalUserImpl({
    int? id,
    required int principalId,
    required int userId,
  }) : super._(
          id: id,
          principalId: principalId,
          userId: userId,
        );

  @override
  PrincipalUser copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? userId,
  }) {
    return PrincipalUser(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      userId: userId ?? this.userId,
    );
  }
}
