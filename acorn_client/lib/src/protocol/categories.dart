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

abstract class Categories implements _i1.SerializableModel {
  Categories._({
    this.id,
    required this.category,
    required this.detailId,
    required this.combien,
  });

  factory Categories({
    int? id,
    required String category,
    required int detailId,
    required int combien,
  }) = _CategoriesImpl;

  factory Categories.fromJson(Map<String, dynamic> jsonSerialization) {
    return Categories(
      id: jsonSerialization['id'] as int?,
      category: jsonSerialization['category'] as String,
      detailId: jsonSerialization['detailId'] as int,
      combien: jsonSerialization['combien'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String category;

  int detailId;

  int combien;

  /// Returns a shallow copy of this [Categories]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Categories copyWith({
    int? id,
    String? category,
    int? detailId,
    int? combien,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Categories',
      if (id != null) 'id': id,
      'category': category,
      'detailId': detailId,
      'combien': combien,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CategoriesImpl extends Categories {
  _CategoriesImpl({
    int? id,
    required String category,
    required int detailId,
    required int combien,
  }) : super._(
         id: id,
         category: category,
         detailId: detailId,
         combien: combien,
       );

  /// Returns a shallow copy of this [Categories]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Categories copyWith({
    Object? id = _Undefined,
    String? category,
    int? detailId,
    int? combien,
  }) {
    return Categories(
      id: id is int? ? id : this.id,
      category: category ?? this.category,
      detailId: detailId ?? this.detailId,
      combien: combien ?? this.combien,
    );
  }
}
