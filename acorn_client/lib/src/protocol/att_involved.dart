/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class AttsInvolved extends _i1.SerializableEntity {
  AttsInvolved._({
    this.id,
    required this.principalId,
    required this.attId,
  });

  factory AttsInvolved({
    int? id,
    required int principalId,
    required int attId,
  }) = _AttsInvolvedImpl;

  factory AttsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AttsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      attId: serializationManager.deserialize<int>(jsonSerialization['attId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int attId;

  AttsInvolved copyWith({
    int? id,
    int? principalId,
    int? attId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'attId': attId,
    };
  }
}

class _Undefined {}

class _AttsInvolvedImpl extends AttsInvolved {
  _AttsInvolvedImpl({
    int? id,
    required int principalId,
    required int attId,
  }) : super._(
          id: id,
          principalId: principalId,
          attId: attId,
        );

  @override
  AttsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? attId,
  }) {
    return AttsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      attId: attId ?? this.attId,
    );
  }
}
