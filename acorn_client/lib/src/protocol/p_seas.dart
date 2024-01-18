/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PrincipalSeas extends _i1.SerializableEntity {
  PrincipalSeas._({
    this.id,
    required this.principalId,
    required this.seasId,
  });

  factory PrincipalSeas({
    int? id,
    required int principalId,
    required int seasId,
  }) = _PrincipalSeasImpl;

  factory PrincipalSeas.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalSeas(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      seasId:
          serializationManager.deserialize<int>(jsonSerialization['seasId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int seasId;

  PrincipalSeas copyWith({
    int? id,
    int? principalId,
    int? seasId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'seasId': seasId,
    };
  }
}

class _Undefined {}

class _PrincipalSeasImpl extends PrincipalSeas {
  _PrincipalSeasImpl({
    int? id,
    required int principalId,
    required int seasId,
  }) : super._(
          id: id,
          principalId: principalId,
          seasId: seasId,
        );

  @override
  PrincipalSeas copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? seasId,
  }) {
    return PrincipalSeas(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      seasId: seasId ?? this.seasId,
    );
  }
}
