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

abstract class Universe
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Universe._({
    this.id,
    required this.universe,
  });

  factory Universe({
    int? id,
    required String universe,
  }) = _UniverseImpl;

  factory Universe.fromJson(Map<String, dynamic> jsonSerialization) {
    return Universe(
      id: jsonSerialization['id'] as int?,
      universe: jsonSerialization['universe'] as String,
    );
  }

  static final t = UniverseTable();

  static const db = UniverseRepository._();

  @override
  int? id;

  String universe;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Universe]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Universe copyWith({
    int? id,
    String? universe,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Universe',
      if (id != null) 'id': id,
      'universe': universe,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Universe',
      if (id != null) 'id': id,
      'universe': universe,
    };
  }

  static UniverseInclude include() {
    return UniverseInclude._();
  }

  static UniverseIncludeList includeList({
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    UniverseInclude? include,
  }) {
    return UniverseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Universe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Universe.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UniverseImpl extends Universe {
  _UniverseImpl({
    int? id,
    required String universe,
  }) : super._(
         id: id,
         universe: universe,
       );

  /// Returns a shallow copy of this [Universe]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Universe copyWith({
    Object? id = _Undefined,
    String? universe,
  }) {
    return Universe(
      id: id is int? ? id : this.id,
      universe: universe ?? this.universe,
    );
  }
}

class UniverseUpdateTable extends _i1.UpdateTable<UniverseTable> {
  UniverseUpdateTable(super.table);

  _i1.ColumnValue<String, String> universe(String value) => _i1.ColumnValue(
    table.universe,
    value,
  );
}

class UniverseTable extends _i1.Table<int?> {
  UniverseTable({super.tableRelation}) : super(tableName: 'universe') {
    updateTable = UniverseUpdateTable(this);
    universe = _i1.ColumnString(
      'universe',
      this,
    );
  }

  late final UniverseUpdateTable updateTable;

  late final _i1.ColumnString universe;

  @override
  List<_i1.Column> get columns => [
    id,
    universe,
  ];
}

class UniverseInclude extends _i1.IncludeObject {
  UniverseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Universe.t;
}

class UniverseIncludeList extends _i1.IncludeList {
  UniverseIncludeList._({
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Universe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Universe.t;
}

class UniverseRepository {
  const UniverseRepository._();

  /// Returns a list of [Universe]s matching the given query parameters.
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
  Future<List<Universe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Universe>(
      where: where?.call(Universe.t),
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Universe] matching the given query parameters.
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
  Future<Universe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Universe>(
      where: where?.call(Universe.t),
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Universe] by its [id] or null if no such row exists.
  Future<Universe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Universe>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Universe]s in the list and returns the inserted rows.
  ///
  /// The returned [Universe]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Universe>> insert(
    _i1.Session session,
    List<Universe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Universe>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Universe] and returns the inserted row.
  ///
  /// The returned [Universe] will have its `id` field set.
  Future<Universe> insertRow(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Universe>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Universe]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Universe>> update(
    _i1.Session session,
    List<Universe> rows, {
    _i1.ColumnSelections<UniverseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Universe>(
      rows,
      columns: columns?.call(Universe.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Universe]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Universe> updateRow(
    _i1.Session session,
    Universe row, {
    _i1.ColumnSelections<UniverseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Universe>(
      row,
      columns: columns?.call(Universe.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Universe] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Universe?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<UniverseUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Universe>(
      id,
      columnValues: columnValues(Universe.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Universe]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Universe>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<UniverseUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UniverseTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Universe>(
      columnValues: columnValues(Universe.t.updateTable),
      where: where(Universe.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Universe]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Universe>> delete(
    _i1.Session session,
    List<Universe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Universe>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Universe].
  Future<Universe> deleteRow(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Universe>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Universe>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UniverseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Universe>(
      where: where(Universe.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Universe>(
      where: where?.call(Universe.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
