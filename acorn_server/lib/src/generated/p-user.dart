/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalUser extends _i1.TableRow {
  PrincipalUser._({
    int? id,
    required this.principalId,
    required this.userId,
  }) : super(id);

  factory PrincipalUser({
    int? id,
    required int principalId,
    required int userId,
  }) = _PrincipalUserImpl;

  factory PrincipalUser.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalUser(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
    );
  }

  static final t = PrincipalUserTable();

  static const db = PrincipalUserRepository._();

  int principalId;

  int userId;

  @override
  _i1.Table get table => t;

  PrincipalUser copyWith({
    int? id,
    int? principalId,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'userId': userId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'userId': userId,
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
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalUser>(
      where: where != null ? where(PrincipalUser.t) : null,
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
  static Future<PrincipalUser?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalUser>(
      where: where != null ? where(PrincipalUser.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalUser?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalUser>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalUser>(
      where: where(PrincipalUser.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalUser row, {
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
    PrincipalUser row, {
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
    PrincipalUser row, {
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
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalUser>(
      where: where != null ? where(PrincipalUser.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalUserInclude include() {
    return PrincipalUserInclude._();
  }

  static PrincipalUserIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    PrincipalUserInclude? include,
  }) {
    return PrincipalUserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalUser.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalUserImpl extends PrincipalUser {
  _PrincipalUserImpl({
    int? id,
    required int principalId,
    required int userId,
  }) : super._(
          id: id,
          principalId: principalId,
          userId: userId,
        );

  @override
  PrincipalUser copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? userId,
  }) {
    return PrincipalUser(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      userId: userId ?? this.userId,
    );
  }
}

class PrincipalUserTable extends _i1.Table {
  PrincipalUserTable({super.tableRelation})
      : super(tableName: 'principal_user') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt userId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        userId,
      ];
}

@Deprecated('Use PrincipalUserTable.t instead.')
PrincipalUserTable tPrincipalUser = PrincipalUserTable();

class PrincipalUserInclude extends _i1.IncludeObject {
  PrincipalUserInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalUser.t;
}

class PrincipalUserIncludeList extends _i1.IncludeList {
  PrincipalUserIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalUser.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalUser.t;
}

class PrincipalUserRepository {
  const PrincipalUserRepository._();

  Future<List<PrincipalUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      orderBy: orderBy?.call(PrincipalUser.t),
      orderByList: orderByList?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalUser?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      orderBy: orderBy?.call(PrincipalUser.t),
      orderByList: orderByList?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalUser?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalUser>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalUser>> insert(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalUser> insertRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalUser>> update(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.ColumnSelections<PrincipalUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalUser>(
      rows,
      columns: columns?.call(PrincipalUser.t),
      transaction: transaction,
    );
  }

  Future<PrincipalUser> updateRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.ColumnSelections<PrincipalUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalUser>(
      row,
      columns: columns?.call(PrincipalUser.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalUser>(
      where: where(PrincipalUser.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
