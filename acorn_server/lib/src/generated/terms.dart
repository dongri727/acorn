/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Terms extends _i1.TableRow {
  Terms._({
    int? id,
    required this.term,
  }) : super(id);

  factory Terms({
    int? id,
    required String term,
  }) = _TermsImpl;

  factory Terms.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Terms(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      term: serializationManager.deserialize<String>(jsonSerialization['term']),
    );
  }

  static final t = TermsTable();

  static const db = TermsRepository._();

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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'term': term,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'term': term,
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
      case 'term':
        term = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Terms>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Terms>(
      where: where != null ? where(Terms.t) : null,
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
  static Future<Terms?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Terms>(
      where: where != null ? where(Terms.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Terms?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Terms>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TermsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Terms>(
      where: where(Terms.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Terms row, {
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
    Terms row, {
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
    Terms row, {
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
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Terms>(
      where: where != null ? where(Terms.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use TermsTable.t instead.')
TermsTable tTerms = TermsTable();

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
    return session.dbNext.find<Terms>(
      where: where?.call(Terms.t),
      orderBy: orderBy?.call(Terms.t),
      orderByList: orderByList?.call(Terms.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
    return session.dbNext.findFirstRow<Terms>(
      where: where?.call(Terms.t),
      orderBy: orderBy?.call(Terms.t),
      orderByList: orderByList?.call(Terms.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Terms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Terms>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Terms>> insert(
    _i1.Session session,
    List<Terms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Terms>(
      rows,
      transaction: transaction,
    );
  }

  Future<Terms> insertRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Terms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Terms>> update(
    _i1.Session session,
    List<Terms> rows, {
    _i1.ColumnSelections<TermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Terms>(
      rows,
      columns: columns?.call(Terms.t),
      transaction: transaction,
    );
  }

  Future<Terms> updateRow(
    _i1.Session session,
    Terms row, {
    _i1.ColumnSelections<TermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Terms>(
      row,
      columns: columns?.call(Terms.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Terms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Terms>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Terms>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TermsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Terms>(
      where: where(Terms.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Terms>(
      where: where?.call(Terms.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
