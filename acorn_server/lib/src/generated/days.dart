/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Days extends _i1.TableRow {
  Days({
    int? id,
    required this.principal_id,
    required this.day,
  }) : super(id);

  factory Days.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Days(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      day: serializationManager.deserialize<String>(jsonSerialization['day']),
    );
  }

  static final t = DaysTable();

  int principal_id;

  String day;

  @override
  String get tableName => 'days';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'day': day,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'day': day,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'day': day,
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
      case 'day':
        day = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Days>> find(
    _i1.Session session, {
    DaysExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Days>(
      where: where != null ? where(Days.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Days?> findSingleRow(
    _i1.Session session, {
    DaysExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Days>(
      where: where != null ? where(Days.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Days?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Days>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DaysExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Days>(
      where: where(Days.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Days row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Days row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Days row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DaysExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Days>(
      where: where != null ? where(Days.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DaysExpressionBuilder = _i1.Expression Function(DaysTable);

class DaysTable extends _i1.Table {
  DaysTable() : super(tableName: 'days');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final day = _i1.ColumnString('day');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        day,
      ];
}

@Deprecated('Use DaysTable.t instead.')
DaysTable tDays = DaysTable();
