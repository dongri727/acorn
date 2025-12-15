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

abstract class StarsInvolved
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StarsInvolved._({
    this.id,
    required this.principalId,
    required this.starId,
  });

  factory StarsInvolved({
    int? id,
    required int principalId,
    required int starId,
  }) = _StarsInvolvedImpl;

  factory StarsInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return StarsInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      starId: jsonSerialization['starId'] as int,
    );
  }

  static final t = StarsInvolvedTable();

  static const db = StarsInvolvedRepository._();

  @override
  int? id;

  int principalId;

  int starId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StarsInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StarsInvolved copyWith({
    int? id,
    int? principalId,
    int? starId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StarsInvolved',
      if (id != null) 'id': id,
      'principalId': principalId,
      'starId': starId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StarsInvolved',
      if (id != null) 'id': id,
      'principalId': principalId,
      'starId': starId,
    };
  }

  static StarsInvolvedInclude include() {
    return StarsInvolvedInclude._();
  }

  static StarsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    StarsInvolvedInclude? include,
  }) {
    return StarsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StarsInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StarsInvolvedImpl extends StarsInvolved {
  _StarsInvolvedImpl({
    int? id,
    required int principalId,
    required int starId,
  }) : super._(
         id: id,
         principalId: principalId,
         starId: starId,
       );

  /// Returns a shallow copy of this [StarsInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StarsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? starId,
  }) {
    return StarsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      starId: starId ?? this.starId,
    );
  }
}

class StarsInvolvedUpdateTable extends _i1.UpdateTable<StarsInvolvedTable> {
  StarsInvolvedUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> starId(int value) => _i1.ColumnValue(
    table.starId,
    value,
  );
}

class StarsInvolvedTable extends _i1.Table<int?> {
  StarsInvolvedTable({super.tableRelation})
    : super(tableName: 'stars_involved') {
    updateTable = StarsInvolvedUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    starId = _i1.ColumnInt(
      'starId',
      this,
    );
  }

  late final StarsInvolvedUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt starId;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    starId,
  ];
}

class StarsInvolvedInclude extends _i1.IncludeObject {
  StarsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StarsInvolved.t;
}

class StarsInvolvedIncludeList extends _i1.IncludeList {
  StarsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StarsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StarsInvolved.t;
}

class StarsInvolvedRepository {
  const StarsInvolvedRepository._();

  /// Returns a list of [StarsInvolved]s matching the given query parameters.
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
  Future<List<StarsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [StarsInvolved] matching the given query parameters.
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
  Future<StarsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [StarsInvolved] by its [id] or null if no such row exists.
  Future<StarsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<StarsInvolved>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [StarsInvolved]s in the list and returns the inserted rows.
  ///
  /// The returned [StarsInvolved]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<StarsInvolved>> insert(
    _i1.Session session,
    List<StarsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<StarsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [StarsInvolved] and returns the inserted row.
  ///
  /// The returned [StarsInvolved] will have its `id` field set.
  Future<StarsInvolved> insertRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StarsInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StarsInvolved]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StarsInvolved>> update(
    _i1.Session session,
    List<StarsInvolved> rows, {
    _i1.ColumnSelections<StarsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StarsInvolved>(
      rows,
      columns: columns?.call(StarsInvolved.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StarsInvolved]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StarsInvolved> updateRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.ColumnSelections<StarsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StarsInvolved>(
      row,
      columns: columns?.call(StarsInvolved.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StarsInvolved] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StarsInvolved?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<StarsInvolvedUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StarsInvolved>(
      id,
      columnValues: columnValues(StarsInvolved.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StarsInvolved]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StarsInvolved>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<StarsInvolvedUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<StarsInvolvedTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StarsInvolved>(
      columnValues: columnValues(StarsInvolved.t.updateTable),
      where: where(StarsInvolved.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StarsInvolved]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StarsInvolved>> delete(
    _i1.Session session,
    List<StarsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StarsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StarsInvolved].
  Future<StarsInvolved> deleteRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StarsInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StarsInvolved>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StarsInvolved>(
      where: where(StarsInvolved.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
