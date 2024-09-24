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

abstract class WithQgis implements _i1.SerializableModel {
  WithQgis._({
    this.id,
    required this.principalId,
    required this.name,
    required this.geo,
    required this.year,
  });

  factory WithQgis({
    int? id,
    required int principalId,
    required String name,
    required String geo,
    required String year,
  }) = _WithQgisImpl;

  factory WithQgis.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithQgis(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      name: jsonSerialization['name'] as String,
      geo: jsonSerialization['geo'] as String,
      year: jsonSerialization['year'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  String name;

  String geo;

  String year;

  WithQgis copyWith({
    int? id,
    int? principalId,
    String? name,
    String? geo,
    String? year,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'name': name,
      'geo': geo,
      'year': year,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WithQgisImpl extends WithQgis {
  _WithQgisImpl({
    int? id,
    required int principalId,
    required String name,
    required String geo,
    required String year,
  }) : super._(
          id: id,
          principalId: principalId,
          name: name,
          geo: geo,
          year: year,
        );

  @override
  WithQgis copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? name,
    String? geo,
    String? year,
  }) {
    return WithQgis(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      name: name ?? this.name,
      geo: geo ?? this.geo,
      year: year ?? this.year,
    );
  }
}
