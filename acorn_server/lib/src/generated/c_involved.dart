/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class CountryInvolved
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  CountryInvolved._({
    this.id,
    required this.principalId,
    required this.paysId,
  });

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

  @override
  int? id;

  int principalId;

  int paysId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [CountryInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CountryInvolved copyWith({
    int? id,
    int? principalId,
    int? paysId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CountryInvolved',
      if (id != null) 'id': id,
      'principalId': principalId,
      'paysId': paysId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CountryInvolved',
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

  /// Returns a shallow copy of this [CountryInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
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

class CountryInvolvedUpdateTable extends _i1.UpdateTable<CountryInvolvedTable> {
  CountryInvolvedUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> paysId(int value) => _i1.ColumnValue(
    table.paysId,
    value,
  );
}

class CountryInvolvedTable extends _i1.Table<int?> {
  CountryInvolvedTable({super.tableRelation})
    : super(tableName: 'country_involved') {
    updateTable = CountryInvolvedUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    paysId = _i1.ColumnInt(
      'paysId',
      this,
    );
  }

  late final CountryInvolvedUpdateTable updateTable;

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
  _i1.Table<int?> get table => CountryInvolved.t;
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
  _i1.Table<int?> get table => CountryInvolved.t;
}

class CountryInvolvedRepository {
  const CountryInvolvedRepository._();

  /// Returns a list of [CountryInvolved]s matching the given query parameters.
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

  /// Returns the first matching [CountryInvolved] matching the given query parameters.
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

  /// Finds a single [CountryInvolved] by its [id] or null if no such row exists.
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

  /// Inserts all [CountryInvolved]s in the list and returns the inserted rows.
  ///
  /// The returned [CountryInvolved]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
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

  /// Inserts a single [CountryInvolved] and returns the inserted row.
  ///
  /// The returned [CountryInvolved] will have its `id` field set.
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

  /// Updates all [CountryInvolved]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
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

  /// Updates a single [CountryInvolved]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
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

  /// Updates a single [CountryInvolved] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CountryInvolved?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<CountryInvolvedUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<CountryInvolved>(
      id,
      columnValues: columnValues(CountryInvolved.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CountryInvolved]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<CountryInvolved>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<CountryInvolvedUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<CountryInvolvedTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryInvolvedTable>? orderBy,
    _i1.OrderByListBuilder<CountryInvolvedTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<CountryInvolved>(
      columnValues: columnValues(CountryInvolved.t.updateTable),
      where: where(CountryInvolved.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CountryInvolved.t),
      orderByList: orderByList?.call(CountryInvolved.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [CountryInvolved]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
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

  /// Deletes a single [CountryInvolved].
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

  /// Deletes all rows matching the [where] expression.
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

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
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
