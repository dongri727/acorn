/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class CattsInvolved extends _i1.TableRow {
  CattsInvolved._({
    int? id,
    required this.principalId,
    required this.cattId,
  }) : super(id);

  factory CattsInvolved({
    int? id,
    required int principalId,
    required int cattId,
  }) = _CattsInvolvedImpl;

  factory CattsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return CattsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      cattId:
          serializationManager.deserialize<int>(jsonSerialization['cattId']),
    );
  }

  static final t = CattsInvolvedTable();

  static const db = CattsInvolvedRepository._();

  int principalId;

  int cattId;

  @override
  _i1.Table get table => t;

  CattsInvolved copyWith({
    int? id,
    int? principalId,
    int? cattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
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
      case 'cattId':
        cattId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<CattsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CattsInvolved>(
      where: where != null ? where(CattsInvolved.t) : null,
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
  static Future<CattsInvolved?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<CattsInvolved>(
      where: where != null ? where(CattsInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<CattsInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<CattsInvolved>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CattsInvolved>(
      where: where(CattsInvolved.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    CattsInvolved row, {
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
    CattsInvolved row, {
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
    CattsInvolved row, {
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
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CattsInvolved>(
      where: where != null ? where(CattsInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static CattsInvolvedInclude include() {
    return CattsInvolvedInclude._();
  }

  static CattsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    CattsInvolvedInclude? include,
  }) {
    return CattsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CattsInvolved.t),
      include: include,
    );
  }
}

class _Undefined {}

class _CattsInvolvedImpl extends CattsInvolved {
  _CattsInvolvedImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  @override
  CattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return CattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}

class CattsInvolvedTable extends _i1.Table {
  CattsInvolvedTable({super.tableRelation})
      : super(tableName: 'catts_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    cattId = _i1.ColumnInt(
      'cattId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt cattId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        cattId,
      ];
}

@Deprecated('Use CattsInvolvedTable.t instead.')
CattsInvolvedTable tCattsInvolved = CattsInvolvedTable();

class CattsInvolvedInclude extends _i1.IncludeObject {
  CattsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => CattsInvolved.t;
}

class CattsInvolvedIncludeList extends _i1.IncludeList {
  CattsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CattsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => CattsInvolved.t;
}

class CattsInvolvedRepository {
  const CattsInvolvedRepository._();

  Future<List<CattsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CattsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CattsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<CattsInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<CattsInvolved>> insert(
    _i1.Session session,
    List<CattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<CattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<CattsInvolved> insertRow(
    _i1.Session session,
    CattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<CattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CattsInvolved>> update(
    _i1.Session session,
    List<CattsInvolved> rows, {
    _i1.ColumnSelections<CattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<CattsInvolved>(
      rows,
      columns: columns?.call(CattsInvolved.t),
      transaction: transaction,
    );
  }

  Future<CattsInvolved> updateRow(
    _i1.Session session,
    CattsInvolved row, {
    _i1.ColumnSelections<CattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<CattsInvolved>(
      row,
      columns: columns?.call(CattsInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<CattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<CattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    CattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<CattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<CattsInvolved>(
      where: where(CattsInvolved.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
