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

abstract class Pays implements _i1.SerializableModel {
  Pays._({
    this.id,
    required this.pays,
    required this.combien,
  });

  factory Pays({
    int? id,
    required String pays,
    required int combien,
  }) = _PaysImpl;

  factory Pays.fromJson(Map<String, dynamic> jsonSerialization) {
    return Pays(
      id: jsonSerialization['id'] as int?,
      pays: jsonSerialization['pays'] as String,
      combien: jsonSerialization['combien'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String pays;

  int combien;

  /// Returns a shallow copy of this [Pays]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Pays copyWith({
    int? id,
    String? pays,
    int? combien,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Pays',
      if (id != null) 'id': id,
      'pays': pays,
      'combien': combien,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaysImpl extends Pays {
  _PaysImpl({
    int? id,
    required String pays,
    required int combien,
  }) : super._(
         id: id,
         pays: pays,
         combien: combien,
       );

  /// Returns a shallow copy of this [Pays]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Pays copyWith({
    Object? id = _Undefined,
    String? pays,
    int? combien,
  }) {
    return Pays(
      id: id is int? ? id : this.id,
      pays: pays ?? this.pays,
      combien: combien ?? this.combien,
    );
  }
}
