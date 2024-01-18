/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalPatt extends _i1.TableRow {
  PrincipalPatt._({
    int? id,
    required this.principalId,
    required this.pattId,
  }) : super(id);

  factory PrincipalPatt({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PrincipalPattImpl;

  factory PrincipalPatt.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalPatt(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      pattId:
          serializationManager.deserialize<int>(jsonSerialization['pattId']),
    );
  }

  static final t = PrincipalPattTable();

  static const db = PrincipalPattRepository._();

  int principalId;

  int pattId;

  @override
  _i1.Table get table => t;

  PrincipalPatt copyWith({
    int? id,
    int? principalId,
    int? pattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
      'pattId': pattId,
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
      case 'pattId':
        pattId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalPatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPatt>(
      where: where != null ? where(PrincipalPatt.t) : null,
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
  static Future<PrincipalPatt?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalPatt>(
      where: where != null ? where(PrincipalPatt.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalPatt?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalPatt>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPatt>(
      where: where(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalPatt row, {
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
    PrincipalPatt row, {
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
    PrincipalPatt row, {
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
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPatt>(
      where: where != null ? where(PrincipalPatt.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalPattInclude include() {
    return PrincipalPattInclude._();
  }

  static PrincipalPattIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    PrincipalPattInclude? include,
  }) {
    return PrincipalPattIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalPatt.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalPattImpl extends PrincipalPatt {
  _PrincipalPattImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
          id: id,
          principalId: principalId,
          pattId: pattId,
        );

  @override
  PrincipalPatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PrincipalPatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}

class PrincipalPattTable extends _i1.Table {
  PrincipalPattTable({super.tableRelation})
      : super(tableName: 'principal_patt') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    pattId = _i1.ColumnInt(
      'pattId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt pattId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        pattId,
      ];
}

@Deprecated('Use PrincipalPattTable.t instead.')
PrincipalPattTable tPrincipalPatt = PrincipalPattTable();

class PrincipalPattInclude extends _i1.IncludeObject {
  PrincipalPattInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalPatt.t;
}

class PrincipalPattIncludeList extends _i1.IncludeList {
  PrincipalPattIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalPatt.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalPatt.t;
}

class PrincipalPattRepository {
  const PrincipalPattRepository._();

  Future<List<PrincipalPatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalPatt>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPatt>> insert(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalPatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt> insertRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalPatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPatt>> update(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.ColumnSelections<PrincipalPattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalPatt>(
      rows,
      columns: columns?.call(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  Future<PrincipalPatt> updateRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.ColumnSelections<PrincipalPattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalPatt>(
      row,
      columns: columns?.call(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalPatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalPatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalPatt>(
      where: where(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
