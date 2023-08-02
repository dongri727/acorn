/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class PrincipalCatt extends _i1.TableRow {
  PrincipalCatt({
    int? id,
    required this.principal_id,
    required this.catt_id,
  }) : super(id);

  factory PrincipalCatt.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalCatt(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      catt_id:
          serializationManager.deserialize<int>(jsonSerialization['catt_id']),
    );
  }

  static final t = PrincipalCattTable();

  int principal_id;

  int catt_id;

  @override
  String get tableName => 'principal_catt';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'catt_id': catt_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'catt_id': catt_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'catt_id': catt_id,
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
      case 'catt_id':
        catt_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<PrincipalCatt>> find(
    _i1.Session session, {
    PrincipalCattExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalCatt>(
      where: where != null ? where(PrincipalCatt.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalCatt?> findSingleRow(
    _i1.Session session, {
    PrincipalCattExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalCatt>(
      where: where != null ? where(PrincipalCatt.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalCatt?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalCatt>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalCattExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCatt>(
      where: where(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalCattExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalCatt>(
      where: where != null ? where(PrincipalCatt.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalCattExpressionBuilder = _i1.Expression Function(
    PrincipalCattTable);

class PrincipalCattTable extends _i1.Table {
  PrincipalCattTable() : super(tableName: 'principal_catt');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final catt_id = _i1.ColumnInt('catt_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        catt_id,
      ];
}

@Deprecated('Use PrincipalCattTable.t instead.')
PrincipalCattTable tPrincipalCatt = PrincipalCattTable();
