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

abstract class Target implements _i1.SerializableModel {
  Target._({
    this.id,
    required this.specialite,
    required this.detailId,
  });

  factory Target({
    int? id,
    required String specialite,
    required int detailId,
  }) = _TargetImpl;

  factory Target.fromJson(Map<String, dynamic> jsonSerialization) {
    return Target(
      id: jsonSerialization['id'] as int?,
      specialite: jsonSerialization['specialite'] as String,
      detailId: jsonSerialization['detailId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String specialite;

  int detailId;

  Target copyWith({
    int? id,
    String? specialite,
    int? detailId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'specialite': specialite,
      'detailId': detailId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TargetImpl extends Target {
  _TargetImpl({
    int? id,
    required String specialite,
    required int detailId,
  }) : super._(
          id: id,
          specialite: specialite,
          detailId: detailId,
        );

  @override
  Target copyWith({
    Object? id = _Undefined,
    String? specialite,
    int? detailId,
  }) {
    return Target(
      id: id is int? ? id : this.id,
      specialite: specialite ?? this.specialite,
      detailId: detailId ?? this.detailId,
    );
  }
}
