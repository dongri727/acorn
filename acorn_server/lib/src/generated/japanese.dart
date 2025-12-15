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

abstract class Japanese
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Japanese._({
    this.id,
    required this.principalId,
    required this.japaneseName,
  });

  factory Japanese({
    int? id,
    required int principalId,
    required String japaneseName,
  }) = _JapaneseImpl;

  factory Japanese.fromJson(Map<String, dynamic> jsonSerialization) {
    return Japanese(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      japaneseName: jsonSerialization['japaneseName'] as String,
    );
  }

  static final t = JapaneseTable();

  static const db = JapaneseRepository._();

  @override
  int? id;

  int principalId;

  String japaneseName;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Japanese]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Japanese copyWith({
    int? id,
    int? principalId,
    String? japaneseName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Japanese',
      if (id != null) 'id': id,
      'principalId': principalId,
      'japaneseName': japaneseName,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Japanese',
      if (id != null) 'id': id,
      'principalId': principalId,
      'japaneseName': japaneseName,
    };
  }

  static JapaneseInclude include() {
    return JapaneseInclude._();
  }

  static JapaneseIncludeList includeList({
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    JapaneseInclude? include,
  }) {
    return JapaneseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Japanese.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Japanese.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _JapaneseImpl extends Japanese {
  _JapaneseImpl({
    int? id,
    required int principalId,
    required String japaneseName,
  }) : super._(
         id: id,
         principalId: principalId,
         japaneseName: japaneseName,
       );

  /// Returns a shallow copy of this [Japanese]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Japanese copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? japaneseName,
  }) {
    return Japanese(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      japaneseName: japaneseName ?? this.japaneseName,
    );
  }
}

class JapaneseUpdateTable extends _i1.UpdateTable<JapaneseTable> {
  JapaneseUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<String, String> japaneseName(String value) => _i1.ColumnValue(
    table.japaneseName,
    value,
  );
}

class JapaneseTable extends _i1.Table<int?> {
  JapaneseTable({super.tableRelation}) : super(tableName: 'japanese') {
    updateTable = JapaneseUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    japaneseName = _i1.ColumnString(
      'japaneseName',
      this,
    );
  }

  late final JapaneseUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString japaneseName;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    japaneseName,
  ];
}

class JapaneseInclude extends _i1.IncludeObject {
  JapaneseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Japanese.t;
}

class JapaneseIncludeList extends _i1.IncludeList {
  JapaneseIncludeList._({
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Japanese.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Japanese.t;
}

class JapaneseRepository {
  const JapaneseRepository._();

  /// Returns a list of [Japanese]s matching the given query parameters.
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
  Future<List<Japanese>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Japanese>(
      where: where?.call(Japanese.t),
      orderBy: orderBy?.call(Japanese.t),
      orderByList: orderByList?.call(Japanese.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Japanese] matching the given query parameters.
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
  Future<Japanese?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Japanese>(
      where: where?.call(Japanese.t),
      orderBy: orderBy?.call(Japanese.t),
      orderByList: orderByList?.call(Japanese.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Japanese] by its [id] or null if no such row exists.
  Future<Japanese?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Japanese>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Japanese]s in the list and returns the inserted rows.
  ///
  /// The returned [Japanese]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Japanese>> insert(
    _i1.Session session,
    List<Japanese> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Japanese>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Japanese] and returns the inserted row.
  ///
  /// The returned [Japanese] will have its `id` field set.
  Future<Japanese> insertRow(
    _i1.Session session,
    Japanese row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Japanese>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Japanese]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Japanese>> update(
    _i1.Session session,
    List<Japanese> rows, {
    _i1.ColumnSelections<JapaneseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Japanese>(
      rows,
      columns: columns?.call(Japanese.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Japanese]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Japanese> updateRow(
    _i1.Session session,
    Japanese row, {
    _i1.ColumnSelections<JapaneseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Japanese>(
      row,
      columns: columns?.call(Japanese.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Japanese] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Japanese?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<JapaneseUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Japanese>(
      id,
      columnValues: columnValues(Japanese.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Japanese]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Japanese>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<JapaneseUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<JapaneseTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Japanese>(
      columnValues: columnValues(Japanese.t.updateTable),
      where: where(Japanese.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Japanese.t),
      orderByList: orderByList?.call(Japanese.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Japanese]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Japanese>> delete(
    _i1.Session session,
    List<Japanese> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Japanese>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Japanese].
  Future<Japanese> deleteRow(
    _i1.Session session,
    Japanese row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Japanese>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Japanese>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<JapaneseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Japanese>(
      where: where(Japanese.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Japanese>(
      where: where?.call(Japanese.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
