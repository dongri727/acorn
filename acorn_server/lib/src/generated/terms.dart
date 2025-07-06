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

abstract class Terms implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Terms]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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

  /// Returns a shallow copy of this [Terms]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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

class TermsTable extends _i1.Table<int?> {
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
  _i1.Table<int?> get table => Terms.t;
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
  _i1.Table<int?> get table => Terms.t;
}

class TermsRepository {
  const TermsRepository._();

  /// Returns a list of [Terms]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
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
      transaction: transaction,
    );
  }

  /// Returns the first matching [Terms] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
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
      transaction: transaction,
    );
  }

  /// Finds a single [Terms] by its [id] or null if no such row exists.
  Future<Terms?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Terms>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Terms]s in the list and returns the inserted rows.
  ///
  /// The returned [Terms]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Terms>> insert(
    _i1.Session session,
    List<Terms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Terms>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Terms] and returns the inserted row.
  ///
  /// The returned [Terms] will have its `id` field set.
  Future<Terms> insertRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Terms>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Terms]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Terms>> update(
    _i1.Session session,
    List<Terms> rows, {
    _i1.ColumnSelections<TermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Terms>(
      rows,
      columns: columns?.call(Terms.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Terms]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Terms> updateRow(
    _i1.Session session,
    Terms row, {
    _i1.ColumnSelections<TermsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Terms>(
      row,
      columns: columns?.call(Terms.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Terms]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Terms>> delete(
    _i1.Session session,
    List<Terms> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Terms>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Terms].
  Future<Terms> deleteRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Terms>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Terms>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TermsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Terms>(
      where: where(Terms.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TermsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Terms>(
      where: where?.call(Terms.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
