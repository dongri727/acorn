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

abstract class People implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  People._({
    this.id,
    required this.person,
  });

  factory People({
    int? id,
    required String person,
  }) = _PeopleImpl;

  factory People.fromJson(Map<String, dynamic> jsonSerialization) {
    return People(
      id: jsonSerialization['id'] as int?,
      person: jsonSerialization['person'] as String,
    );
  }

  static final t = PeopleTable();

  static const db = PeopleRepository._();

  @override
  int? id;

  String person;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [People]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  People copyWith({
    int? id,
    String? person,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'People',
      if (id != null) 'id': id,
      'person': person,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'People',
      if (id != null) 'id': id,
      'person': person,
    };
  }

  static PeopleInclude include() {
    return PeopleInclude._();
  }

  static PeopleIncludeList includeList({
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    PeopleInclude? include,
  }) {
    return PeopleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(People.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(People.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PeopleImpl extends People {
  _PeopleImpl({
    int? id,
    required String person,
  }) : super._(
         id: id,
         person: person,
       );

  /// Returns a shallow copy of this [People]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  People copyWith({
    Object? id = _Undefined,
    String? person,
  }) {
    return People(
      id: id is int? ? id : this.id,
      person: person ?? this.person,
    );
  }
}

class PeopleUpdateTable extends _i1.UpdateTable<PeopleTable> {
  PeopleUpdateTable(super.table);

  _i1.ColumnValue<String, String> person(String value) => _i1.ColumnValue(
    table.person,
    value,
  );
}

class PeopleTable extends _i1.Table<int?> {
  PeopleTable({super.tableRelation}) : super(tableName: 'people') {
    updateTable = PeopleUpdateTable(this);
    person = _i1.ColumnString(
      'person',
      this,
    );
  }

  late final PeopleUpdateTable updateTable;

  late final _i1.ColumnString person;

  @override
  List<_i1.Column> get columns => [
    id,
    person,
  ];
}

class PeopleInclude extends _i1.IncludeObject {
  PeopleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => People.t;
}

class PeopleIncludeList extends _i1.IncludeList {
  PeopleIncludeList._({
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(People.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => People.t;
}

class PeopleRepository {
  const PeopleRepository._();

  /// Returns a list of [People]s matching the given query parameters.
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
  Future<List<People>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<People>(
      where: where?.call(People.t),
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [People] matching the given query parameters.
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
  Future<People?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<People>(
      where: where?.call(People.t),
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [People] by its [id] or null if no such row exists.
  Future<People?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<People>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [People]s in the list and returns the inserted rows.
  ///
  /// The returned [People]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<People>> insert(
    _i1.Session session,
    List<People> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<People>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [People] and returns the inserted row.
  ///
  /// The returned [People] will have its `id` field set.
  Future<People> insertRow(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<People>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [People]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<People>> update(
    _i1.Session session,
    List<People> rows, {
    _i1.ColumnSelections<PeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<People>(
      rows,
      columns: columns?.call(People.t),
      transaction: transaction,
    );
  }

  /// Updates a single [People]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<People> updateRow(
    _i1.Session session,
    People row, {
    _i1.ColumnSelections<PeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<People>(
      row,
      columns: columns?.call(People.t),
      transaction: transaction,
    );
  }

  /// Updates a single [People] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<People?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PeopleUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<People>(
      id,
      columnValues: columnValues(People.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [People]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<People>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PeopleUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PeopleTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<People>(
      columnValues: columnValues(People.t.updateTable),
      where: where(People.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [People]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<People>> delete(
    _i1.Session session,
    List<People> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<People>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [People].
  Future<People> deleteRow(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<People>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<People>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<People>(
      where: where(People.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<People>(
      where: where?.call(People.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
