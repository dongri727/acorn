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

abstract class PrincipalTerms implements _i1.SerializableModel {
  PrincipalTerms._({
    this.id,
    required this.principalId,
    required this.termId,
  });

  factory PrincipalTerms({
    int? id,
    required int principalId,
    required int termId,
  }) = _PrincipalTermsImpl;

  factory PrincipalTerms.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalTerms(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      termId: jsonSerialization['termId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int termId;

  /// Returns a shallow copy of this [PrincipalTerms]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalTerms copyWith({
    int? id,
    int? principalId,
    int? termId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'termId': termId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalTermsImpl extends PrincipalTerms {
  _PrincipalTermsImpl({
    int? id,
    required int principalId,
    required int termId,
  }) : super._(
          id: id,
          principalId: principalId,
          termId: termId,
        );

  /// Returns a shallow copy of this [PrincipalTerms]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalTerms copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? termId,
  }) {
    return PrincipalTerms(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      termId: termId ?? this.termId,
    );
  }
}
