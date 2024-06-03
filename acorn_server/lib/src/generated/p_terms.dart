/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalTerms extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  PrincipalTerms._({
    int? id,
    required this.principalId,
    required this.termId,
  }) : super(id);

  factory PrincipalTerms({
    int? id,
    required int principalId,
    required int termId,
  }) = _PrincipalTermsImpl;

  factory PrincipalTerms.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalTerms(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      termId: jsonSerialization['termId'] as int,
    );
  }

  static final t = PrincipalTermsTable();

  static const db = PrincipalTermsRepository._();

  int principalId;

  int termId;

  @override
  _i1.Table get table => t;

  PrincipalTerms copyWith({
    int? id,
    int? principalId,
    int? termId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'termId': termId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'termId': termId,
    };
  }

  static PrincipalTermsInclude include() {
    return PrincipalTermsInclude._();
  }

  static PrincipalTermsIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalTermsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalTermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalTermsTable>? orderByList,
    PrincipalTermsInclude? include,
  }) {
    return PrincipalTermsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalTerms.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalTerms.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalTermsImpl extends PrincipalTerms {
  _PrincipalTermsImpl({
    int? id,
    required int principalId,
    required int termId,
  }) : super._(
          id: id,
          principalId: principalId,
          termId: termId,
        );

  @override
  PrincipalTerms copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? termId,
  }) {
    return PrincipalTerms(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      termId: termId ?? this.termId,
    );
  }
}

class PrincipalTermsTable extends _i1.Table {
  PrincipalTermsTable({super.tableRelation})
      : super(tableName: 'principal_terms') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    termId = _i1.ColumnInt(
      'termId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt termId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        termId,
      ];
}

class PrincipalTermsInclude extends _i1.IncludeObject {
  PrincipalTermsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalTerms.t;
}

class PrincipalTermsIncludeList extends _i1.IncludeList {
  PrincipalTermsIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalTermsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalTerms.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalTerms.t;
}

class PrincipalTermsRepository {
  const PrincipalTermsRepository._();

  Future<List<PrincipalTerms>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTermsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalTermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalTermsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalTerms>(
      where: where?.call(PrincipalTerms.t),
      orderBy: orderBy?.call(PrincipalTerms.t),
      orderByList: orderByList?.call(PrincipalTerms.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalTerms?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTermsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalTermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalTermsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalTerms>(
      where: where?.call(PrincipalTerms.t),
      orderBy: orderBy?.call(PrincipalTerms.t),
      orderByList: orderByList?.call(PrincipalTerms.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalTerms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalTerms>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalTerms>> insert(
    _i1.Session session,
    List<PrincipalTerms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalTerms>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalTerms> insertRow(
    _i1.Session session,
    PrincipalTerms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalTerms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalTerms>> update(
    _i1.Session session,
    List<PrincipalTerms> rows, {
    _i1.ColumnSelections<PrincipalTermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalTerms>(
      rows,
      columns: columns?.call(PrincipalTerms.t),
      transaction: transaction,
    );
  }

  Future<PrincipalTerms> updateRow(
    _i1.Session session,
    PrincipalTerms row, {
    _i1.ColumnSelections<PrincipalTermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalTerms>(
      row,
      columns: columns?.call(PrincipalTerms.t),
      transaction: transaction,
    );
  }

  Future<List<PrincipalTerms>> delete(
    _i1.Session session,
    List<PrincipalTerms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalTerms>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalTerms> deleteRow(
    _i1.Session session,
    PrincipalTerms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalTerms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalTerms>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalTermsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalTerms>(
      where: where(PrincipalTerms.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTermsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalTerms>(
      where: where?.call(PrincipalTerms.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
