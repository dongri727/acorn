/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class LocalDates extends _i1.SerializableEntity {
  LocalDates({
    this.id,
    required this.principal_id,
    required this.localdate,
  });

  factory LocalDates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return LocalDates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      localdate: serializationManager
          .deserialize<String>(jsonSerialization['localdate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principal_id;

  String localdate;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'localdate': localdate,
    };
  }
}