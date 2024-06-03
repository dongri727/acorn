/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Detail implements _i1.SerializableModel {
  Detail._({
    this.id,
    required this.genre,
    required this.mot,
  });

  factory Detail({
    int? id,
    required String genre,
    required String mot,
  }) = _DetailImpl;

  factory Detail.fromJson(Map<String, dynamic> jsonSerialization) {
    return Detail(
      id: jsonSerialization['id'] as int?,
      genre: jsonSerialization['genre'] as String,
      mot: jsonSerialization['mot'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String genre;

  String mot;

  Detail copyWith({
    int? id,
    String? genre,
    String? mot,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'genre': genre,
      'mot': mot,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DetailImpl extends Detail {
  _DetailImpl({
    int? id,
    required String genre,
    required String mot,
  }) : super._(
          id: id,
          genre: genre,
          mot: mot,
        );

  @override
  Detail copyWith({
    Object? id = _Undefined,
    String? genre,
    String? mot,
  }) {
    return Detail(
      id: id is int? ? id : this.id,
      genre: genre ?? this.genre,
      mot: mot ?? this.mot,
    );
  }
}
