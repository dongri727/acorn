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

abstract class PrincipalPeople implements _i1.SerializableModel {
  PrincipalPeople._({
    this.id,
    required this.principalId,
    required this.personId,
  });

  factory PrincipalPeople({
    int? id,
    required int principalId,
    required int personId,
  }) = _PrincipalPeopleImpl;

  factory PrincipalPeople.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalPeople(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      personId: jsonSerialization['personId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int personId;

  /// Returns a shallow copy of this [PrincipalPeople]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalPeople copyWith({
    int? id,
    int? principalId,
    int? personId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'personId': personId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalPeopleImpl extends PrincipalPeople {
  _PrincipalPeopleImpl({
    int? id,
    required int principalId,
    required int personId,
  }) : super._(
          id: id,
          principalId: principalId,
          personId: personId,
        );

  /// Returns a shallow copy of this [PrincipalPeople]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalPeople copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? personId,
  }) {
    return PrincipalPeople(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      personId: personId ?? this.personId,
    );
  }
}
