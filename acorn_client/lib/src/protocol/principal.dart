/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Principal extends _i1.SerializableEntity {
  Principal({
    this.id,
    required this.annee,
    required this.affair,
    required this.pays,
    this.placeId,
    this.cattId,
    this.pattId,
  });

  factory Principal.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Principal(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      annee: serializationManager.deserialize<int>(jsonSerialization['annee']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      pays: serializationManager.deserialize<String>(jsonSerialization['pays']),
      placeId:
          serializationManager.deserialize<int?>(jsonSerialization['placeId']),
      cattId:
          serializationManager.deserialize<int?>(jsonSerialization['cattId']),
      pattId:
          serializationManager.deserialize<int?>(jsonSerialization['pattId']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int annee;

  String affair;

  String pays;

  int? placeId;

  int? cattId;

  int? pattId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'annee': annee,
      'affair': affair,
      'pays': pays,
      'placeId': placeId,
      'cattId': cattId,
      'pattId': pattId,
    };
  }
}
