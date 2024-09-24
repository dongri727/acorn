/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class CountryInvolved extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory CountryInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return CountryInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      paysId: jsonSerialization['paysId'] as int,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'paysId': paysId,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<CountryInvolved>(
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
    return session.db.findFirstRow<CountryInvolved>(
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
    return session.db.findById<CountryInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<CountryInvolved>> insert(
    _i1.Session session,
    List<CountryInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CountryInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<CountryInvolved> insertRow(
    _i1.Session session,
    CountryInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CountryInvolved>(
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
    return session.db.update<CountryInvolved>(
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
    return session.db.updateRow<CountryInvolved>(
      row,
      columns: columns?.call(CountryInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<CountryInvolved>> delete(
    _i1.Session session,
    List<CountryInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CountryInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<CountryInvolved> deleteRow(
    _i1.Session session,
    CountryInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CountryInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<CountryInvolved>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CountryInvolved>(
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
    return session.db.count<CountryInvolved>(
      where: where?.call(CountryInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
