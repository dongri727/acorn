/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalCatt extends _i1.TableRow {
  PrincipalCatt._({
    int? id,
    required this.principalId,
    required this.cattId,
  }) : super(id);

  factory PrincipalCatt({
    int? id,
    required int principalId,
    required int cattId,
  }) = _PrincipalCattImpl;

  factory PrincipalCatt.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalCatt(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      cattId:
          serializationManager.deserialize<int>(jsonSerialization['cattId']),
    );
  }

  static final t = PrincipalCattTable();

  static const db = PrincipalCattRepository._();

  int principalId;

  int cattId;

  @override
  _i1.Table get table => t;

  PrincipalCatt copyWith({
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
  static Future<List<PrincipalCatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalCatt>(
      where: where != null ? where(PrincipalCatt.t) : null,
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
  static Future<PrincipalCatt?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalCatt>(
      where: where != null ? where(PrincipalCatt.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalCatt?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalCatt>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCatt>(
      where: where(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalCatt row, {
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
    PrincipalCatt row, {
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
    PrincipalCatt row, {
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
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalCatt>(
      where: where != null ? where(PrincipalCatt.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalCattInclude include() {
    return PrincipalCattInclude._();
  }

  static PrincipalCattIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    PrincipalCattInclude? include,
  }) {
    return PrincipalCattIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalCatt.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalCattImpl extends PrincipalCatt {
  _PrincipalCattImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  @override
  PrincipalCatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return PrincipalCatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}

class PrincipalCattTable extends _i1.Table {
  PrincipalCattTable({super.tableRelation})
      : super(tableName: 'principal_catt') {
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

@Deprecated('Use PrincipalCattTable.t instead.')
PrincipalCattTable tPrincipalCatt = PrincipalCattTable();

class PrincipalCattInclude extends _i1.IncludeObject {
  PrincipalCattInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalCatt.t;
}

class PrincipalCattIncludeList extends _i1.IncludeList {
  PrincipalCattIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalCatt.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalCatt.t;
}

class PrincipalCattRepository {
  const PrincipalCattRepository._();

  Future<List<PrincipalCatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderByList: orderByList?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderByList: orderByList?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalCatt>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCatt>> insert(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalCatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt> insertRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalCatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCatt>> update(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.ColumnSelections<PrincipalCattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalCatt>(
      rows,
      columns: columns?.call(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  Future<PrincipalCatt> updateRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.ColumnSelections<PrincipalCattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalCatt>(
      row,
      columns: columns?.call(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalCatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalCatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalCatt>(
      where: where(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
