/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Categories extends _i1.SerializableEntity {
  Categories._({
    this.id,
    required this.category,
  });

  factory Categories({
    int? id,
    required String category,
  }) = _CategoriesImpl;

  factory Categories.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Categories(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      category: serializationManager
          .deserialize<String>(jsonSerialization['category']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String category;

  Categories copyWith({
    int? id,
    String? category,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'category': category,
    };
  }
}

class _Undefined {}

class _CategoriesImpl extends Categories {
  _CategoriesImpl({
    int? id,
    required String category,
  }) : super._(
          id: id,
          category: category,
        );

  @override
  Categories copyWith({
    Object? id = _Undefined,
    String? category,
  }) {
    return Categories(
      id: id is int? ? id : this.id,
      category: category ?? this.category,
    );
  }
}
