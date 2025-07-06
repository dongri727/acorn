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

abstract class PrincipalCategories implements _i1.SerializableModel {
  PrincipalCategories._({
    this.id,
    required this.principalId,
    required this.categoryId,
  });

  factory PrincipalCategories({
    int? id,
    required int principalId,
    required int categoryId,
  }) = _PrincipalCategoriesImpl;

  factory PrincipalCategories.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalCategories(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      categoryId: jsonSerialization['categoryId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int categoryId;

  /// Returns a shallow copy of this [PrincipalCategories]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalCategories copyWith({
    int? id,
    int? principalId,
    int? categoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalCategoriesImpl extends PrincipalCategories {
  _PrincipalCategoriesImpl({
    int? id,
    required int principalId,
    required int categoryId,
  }) : super._(
          id: id,
          principalId: principalId,
          categoryId: categoryId,
        );

  /// Returns a shallow copy of this [PrincipalCategories]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalCategories copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? categoryId,
  }) {
    return PrincipalCategories(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}
