/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalOrgs extends _i1.TableRow {
  PrincipalOrgs._({
    int? id,
    required this.principalId,
    required this.orgId,
  }) : super(id);

  factory PrincipalOrgs({
    int? id,
    required int principalId,
    required int orgId,
  }) = _PrincipalOrgsImpl;

  factory PrincipalOrgs.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalOrgs(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      orgId: serializationManager.deserialize<int>(jsonSerialization['orgId']),
    );
  }

  static final t = PrincipalOrgsTable();

  static const db = PrincipalOrgsRepository._();

  int principalId;

  int orgId;

  @override
  _i1.Table get table => t;

  PrincipalOrgs copyWith({
    int? id,
    int? principalId,
    int? orgId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'orgId': orgId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'orgId': orgId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'orgId': orgId,
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
      case 'orgId':
        orgId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalOrgs>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalOrgs>(
      where: where != null ? where(PrincipalOrgs.t) : null,
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
  static Future<PrincipalOrgs?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalOrgs>(
      where: where != null ? where(PrincipalOrgs.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalOrgs?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalOrgs>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalOrgsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalOrgs>(
      where: where(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalOrgs row, {
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
    PrincipalOrgs row, {
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
    PrincipalOrgs row, {
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
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalOrgs>(
      where: where != null ? where(PrincipalOrgs.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalOrgsInclude include() {
    return PrincipalOrgsInclude._();
  }

  static PrincipalOrgsIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalOrgsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalOrgsTable>? orderByList,
    PrincipalOrgsInclude? include,
  }) {
    return PrincipalOrgsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalOrgs.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalOrgs.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalOrgsImpl extends PrincipalOrgs {
  _PrincipalOrgsImpl({
    int? id,
    required int principalId,
    required int orgId,
  }) : super._(
          id: id,
          principalId: principalId,
          orgId: orgId,
        );

  @override
  PrincipalOrgs copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? orgId,
  }) {
    return PrincipalOrgs(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      orgId: orgId ?? this.orgId,
    );
  }
}

class PrincipalOrgsTable extends _i1.Table {
  PrincipalOrgsTable({super.tableRelation})
      : super(tableName: 'principal_orgs') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    orgId = _i1.ColumnInt(
      'orgId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt orgId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        orgId,
      ];
}

@Deprecated('Use PrincipalOrgsTable.t instead.')
PrincipalOrgsTable tPrincipalOrgs = PrincipalOrgsTable();

class PrincipalOrgsInclude extends _i1.IncludeObject {
  PrincipalOrgsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalOrgs.t;
}

class PrincipalOrgsIncludeList extends _i1.IncludeList {
  PrincipalOrgsIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalOrgs.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalOrgs.t;
}

class PrincipalOrgsRepository {
  const PrincipalOrgsRepository._();

  Future<List<PrincipalOrgs>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalOrgsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalOrgsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalOrgs>(
      where: where?.call(PrincipalOrgs.t),
      orderBy: orderBy?.call(PrincipalOrgs.t),
      orderByList: orderByList?.call(PrincipalOrgs.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalOrgs?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalOrgsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalOrgsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalOrgs>(
      where: where?.call(PrincipalOrgs.t),
      orderBy: orderBy?.call(PrincipalOrgs.t),
      orderByList: orderByList?.call(PrincipalOrgs.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalOrgs?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalOrgs>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalOrgs>> insert(
    _i1.Session session,
    List<PrincipalOrgs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalOrgs>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalOrgs> insertRow(
    _i1.Session session,
    PrincipalOrgs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalOrgs>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalOrgs>> update(
    _i1.Session session,
    List<PrincipalOrgs> rows, {
    _i1.ColumnSelections<PrincipalOrgsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalOrgs>(
      rows,
      columns: columns?.call(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  Future<PrincipalOrgs> updateRow(
    _i1.Session session,
    PrincipalOrgs row, {
    _i1.ColumnSelections<PrincipalOrgsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalOrgs>(
      row,
      columns: columns?.call(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalOrgs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalOrgs>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalOrgs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalOrgs>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalOrgsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalOrgs>(
      where: where(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalOrgs>(
      where: where?.call(PrincipalOrgs.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
