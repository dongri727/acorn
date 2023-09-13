/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class Principal extends _i1.SerializableEntity {
  Principal({
    this.id,
    required this.annee,
    required this.jour,
    required this.affair,
    required this.pays,
    this.placeId,
    this.seaId,
    this.cattId,
    this.pattId,
    this.orgId,
    this.personId,
    this.categoryId,
    this.termId,
    this.paysInv,
    this.cattInv,
    this.orgs,
    this.people,
    this.category,
    this.term,
  });

  factory Principal.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Principal(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      annee: serializationManager.deserialize<int>(jsonSerialization['annee']),
      jour: serializationManager.deserialize<int>(jsonSerialization['jour']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      pays: serializationManager.deserialize<String>(jsonSerialization['pays']),
      placeId:
          serializationManager.deserialize<int?>(jsonSerialization['placeId']),
      seaId: serializationManager.deserialize<int?>(jsonSerialization['seaId']),
      cattId:
          serializationManager.deserialize<int?>(jsonSerialization['cattId']),
      pattId:
          serializationManager.deserialize<int?>(jsonSerialization['pattId']),
      orgId: serializationManager.deserialize<int?>(jsonSerialization['orgId']),
      personId:
          serializationManager.deserialize<int?>(jsonSerialization['personId']),
      categoryId: serializationManager
          .deserialize<int?>(jsonSerialization['categoryId']),
      termId:
          serializationManager.deserialize<int?>(jsonSerialization['termId']),
      paysInv: serializationManager
          .deserialize<List<_i2.Pays>?>(jsonSerialization['paysInv']),
      cattInv: serializationManager
          .deserialize<List<_i2.Countryatts>?>(jsonSerialization['cattInv']),
      orgs: serializationManager
          .deserialize<List<_i2.Organisations>?>(jsonSerialization['orgs']),
      people: serializationManager
          .deserialize<List<_i2.People>?>(jsonSerialization['people']),
      category: serializationManager
          .deserialize<List<_i2.Categories>?>(jsonSerialization['category']),
      term: serializationManager
          .deserialize<List<_i2.Terms>?>(jsonSerialization['term']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int annee;

  int jour;

  String affair;

  String pays;

  int? placeId;

  int? seaId;

  int? cattId;

  int? pattId;

  int? orgId;

  int? personId;

  int? categoryId;

  int? termId;

  List<_i2.Pays>? paysInv;

  List<_i2.Countryatts>? cattInv;

  List<_i2.Organisations>? orgs;

  List<_i2.People>? people;

  List<_i2.Categories>? category;

  List<_i2.Terms>? term;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'annee': annee,
      'jour': jour,
      'affair': affair,
      'pays': pays,
      'placeId': placeId,
      'seaId': seaId,
      'cattId': cattId,
      'pattId': pattId,
      'orgId': orgId,
      'personId': personId,
      'categoryId': categoryId,
      'termId': termId,
      'paysInv': paysInv,
      'cattInv': cattInv,
      'orgs': orgs,
      'people': people,
      'category': category,
      'term': term,
    };
  }
}
