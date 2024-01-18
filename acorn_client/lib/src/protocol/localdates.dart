/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class LocalDates extends _i1.SerializableEntity {
  LocalDates._({
    this.id,
    required this.principalId,
    required this.localdate,
  });

  factory LocalDates({
    int? id,
    required int principalId,
    required String localdate,
  }) = _LocalDatesImpl;

  factory LocalDates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return LocalDates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      localdate: serializationManager
          .deserialize<String>(jsonSerialization['localdate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  String localdate;

  LocalDates copyWith({
    int? id,
    int? principalId,
    String? localdate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'localdate': localdate,
    };
  }
}

class _Undefined {}

class _LocalDatesImpl extends LocalDates {
  _LocalDatesImpl({
    int? id,
    required int principalId,
    required String localdate,
  }) : super._(
          id: id,
          principalId: principalId,
          localdate: localdate,
        );

  @override
  LocalDates copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? localdate,
  }) {
    return LocalDates(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      localdate: localdate ?? this.localdate,
    );
  }
}
