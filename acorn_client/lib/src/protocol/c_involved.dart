/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class CountryInvolved implements _i1.SerializableModel {
  CountryInvolved._({
    this.id,
    required this.principalId,
    required this.paysId,
  });

  factory CountryInvolved({
    int? id,
    required int principalId,
    required int paysId,
  }) = _CountryInvolvedImpl;

  factory CountryInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return CountryInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      paysId: jsonSerialization['paysId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int paysId;

  CountryInvolved copyWith({
    int? id,
    int? principalId,
    int? paysId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'paysId': paysId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CountryInvolvedImpl extends CountryInvolved {
  _CountryInvolvedImpl({
    int? id,
    required int principalId,
    required int paysId,
  }) : super._(
          id: id,
          principalId: principalId,
          paysId: paysId,
        );

  @override
  CountryInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? paysId,
  }) {
    return CountryInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      paysId: paysId ?? this.paysId,
    );
  }
}
