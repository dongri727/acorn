/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class CattsInvolved extends _i1.SerializableEntity {
  CattsInvolved._({
    this.id,
    required this.principalId,
    required this.cattId,
  });

  factory CattsInvolved({
    int? id,
    required int principalId,
    required int cattId,
  }) = _CattsInvolvedImpl;

  factory CattsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return CattsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      cattId:
          serializationManager.deserialize<int>(jsonSerialization['cattId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int cattId;

  CattsInvolved copyWith({
    int? id,
    int? principalId,
    int? cattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }
}

class _Undefined {}

class _CattsInvolvedImpl extends CattsInvolved {
  _CattsInvolvedImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  @override
  CattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return CattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}
