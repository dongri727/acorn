/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Pays extends _i1.TableRow {
  Pays({
    int? id,
    required this.pays,
  }) : super(id);

  factory Pays.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Pays(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      pays: serializationManager.deserialize<String>(jsonSerialization['pays']),
    );
  }

  static final t = PaysTable();

  String pays;

  @override
  String get tableName => 'pays';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pays': pays,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'pays': pays,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'pays': pays,
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
      case 'pays':
        pays = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Pays>> find(
    _i1.Session session, {
    PaysExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Pays>(
      where: where != null ? where(Pays.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Pays?> findSingleRow(
    _i1.Session session, {
    PaysExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Pays>(
      where: where != null ? where(Pays.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Pays?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Pays>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PaysExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Pays>(
      where: where(Pays.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PaysExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Pays>(
      where: where != null ? where(Pays.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PaysExpressionBuilder = _i1.Expression Function(PaysTable);

class PaysTable extends _i1.Table {
  PaysTable() : super(tableName: 'pays');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final pays = _i1.ColumnString('pays');

  @override
  List<_i1.Column> get columns => [
        id,
        pays,
      ];
}

@Deprecated('Use PaysTable.t instead.')
PaysTable tPays = PaysTable();
