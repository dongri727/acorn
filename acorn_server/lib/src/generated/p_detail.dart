/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalDetail extends _i1.TableRow {
  PrincipalDetail._({
    int? id,
    required this.principalId,
    required this.detailId,
  }) : super(id);

  factory PrincipalDetail({
    int? id,
    required int principalId,
    required int detailId,
  }) = _PrincipalDetailImpl;

  factory PrincipalDetail.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalDetail(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      detailId:
          serializationManager.deserialize<int>(jsonSerialization['detailId']),
    );
  }

  static final t = PrincipalDetailTable();

  static const db = PrincipalDetailRepository._();

  int principalId;

  int detailId;

  @override
  _i1.Table get table => t;

  PrincipalDetail copyWith({
    int? id,
    int? principalId,
    int? detailId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'detailId': detailId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'detailId': detailId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'detailId': detailId,
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
      case 'detailId':
        detailId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalDetail>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalDetail>(
      where: where != null ? where(PrincipalDetail.t) : null,
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
  static Future<PrincipalDetail?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalDetail>(
      where: where != null ? where(PrincipalDetail.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalDetail?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalDetail>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalDetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalDetail>(
      where: where(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalDetail row, {
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
    PrincipalDetail row, {
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
    PrincipalDetail row, {
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
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalDetail>(
      where: where != null ? where(PrincipalDetail.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalDetailInclude include() {
    return PrincipalDetailInclude._();
  }

  static PrincipalDetailIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    PrincipalDetailInclude? include,
  }) {
    return PrincipalDetailIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalDetail.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalDetailImpl extends PrincipalDetail {
  _PrincipalDetailImpl({
    int? id,
    required int principalId,
    required int detailId,
  }) : super._(
          id: id,
          principalId: principalId,
          detailId: detailId,
        );

  @override
  PrincipalDetail copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? detailId,
  }) {
    return PrincipalDetail(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      detailId: detailId ?? this.detailId,
    );
  }
}

class PrincipalDetailTable extends _i1.Table {
  PrincipalDetailTable({super.tableRelation})
      : super(tableName: 'principal_detail') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    detailId = _i1.ColumnInt(
      'detailId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt detailId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        detailId,
      ];
}

@Deprecated('Use PrincipalDetailTable.t instead.')
PrincipalDetailTable tPrincipalDetail = PrincipalDetailTable();

class PrincipalDetailInclude extends _i1.IncludeObject {
  PrincipalDetailInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalDetail.t;
}

class PrincipalDetailIncludeList extends _i1.IncludeList {
  PrincipalDetailIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalDetail.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalDetail.t;
}

class PrincipalDetailRepository {
  const PrincipalDetailRepository._();

  Future<List<PrincipalDetail>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalDetail>(
      where: where?.call(PrincipalDetail.t),
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderByList: orderByList?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalDetail?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalDetail>(
      where: where?.call(PrincipalDetail.t),
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderByList: orderByList?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalDetail?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalDetail>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalDetail>> insert(
    _i1.Session session,
    List<PrincipalDetail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalDetail>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalDetail> insertRow(
    _i1.Session session,
    PrincipalDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalDetail>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalDetail>> update(
    _i1.Session session,
    List<PrincipalDetail> rows, {
    _i1.ColumnSelections<PrincipalDetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalDetail>(
      rows,
      columns: columns?.call(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  Future<PrincipalDetail> updateRow(
    _i1.Session session,
    PrincipalDetail row, {
    _i1.ColumnSelections<PrincipalDetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalDetail>(
      row,
      columns: columns?.call(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalDetail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalDetail>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalDetail>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalDetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalDetail>(
      where: where(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalDetail>(
      where: where?.call(PrincipalDetail.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
