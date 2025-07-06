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

abstract class Organisations implements _i1.SerializableModel {
  Organisations._({
    this.id,
    required this.organisation,
  });

  factory Organisations({
    int? id,
    required String organisation,
  }) = _OrganisationsImpl;

  factory Organisations.fromJson(Map<String, dynamic> jsonSerialization) {
    return Organisations(
      id: jsonSerialization['id'] as int?,
      organisation: jsonSerialization['organisation'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String organisation;

  /// Returns a shallow copy of this [Organisations]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Organisations copyWith({
    int? id,
    String? organisation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'organisation': organisation,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrganisationsImpl extends Organisations {
  _OrganisationsImpl({
    int? id,
    required String organisation,
  }) : super._(
          id: id,
          organisation: organisation,
        );

  /// Returns a shallow copy of this [Organisations]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Organisations copyWith({
    Object? id = _Undefined,
    String? organisation,
  }) {
    return Organisations(
      id: id is int? ? id : this.id,
      organisation: organisation ?? this.organisation,
    );
  }
}
