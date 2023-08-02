/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class PrincipalSeas extends _i1.TableRow {
  PrincipalSeas({
    int? id,
    required this.principal_id,
    required this.seas_id,
  }) : super(id);

  factory PrincipalSeas.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalSeas(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      seas_id:
          serializationManager.deserialize<int>(jsonSerialization['seas_id']),
    );
  }

  static final t = PrincipalSeasTable();

  int principal_id;

  int seas_id;

  @override
  String get tableName => 'principal_seas';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'seas_id': seas_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'seas_id': seas_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'seas_id': seas_id,
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
      case 'seas_id':
        seas_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<PrincipalSeas>> find(
    _i1.Session session, {
    PrincipalSeasExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalSeas>(
      where: where != null ? where(PrincipalSeas.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalSeas?> findSingleRow(
    _i1.Session session, {
    PrincipalSeasExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalSeas>(
      where: where != null ? where(PrincipalSeas.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalSeas?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalSeas>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalSeasExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalSeas>(
      where: where(PrincipalSeas.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalSeas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    PrincipalSeas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    PrincipalSeas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalSeasExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalSeas>(
      where: where != null ? where(PrincipalSeas.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalSeasExpressionBuilder = _i1.Expression Function(
    PrincipalSeasTable);

class PrincipalSeasTable extends _i1.Table {
  PrincipalSeasTable() : super(tableName: 'principal_seas');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final seas_id = _i1.ColumnInt('seas_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        seas_id,
      ];
}

@Deprecated('Use PrincipalSeasTable.t instead.')
PrincipalSeasTable tPrincipalSeas = PrincipalSeasTable();
