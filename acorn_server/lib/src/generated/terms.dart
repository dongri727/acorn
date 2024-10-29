/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Terms implements _i1.TableRow, _i1.ProtocolSerialization {
  Terms._({
    this.id,
    required this.term,
  });

  factory Terms({
    int? id,
    required String term,
  }) = _TermsImpl;

  factory Terms.fromJson(Map<String, dynamic> jsonSerialization) {
    return Terms(
      id: jsonSerialization['id'] as int?,
      term: jsonSerialization['term'] as String,
    );
  }

  static final t = TermsTable();

  static const db = TermsRepository._();

  @override
  int? id;

  String term;

  @override
  _i1.Table get table => t;

  Terms copyWith({
    int? id,
    String? term,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'term': term,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'term': term,
    };
  }

  static TermsInclude include() {
    return TermsInclude._();
  }

  static TermsIncludeList includeList({
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TermsTable>? orderByList,
    TermsInclude? include,
  }) {
    return TermsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Terms.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Terms.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TermsImpl extends Terms {
  _TermsImpl({
    int? id,
    required String term,
  }) : super._(
          id: id,
          term: term,
        );

  @override
  Terms copyWith({
    Object? id = _Undefined,
    String? term,
  }) {
    return Terms(
      id: id is int? ? id : this.id,
      term: term ?? this.term,
    );
  }
}

class TermsTable extends _i1.Table {
  TermsTable({super.tableRelation}) : super(tableName: 'terms') {
    term = _i1.ColumnString(
      'term',
      this,
    );
  }

  late final _i1.ColumnString term;

  @override
  List<_i1.Column> get columns => [
        id,
        term,
      ];
}

class TermsInclude extends _i1.IncludeObject {
  TermsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Terms.t;
}

class TermsIncludeList extends _i1.IncludeList {
  TermsIncludeList._({
    _i1.WhereExpressionBuilder<TermsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Terms.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Terms.t;
}

class TermsRepository {
  const TermsRepository._();

  Future<List<Terms>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TermsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Terms>(
      where: where?.call(Terms.t),
      orderBy: orderBy?.call(Terms.t),
      orderByList: orderByList?.call(Terms.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Terms?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? offset,
    _i1.OrderByBuilder<TermsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TermsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Terms>(
      where: where?.call(Terms.t),
      orderBy: orderBy?.call(Terms.t),
      orderByList: orderByList?.call(Terms.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Terms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Terms>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Terms>> insert(
    _i1.Session session,
    List<Terms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Terms>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Terms> insertRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Terms>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Terms>> update(
    _i1.Session session,
    List<Terms> rows, {
    _i1.ColumnSelections<TermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Terms>(
      rows,
      columns: columns?.call(Terms.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Terms> updateRow(
    _i1.Session session,
    Terms row, {
    _i1.ColumnSelections<TermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Terms>(
      row,
      columns: columns?.call(Terms.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Terms>> delete(
    _i1.Session session,
    List<Terms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Terms>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Terms> deleteRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Terms>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Terms>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TermsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Terms>(
      where: where(Terms.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Terms>(
      where: where?.call(Terms.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
