/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class PrincipalPatt extends _i1.TableRow {
  PrincipalPatt({
    int? id,
    required this.principal_id,
    required this.patt_id,
  }) : super(id);

  factory PrincipalPatt.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalPatt(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      patt_id:
          serializationManager.deserialize<int>(jsonSerialization['patt_id']),
    );
  }

  static final t = PrincipalPattTable();

  int principal_id;

  int patt_id;

  @override
  String get tableName => 'principal_patt';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'patt_id': patt_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'patt_id': patt_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'patt_id': patt_id,
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
      case 'principal_id':
        principal_id = value;
        return;
      case 'patt_id':
        patt_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<PrincipalPatt>> find(
    _i1.Session session, {
    PrincipalPattExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPatt>(
      where: where != null ? where(PrincipalPatt.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalPatt?> findSingleRow(
    _i1.Session session, {
    PrincipalPattExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalPatt>(
      where: where != null ? where(PrincipalPatt.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalPatt?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalPatt>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalPattExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPatt>(
      where: where(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalPattExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPatt>(
      where: where != null ? where(PrincipalPatt.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalPattExpressionBuilder = _i1.Expression Function(
    PrincipalPattTable);

class PrincipalPattTable extends _i1.Table {
  PrincipalPattTable() : super(tableName: 'principal_patt');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final patt_id = _i1.ColumnInt('patt_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        patt_id,
      ];
}

@Deprecated('Use PrincipalPattTable.t instead.')
PrincipalPattTable tPrincipalPatt = PrincipalPattTable();
