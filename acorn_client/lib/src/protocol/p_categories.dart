/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PrincipalCategories extends _i1.SerializableEntity {
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

  factory PrincipalCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalCategories(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      categoryId: serializationManager
          .deserialize<int>(jsonSerialization['categoryId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int categoryId;

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
