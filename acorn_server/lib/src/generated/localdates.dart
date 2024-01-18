/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class LocalDates extends _i1.TableRow {
  LocalDates._({
    int? id,
    required this.principalId,
    required this.localdate,
  }) : super(id);

  factory LocalDates({
    int? id,
    required int principalId,
    required String localdate,
  }) = _LocalDatesImpl;

  factory LocalDates.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return LocalDates(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      localdate: serializationManager
          .deserialize<String>(jsonSerialization['localdate']),
    );
  }

  static final t = LocalDatesTable();

  static const db = LocalDatesRepository._();

  int principalId;

  String localdate;

  @override
  _i1.Table get table => t;

  LocalDates copyWith({
    int? id,
    int? principalId,
    String? localdate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'localdate': localdate,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'localdate': localdate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
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
      case 'principalId':
        principalId = value;
        return;
      case 'localdate':
        localdate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<LocalDates>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<LocalDates?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<LocalDates?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<LocalDates>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocalDatesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LocalDates>(
      where: where(LocalDates.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
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

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
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

  static LocalDatesInclude include() {
    return LocalDatesInclude._();
  }

  static LocalDatesIncludeList includeList({
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocalDatesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocalDatesTable>? orderByList,
    LocalDatesInclude? include,
  }) {
    return LocalDatesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LocalDates.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LocalDates.t),
      include: include,
    );
  }
}

class _Undefined {}

class _LocalDatesImpl extends LocalDates {
  _LocalDatesImpl({
    int? id,
    required int principalId,
    required String localdate,
  }) : super._(
          id: id,
          principalId: principalId,
          localdate: localdate,
        );

  @override
  LocalDates copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? localdate,
  }) {
    return LocalDates(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      localdate: localdate ?? this.localdate,
    );
  }
}

class LocalDatesTable extends _i1.Table {
  LocalDatesTable({super.tableRelation}) : super(tableName: 'localdates') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    localdate = _i1.ColumnString(
      'localdate',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString localdate;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        localdate,
      ];
}

@Deprecated('Use LocalDatesTable.t instead.')
LocalDatesTable tLocalDates = LocalDatesTable();

class LocalDatesInclude extends _i1.IncludeObject {
  LocalDatesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => LocalDates.t;
}

class LocalDatesIncludeList extends _i1.IncludeList {
  LocalDatesIncludeList._({
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LocalDates.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => LocalDates.t;
}

class LocalDatesRepository {
  const LocalDatesRepository._();

  Future<List<LocalDates>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LocalDatesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocalDatesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<LocalDates>(
      where: where?.call(LocalDates.t),
      orderBy: orderBy?.call(LocalDates.t),
      orderByList: orderByList?.call(LocalDates.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LocalDates?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
    int? offset,
    _i1.OrderByBuilder<LocalDatesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LocalDatesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<LocalDates>(
      where: where?.call(LocalDates.t),
      orderBy: orderBy?.call(LocalDates.t),
      orderByList: orderByList?.call(LocalDates.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<LocalDates?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<LocalDates>(
      id,
      transaction: transaction,
    );
  }

  Future<List<LocalDates>> insert(
    _i1.Session session,
    List<LocalDates> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<LocalDates>(
      rows,
      transaction: transaction,
    );
  }

  Future<LocalDates> insertRow(
    _i1.Session session,
    LocalDates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<LocalDates>(
      row,
      transaction: transaction,
    );
  }

  Future<List<LocalDates>> update(
    _i1.Session session,
    List<LocalDates> rows, {
    _i1.ColumnSelections<LocalDatesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<LocalDates>(
      rows,
      columns: columns?.call(LocalDates.t),
      transaction: transaction,
    );
  }

  Future<LocalDates> updateRow(
    _i1.Session session,
    LocalDates row, {
    _i1.ColumnSelections<LocalDatesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<LocalDates>(
      row,
      columns: columns?.call(LocalDates.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<LocalDates> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<LocalDates>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    LocalDates row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<LocalDates>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LocalDatesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<LocalDates>(
      where: where(LocalDates.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LocalDatesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<LocalDates>(
      where: where?.call(LocalDates.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
