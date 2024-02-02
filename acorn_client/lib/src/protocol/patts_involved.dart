/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class PattsInvolved extends _i1.SerializableEntity {
  PattsInvolved._({
    this.id,
    required this.principalId,
    required this.pattId,
  });

  factory PattsInvolved({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PattsInvolvedImpl;

  factory PattsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PattsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      pattId:
          serializationManager.deserialize<int>(jsonSerialization['pattId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  int pattId;

  PattsInvolved copyWith({
    int? id,
    int? principalId,
    int? pattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }
}

class _Undefined {}

class _PattsInvolvedImpl extends PattsInvolved {
  _PattsInvolvedImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
          id: id,
          principalId: principalId,
          pattId: pattId,
        );

  @override
  PattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}
