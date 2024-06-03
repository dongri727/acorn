/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalUser extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory PrincipalUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalUser(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      userId: jsonSerialization['userId'] as int,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'userId': userId,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<PrincipalUser>(
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
    return session.db.findFirstRow<PrincipalUser>(
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
    return session.db.findById<PrincipalUser>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalUser>> insert(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalUser> insertRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalUser>(
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
    return session.db.update<PrincipalUser>(
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
    return session.db.updateRow<PrincipalUser>(
      row,
      columns: columns?.call(PrincipalUser.t),
      transaction: transaction,
    );
  }

  Future<List<PrincipalUser>> delete(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalUser>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalUser> deleteRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalUser>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalUser>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalUser>(
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
    return session.db.count<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
