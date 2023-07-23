/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class LocalDates extends _i1.TableRow {
  LocalDates({
    int? id,
    required this.principal_id,
    required this.localdate,
  }) : super(id);

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

  static final t = LocalDatesTable();

  int principal_id;

  String localdate;

  @override
  String get tableName => 'localdates';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'localdate': localdate,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'localdate': localdate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'localdate': localdate,
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
      case 'localdate':
        localdate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<LocalDates>> find(
    _i1.Session session, {
    LocalDatesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LocalDates>(
      where: where != null ? where(LocalDates.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<LocalDates?> findSingleRow(
    _i1.Session session, {
    LocalDatesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<LocalDates>(
      where: where != null ? where(LocalDates.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<LocalDates?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<LocalDates>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required LocalDatesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LocalDates>(
      where: where(LocalDates.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    LocalDates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    LocalDates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    LocalDates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    LocalDatesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LocalDates>(
      where: where != null ? where(LocalDates.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef LocalDatesExpressionBuilder = _i1.Expression Function(LocalDatesTable);

class LocalDatesTable extends _i1.Table {
  LocalDatesTable() : super(tableName: 'localdates');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final localdate = _i1.ColumnString('localdate');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        localdate,
      ];
}

@Deprecated('Use LocalDatesTable.t instead.')
LocalDatesTable tLocalDates = LocalDatesTable();
