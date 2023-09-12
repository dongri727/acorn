/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class Principal extends _i1.TableRow {
  Principal({
    int? id,
    required this.annee,
    required this.jour,
    required this.affair,
    required this.pays,
    this.placeId,
    this.cattId,
    this.pattId,
    this.personId,
    this.categoryId,
    this.paysInv,
    this.cattInv,
    this.orgs,
    this.people,
    this.category,
    this.term,
  }) : super(id);

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
      cattId:
          serializationManager.deserialize<int?>(jsonSerialization['cattId']),
      pattId:
          serializationManager.deserialize<int?>(jsonSerialization['pattId']),
      personId:
          serializationManager.deserialize<int?>(jsonSerialization['personId']),
      categoryId: serializationManager
          .deserialize<int?>(jsonSerialization['categoryId']),
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

  static final t = PrincipalTable();

  int annee;

  int jour;

  String affair;

  String pays;

  int? placeId;

  int? cattId;

  int? pattId;

  int? personId;

  int? categoryId;

  List<_i2.Pays>? paysInv;

  List<_i2.Countryatts>? cattInv;

  List<_i2.Organisations>? orgs;

  List<_i2.People>? people;

  List<_i2.Categories>? category;

  List<_i2.Terms>? term;

  @override
  String get tableName => 'principal';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'annee': annee,
      'jour': jour,
      'affair': affair,
      'pays': pays,
      'placeId': placeId,
      'cattId': cattId,
      'pattId': pattId,
      'personId': personId,
      'categoryId': categoryId,
      'paysInv': paysInv,
      'cattInv': cattInv,
      'orgs': orgs,
      'people': people,
      'category': category,
      'term': term,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'annee': annee,
      'jour': jour,
      'affair': affair,
      'pays': pays,
      'placeId': placeId,
      'cattId': cattId,
      'pattId': pattId,
      'personId': personId,
      'categoryId': categoryId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'annee': annee,
      'jour': jour,
      'affair': affair,
      'pays': pays,
      'placeId': placeId,
      'cattId': cattId,
      'pattId': pattId,
      'personId': personId,
      'categoryId': categoryId,
      'paysInv': paysInv,
      'cattInv': cattInv,
      'orgs': orgs,
      'people': people,
      'category': category,
      'term': term,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'annee':
        annee = value;
        return;
      case 'jour':
        jour = value;
        return;
      case 'affair':
        affair = value;
        return;
      case 'pays':
        pays = value;
        return;
      case 'placeId':
        placeId = value;
        return;
      case 'cattId':
        cattId = value;
        return;
      case 'pattId':
        pattId = value;
        return;
      case 'personId':
        personId = value;
        return;
      case 'categoryId':
        categoryId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Principal>> find(
    _i1.Session session, {
    PrincipalExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Principal>(
      where: where != null ? where(Principal.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Principal?> findSingleRow(
    _i1.Session session, {
    PrincipalExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Principal>(
      where: where != null ? where(Principal.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Principal?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Principal>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Principal>(
      where: where(Principal.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Principal>(
      where: where != null ? where(Principal.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalExpressionBuilder = _i1.Expression Function(PrincipalTable);

class PrincipalTable extends _i1.Table {
  PrincipalTable() : super(tableName: 'principal');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final annee = _i1.ColumnInt('annee');

  final jour = _i1.ColumnInt('jour');

  final affair = _i1.ColumnString('affair');

  final pays = _i1.ColumnString('pays');

  final placeId = _i1.ColumnInt('placeId');

  final cattId = _i1.ColumnInt('cattId');

  final pattId = _i1.ColumnInt('pattId');

  final personId = _i1.ColumnInt('personId');

  final categoryId = _i1.ColumnInt('categoryId');

  @override
  List<_i1.Column> get columns => [
        id,
        annee,
        jour,
        affair,
        pays,
        placeId,
        cattId,
        pattId,
        personId,
        categoryId,
      ];
}

@Deprecated('Use PrincipalTable.t instead.')
PrincipalTable tPrincipal = PrincipalTable();
