/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalSeas extends _i1.TableRow {
  PrincipalSeas._({
    int? id,
    required this.principalId,
    required this.seasId,
  }) : super(id);

  factory PrincipalSeas({
    int? id,
    required int principalId,
    required int seasId,
  }) = _PrincipalSeasImpl;

  factory PrincipalSeas.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalSeas(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      seasId:
          serializationManager.deserialize<int>(jsonSerialization['seasId']),
    );
  }

  static final t = PrincipalSeasTable();

  static const db = PrincipalSeasRepository._();

  int principalId;

  int seasId;

  @override
  _i1.Table get table => t;

  PrincipalSeas copyWith({
    int? id,
    int? principalId,
    int? seasId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'seasId': seasId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'seasId': seasId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
      'seasId': seasId,
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
      case 'seasId':
        seasId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalSeas>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<PrincipalSeas?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalSeas?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalSeas>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalSeasTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalSeas>(
      where: where(PrincipalSeas.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
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

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
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

  static PrincipalSeasInclude include() {
    return PrincipalSeasInclude._();
  }

  static PrincipalSeasIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSeasTable>? orderByList,
    PrincipalSeasInclude? include,
  }) {
    return PrincipalSeasIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalSeas.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalSeas.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalSeasImpl extends PrincipalSeas {
  _PrincipalSeasImpl({
    int? id,
    required int principalId,
    required int seasId,
  }) : super._(
          id: id,
          principalId: principalId,
          seasId: seasId,
        );

  @override
  PrincipalSeas copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? seasId,
  }) {
    return PrincipalSeas(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      seasId: seasId ?? this.seasId,
    );
  }
}

class PrincipalSeasTable extends _i1.Table {
  PrincipalSeasTable({super.tableRelation})
      : super(tableName: 'principal_seas') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    seasId = _i1.ColumnInt(
      'seasId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt seasId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        seasId,
      ];
}

@Deprecated('Use PrincipalSeasTable.t instead.')
PrincipalSeasTable tPrincipalSeas = PrincipalSeasTable();

class PrincipalSeasInclude extends _i1.IncludeObject {
  PrincipalSeasInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalSeas.t;
}

class PrincipalSeasIncludeList extends _i1.IncludeList {
  PrincipalSeasIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalSeas.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalSeas.t;
}

class PrincipalSeasRepository {
  const PrincipalSeasRepository._();

  Future<List<PrincipalSeas>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSeasTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalSeas>(
      where: where?.call(PrincipalSeas.t),
      orderBy: orderBy?.call(PrincipalSeas.t),
      orderByList: orderByList?.call(PrincipalSeas.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalSeas?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalSeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSeasTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalSeas>(
      where: where?.call(PrincipalSeas.t),
      orderBy: orderBy?.call(PrincipalSeas.t),
      orderByList: orderByList?.call(PrincipalSeas.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalSeas?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalSeas>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalSeas>> insert(
    _i1.Session session,
    List<PrincipalSeas> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalSeas>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalSeas> insertRow(
    _i1.Session session,
    PrincipalSeas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalSeas>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalSeas>> update(
    _i1.Session session,
    List<PrincipalSeas> rows, {
    _i1.ColumnSelections<PrincipalSeasTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalSeas>(
      rows,
      columns: columns?.call(PrincipalSeas.t),
      transaction: transaction,
    );
  }

  Future<PrincipalSeas> updateRow(
    _i1.Session session,
    PrincipalSeas row, {
    _i1.ColumnSelections<PrincipalSeasTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalSeas>(
      row,
      columns: columns?.call(PrincipalSeas.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalSeas> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalSeas>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalSeas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalSeas>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalSeasTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalSeas>(
      where: where(PrincipalSeas.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSeasTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalSeas>(
      where: where?.call(PrincipalSeas.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
