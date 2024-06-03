/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PrincipalDetail implements _i1.SerializableModel {
  PrincipalDetail._({
    this.id,
    required this.principalId,
    required this.detailId,
  });

  factory PrincipalDetail({
    int? id,
    required int principalId,
    required int detailId,
  }) = _PrincipalDetailImpl;

  factory PrincipalDetail.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalDetail(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      detailId: jsonSerialization['detailId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int detailId;

  PrincipalDetail copyWith({
    int? id,
    int? principalId,
    int? detailId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'detailId': detailId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalDetailImpl extends PrincipalDetail {
  _PrincipalDetailImpl({
    int? id,
    required int principalId,
    required int detailId,
  }) : super._(
          id: id,
          principalId: principalId,
          detailId: detailId,
        );

  @override
  PrincipalDetail copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? detailId,
  }) {
    return PrincipalDetail(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      detailId: detailId ?? this.detailId,
    );
  }
}
