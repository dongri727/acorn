/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Stars implements _i1.SerializableModel {
  Stars._({
    this.id,
    required this.star,
  });

  factory Stars({
    int? id,
    required String star,
  }) = _StarsImpl;

  factory Stars.fromJson(Map<String, dynamic> jsonSerialization) {
    return Stars(
      id: jsonSerialization['id'] as int?,
      star: jsonSerialization['star'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String star;

  Stars copyWith({
    int? id,
    String? star,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'star': star,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StarsImpl extends Stars {
  _StarsImpl({
    int? id,
    required String star,
  }) : super._(
          id: id,
          star: star,
        );

  @override
  Stars copyWith({
    Object? id = _Undefined,
    String? star,
  }) {
    return Stars(
      id: id is int? ? id : this.id,
      star: star ?? this.star,
    );
  }
}
