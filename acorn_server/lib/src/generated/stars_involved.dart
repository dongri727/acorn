/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class StarsInvolved extends _i1.TableRow {
  StarsInvolved._({
    int? id,
    required this.principalId,
    required this.starId,
  }) : super(id);

  factory StarsInvolved({
    int? id,
    required int principalId,
    required int starId,
  }) = _StarsInvolvedImpl;

  factory StarsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StarsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      starId:
          serializationManager.deserialize<int>(jsonSerialization['starId']),
    );
  }

  static final t = StarsInvolvedTable();

  static const db = StarsInvolvedRepository._();

  int principalId;

  int starId;

  @override
  _i1.Table get table => t;

  StarsInvolved copyWith({
    int? id,
    int? principalId,
    int? starId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'starId': starId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'starId': starId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'starId': starId,
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
      case 'starId':
        starId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<StarsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<StarsInvolved>(
      where: where != null ? where(StarsInvolved.t) : null,
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
  static Future<StarsInvolved?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<StarsInvolved>(
      where: where != null ? where(StarsInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<StarsInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<StarsInvolved>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StarsInvolved>(
      where: where(StarsInvolved.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    StarsInvolved row, {
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
    StarsInvolved row, {
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
    StarsInvolved row, {
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
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StarsInvolved>(
      where: where != null ? where(StarsInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static StarsInvolvedInclude include() {
    return StarsInvolvedInclude._();
  }

  static StarsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    StarsInvolvedInclude? include,
  }) {
    return StarsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StarsInvolved.t),
      include: include,
    );
  }
}

class _Undefined {}

class _StarsInvolvedImpl extends StarsInvolved {
  _StarsInvolvedImpl({
    int? id,
    required int principalId,
    required int starId,
  }) : super._(
          id: id,
          principalId: principalId,
          starId: starId,
        );

  @override
  StarsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? starId,
  }) {
    return StarsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      starId: starId ?? this.starId,
    );
  }
}

class StarsInvolvedTable extends _i1.Table {
  StarsInvolvedTable({super.tableRelation})
      : super(tableName: 'stars_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    starId = _i1.ColumnInt(
      'starId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt starId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        starId,
      ];
}

@Deprecated('Use StarsInvolvedTable.t instead.')
StarsInvolvedTable tStarsInvolved = StarsInvolvedTable();

class StarsInvolvedInclude extends _i1.IncludeObject {
  StarsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => StarsInvolved.t;
}

class StarsInvolvedIncludeList extends _i1.IncludeList {
  StarsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StarsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => StarsInvolved.t;
}

class StarsInvolvedRepository {
  const StarsInvolvedRepository._();

  Future<List<StarsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<StarsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<StarsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<StarsInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<StarsInvolved>> insert(
    _i1.Session session,
    List<StarsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<StarsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<StarsInvolved> insertRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<StarsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<StarsInvolved>> update(
    _i1.Session session,
    List<StarsInvolved> rows, {
    _i1.ColumnSelections<StarsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<StarsInvolved>(
      rows,
      columns: columns?.call(StarsInvolved.t),
      transaction: transaction,
    );
  }

  Future<StarsInvolved> updateRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.ColumnSelections<StarsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<StarsInvolved>(
      row,
      columns: columns?.call(StarsInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<StarsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<StarsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<StarsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<StarsInvolved>(
      where: where(StarsInvolved.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
