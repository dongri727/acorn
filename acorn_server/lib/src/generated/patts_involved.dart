/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PattsInvolved extends _i1.TableRow {
  PattsInvolved._({
    int? id,
    required this.principalId,
    required this.pattId,
  }) : super(id);

  factory PattsInvolved({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PattsInvolvedImpl;

  factory PattsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PattsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      pattId:
          serializationManager.deserialize<int>(jsonSerialization['pattId']),
    );
  }

  static final t = PattsInvolvedTable();

  static const db = PattsInvolvedRepository._();

  int principalId;

  int pattId;

  @override
  _i1.Table get table => t;

  PattsInvolved copyWith({
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
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
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
      case 'pattId':
        pattId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PattsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PattsInvolved>(
      where: where != null ? where(PattsInvolved.t) : null,
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
  static Future<PattsInvolved?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PattsInvolved>(
      where: where != null ? where(PattsInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PattsInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PattsInvolved>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PattsInvolved>(
      where: where(PattsInvolved.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PattsInvolved row, {
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
    PattsInvolved row, {
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
    PattsInvolved row, {
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
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PattsInvolved>(
      where: where != null ? where(PattsInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PattsInvolvedInclude include() {
    return PattsInvolvedInclude._();
  }

  static PattsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PattsInvolvedTable>? orderByList,
    PattsInvolvedInclude? include,
  }) {
    return PattsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PattsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PattsInvolved.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PattsInvolvedImpl extends PattsInvolved {
  _PattsInvolvedImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
          id: id,
          principalId: principalId,
          pattId: pattId,
        );

  @override
  PattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}

class PattsInvolvedTable extends _i1.Table {
  PattsInvolvedTable({super.tableRelation})
      : super(tableName: 'patts_involved') {
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

@Deprecated('Use PattsInvolvedTable.t instead.')
PattsInvolvedTable tPattsInvolved = PattsInvolvedTable();

class PattsInvolvedInclude extends _i1.IncludeObject {
  PattsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PattsInvolved.t;
}

class PattsInvolvedIncludeList extends _i1.IncludeList {
  PattsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PattsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PattsInvolved.t;
}

class PattsInvolvedRepository {
  const PattsInvolvedRepository._();

  Future<List<PattsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PattsInvolved>(
      where: where?.call(PattsInvolved.t),
      orderBy: orderBy?.call(PattsInvolved.t),
      orderByList: orderByList?.call(PattsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PattsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<PattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PattsInvolved>(
      where: where?.call(PattsInvolved.t),
      orderBy: orderBy?.call(PattsInvolved.t),
      orderByList: orderByList?.call(PattsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PattsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PattsInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PattsInvolved>> insert(
    _i1.Session session,
    List<PattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<PattsInvolved> insertRow(
    _i1.Session session,
    PattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PattsInvolved>> update(
    _i1.Session session,
    List<PattsInvolved> rows, {
    _i1.ColumnSelections<PattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PattsInvolved>(
      rows,
      columns: columns?.call(PattsInvolved.t),
      transaction: transaction,
    );
  }

  Future<PattsInvolved> updateRow(
    _i1.Session session,
    PattsInvolved row, {
    _i1.ColumnSelections<PattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PattsInvolved>(
      row,
      columns: columns?.call(PattsInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PattsInvolved>(
      where: where(PattsInvolved.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PattsInvolved>(
      where: where?.call(PattsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
