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

abstract class Universe implements _i1.SerializableModel {
  Universe._({
    this.id,
    required this.universe,
  });

  factory Universe({
    int? id,
    required String universe,
  }) = _UniverseImpl;

  factory Universe.fromJson(Map<String, dynamic> jsonSerialization) {
    return Universe(
      id: jsonSerialization['id'] as int?,
      universe: jsonSerialization['universe'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String universe;

  Universe copyWith({
    int? id,
    String? universe,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'universe': universe,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UniverseImpl extends Universe {
  _UniverseImpl({
    int? id,
    required String universe,
  }) : super._(
          id: id,
          universe: universe,
        );

  @override
  Universe copyWith({
    Object? id = _Undefined,
    String? universe,
  }) {
    return Universe(
      id: id is int? ? id : this.id,
      universe: universe ?? this.universe,
    );
  }
}
