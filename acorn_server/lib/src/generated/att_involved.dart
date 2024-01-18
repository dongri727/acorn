/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class AttsInvolved extends _i1.TableRow {
  AttsInvolved._({
    int? id,
    required this.principalId,
    required this.attId,
  }) : super(id);

  factory AttsInvolved({
    int? id,
    required int principalId,
    required int attId,
  }) = _AttsInvolvedImpl;

  factory AttsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AttsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      attId: serializationManager.deserialize<int>(jsonSerialization['attId']),
    );
  }

  static final t = AttsInvolvedTable();

  static const db = AttsInvolvedRepository._();

  int principalId;

  int attId;

  @override
  _i1.Table get table => t;

  AttsInvolved copyWith({
    int? id,
    int? principalId,
    int? attId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'attId': attId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'attId': attId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
      'attId': attId,
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
      case 'attId':
        attId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<AttsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AttsInvolved>(
      where: where != null ? where(AttsInvolved.t) : null,
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
  static Future<AttsInvolved?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<AttsInvolved>(
      where: where != null ? where(AttsInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<AttsInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<AttsInvolved>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AttsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AttsInvolved>(
      where: where(AttsInvolved.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    AttsInvolved row, {
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
    AttsInvolved row, {
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
    AttsInvolved row, {
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
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AttsInvolved>(
      where: where != null ? where(AttsInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static AttsInvolvedInclude include() {
    return AttsInvolvedInclude._();
  }

  static AttsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AttsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AttsInvolvedTable>? orderByList,
    AttsInvolvedInclude? include,
  }) {
    return AttsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AttsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AttsInvolved.t),
      include: include,
    );
  }
}

class _Undefined {}

class _AttsInvolvedImpl extends AttsInvolved {
  _AttsInvolvedImpl({
    int? id,
    required int principalId,
    required int attId,
  }) : super._(
          id: id,
          principalId: principalId,
          attId: attId,
        );

  @override
  AttsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? attId,
  }) {
    return AttsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      attId: attId ?? this.attId,
    );
  }
}

class AttsInvolvedTable extends _i1.Table {
  AttsInvolvedTable({super.tableRelation}) : super(tableName: 'atts_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    attId = _i1.ColumnInt(
      'attId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt attId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        attId,
      ];
}

@Deprecated('Use AttsInvolvedTable.t instead.')
AttsInvolvedTable tAttsInvolved = AttsInvolvedTable();

class AttsInvolvedInclude extends _i1.IncludeObject {
  AttsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => AttsInvolved.t;
}

class AttsInvolvedIncludeList extends _i1.IncludeList {
  AttsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AttsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => AttsInvolved.t;
}

class AttsInvolvedRepository {
  const AttsInvolvedRepository._();

  Future<List<AttsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AttsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AttsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<AttsInvolved>(
      where: where?.call(AttsInvolved.t),
      orderBy: orderBy?.call(AttsInvolved.t),
      orderByList: orderByList?.call(AttsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<AttsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<AttsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AttsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<AttsInvolved>(
      where: where?.call(AttsInvolved.t),
      orderBy: orderBy?.call(AttsInvolved.t),
      orderByList: orderByList?.call(AttsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<AttsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<AttsInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<AttsInvolved>> insert(
    _i1.Session session,
    List<AttsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<AttsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<AttsInvolved> insertRow(
    _i1.Session session,
    AttsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<AttsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<AttsInvolved>> update(
    _i1.Session session,
    List<AttsInvolved> rows, {
    _i1.ColumnSelections<AttsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<AttsInvolved>(
      rows,
      columns: columns?.call(AttsInvolved.t),
      transaction: transaction,
    );
  }

  Future<AttsInvolved> updateRow(
    _i1.Session session,
    AttsInvolved row, {
    _i1.ColumnSelections<AttsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<AttsInvolved>(
      row,
      columns: columns?.call(AttsInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<AttsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<AttsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    AttsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<AttsInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AttsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<AttsInvolved>(
      where: where(AttsInvolved.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AttsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<AttsInvolved>(
      where: where?.call(AttsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
