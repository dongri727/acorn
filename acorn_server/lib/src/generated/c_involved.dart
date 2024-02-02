/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class CountryInvolved extends _i1.TableRow {
  CountryInvolved._({
    int? id,
    required this.principalId,
    required this.paysId,
  }) : super(id);

  factory CountryInvolved({
    int? id,
    required int principalId,
    required int paysId,
  }) = _CountryInvolvedImpl;

  factory CountryInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return CountryInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      paysId:
          serializationManager.deserialize<int>(jsonSerialization['paysId']),
    );
  }

  static final t = CountryInvolvedTable();

  static const db = CountryInvolvedRepository._();

  int principalId;

  int paysId;

  @override
  _i1.Table get table => t;

  CountryInvolved copyWith({
    int? id,
    int? principalId,
    int? paysId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'paysId': paysId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'paysId': paysId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'paysId': paysId,
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
      case 'paysId':
        paysId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<CountryInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CountryInvolved>(
      where: where != null ? where(CountryInvolved.t) : null,
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
  static Future<CountryInvolved?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<CountryInvolved>(
      where: where != null ? where(CountryInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<CountryInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<CountryInvolved>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CountryInvolved>(
      where: where(CountryInvolved.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    CountryInvolved row, {
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
    CountryInvolved row, {
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
    CountryInvolved row, {
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
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CountryInvolved>(
      where: where != null ? where(CountryInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static CountryInvolvedInclude include() {
    return CountryInvolvedInclude._();
  }

  static CountryInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryInvolvedTable>? orderByList,
    CountryInvolvedInclude? include,
  }) {
    return CountryInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CountryInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CountryInvolved.t),
      include: include,
    );
  }
}

class _Undefined {}

class _CountryInvolvedImpl extends CountryInvolved {
  _CountryInvolvedImpl({
    int? id,
    required int principalId,
    required int paysId,
  }) : super._(
          id: id,
          principalId: principalId,
          paysId: paysId,
        );

  @override
  CountryInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? paysId,
  }) {
    return CountryInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      paysId: paysId ?? this.paysId,
    );
  }
}

class CountryInvolvedTable extends _i1.Table {
  CountryInvolvedTable({super.tableRelation})
      : super(tableName: 'country_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    paysId = _i1.ColumnInt(
      'paysId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt paysId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        paysId,
      ];
}

@Deprecated('Use CountryInvolvedTable.t instead.')
CountryInvolvedTable tCountryInvolved = CountryInvolvedTable();

class CountryInvolvedInclude extends _i1.IncludeObject {
  CountryInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => CountryInvolved.t;
}

class CountryInvolvedIncludeList extends _i1.IncludeList {
  CountryInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CountryInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => CountryInvolved.t;
}

class CountryInvolvedRepository {
  const CountryInvolvedRepository._();

  Future<List<CountryInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<CountryInvolved>(
      where: where?.call(CountryInvolved.t),
      orderBy: orderBy?.call(CountryInvolved.t),
      orderByList: orderByList?.call(CountryInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CountryInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<CountryInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<CountryInvolved>(
      where: where?.call(CountryInvolved.t),
      orderBy: orderBy?.call(CountryInvolved.t),
      orderByList: orderByList?.call(CountryInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<CountryInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<CountryInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<CountryInvolved>> insert(
    _i1.Session session,
    List<CountryInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<CountryInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<CountryInvolved> insertRow(
    _i1.Session session,
    CountryInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<CountryInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CountryInvolved>> update(
    _i1.Session session,
    List<CountryInvolved> rows, {
    _i1.ColumnSelections<CountryInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<CountryInvolved>(
      rows,
      columns: columns?.call(CountryInvolved.t),
      transaction: transaction,
    );
  }

  Future<CountryInvolved> updateRow(
    _i1.Session session,
    CountryInvolved row, {
    _i1.ColumnSelections<CountryInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<CountryInvolved>(
      row,
      columns: columns?.call(CountryInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<CountryInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<CountryInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    CountryInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<CountryInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<CountryInvolved>(
      where: where(CountryInvolved.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<CountryInvolved>(
      where: where?.call(CountryInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
