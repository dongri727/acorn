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

abstract class CattsInvolved
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  CattsInvolved._({
    this.id,
    required this.principalId,
    required this.cattId,
  });

  factory CattsInvolved({
    int? id,
    required int principalId,
    required int cattId,
  }) = _CattsInvolvedImpl;

  factory CattsInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return CattsInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      cattId: jsonSerialization['cattId'] as int,
    );
  }

  static final t = CattsInvolvedTable();

  static const db = CattsInvolvedRepository._();

  @override
  int? id;

  int principalId;

  int cattId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [CattsInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CattsInvolved copyWith({
    int? id,
    int? principalId,
    int? cattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CattsInvolved',
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CattsInvolved',
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  static CattsInvolvedInclude include() {
    return CattsInvolvedInclude._();
  }

  static CattsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    CattsInvolvedInclude? include,
  }) {
    return CattsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CattsInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CattsInvolvedImpl extends CattsInvolved {
  _CattsInvolvedImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
         id: id,
         principalId: principalId,
         cattId: cattId,
       );

  /// Returns a shallow copy of this [CattsInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return CattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}

class CattsInvolvedUpdateTable extends _i1.UpdateTable<CattsInvolvedTable> {
  CattsInvolvedUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> cattId(int value) => _i1.ColumnValue(
    table.cattId,
    value,
  );
}

class CattsInvolvedTable extends _i1.Table<int?> {
  CattsInvolvedTable({super.tableRelation})
    : super(tableName: 'catts_involved') {
    updateTable = CattsInvolvedUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    cattId = _i1.ColumnInt(
      'cattId',
      this,
    );
  }

  late final CattsInvolvedUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt cattId;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    cattId,
  ];
}

class CattsInvolvedInclude extends _i1.IncludeObject {
  CattsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => CattsInvolved.t;
}

class CattsInvolvedIncludeList extends _i1.IncludeList {
  CattsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CattsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => CattsInvolved.t;
}

class CattsInvolvedRepository {
  const CattsInvolvedRepository._();

  /// Returns a list of [CattsInvolved]s matching the given query parameters.
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
  Future<List<CattsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [CattsInvolved] matching the given query parameters.
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
  Future<CattsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [CattsInvolved] by its [id] or null if no such row exists.
  Future<CattsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CattsInvolved>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [CattsInvolved]s in the list and returns the inserted rows.
  ///
  /// The returned [CattsInvolved]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<CattsInvolved>> insert(
    _i1.Session session,
    List<CattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [CattsInvolved] and returns the inserted row.
  ///
  /// The returned [CattsInvolved] will have its `id` field set.
  Future<CattsInvolved> insertRow(
    _i1.Session session,
    CattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [CattsInvolved]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<CattsInvolved>> update(
    _i1.Session session,
    List<CattsInvolved> rows, {
    _i1.ColumnSelections<CattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CattsInvolved>(
      rows,
      columns: columns?.call(CattsInvolved.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CattsInvolved]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CattsInvolved> updateRow(
    _i1.Session session,
    CattsInvolved row, {
    _i1.ColumnSelections<CattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CattsInvolved>(
      row,
      columns: columns?.call(CattsInvolved.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CattsInvolved] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CattsInvolved?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<CattsInvolvedUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<CattsInvolved>(
      id,
      columnValues: columnValues(CattsInvolved.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CattsInvolved]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<CattsInvolved>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<CattsInvolvedUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<CattsInvolvedTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<CattsInvolved>(
      columnValues: columnValues(CattsInvolved.t.updateTable),
      where: where(CattsInvolved.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [CattsInvolved]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<CattsInvolved>> delete(
    _i1.Session session,
    List<CattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [CattsInvolved].
  Future<CattsInvolved> deleteRow(
    _i1.Session session,
    CattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<CattsInvolved>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CattsInvolved>(
      where: where(CattsInvolved.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
