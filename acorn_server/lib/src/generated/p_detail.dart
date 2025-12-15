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

abstract class PrincipalDetail
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalDetail._({
    this.id,
    required this.principalId,
    required this.detailId,
  });

  factory PrincipalDetail({
    int? id,
    required int principalId,
    required int detailId,
  }) = _PrincipalDetailImpl;

  factory PrincipalDetail.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalDetail(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      detailId: jsonSerialization['detailId'] as int,
    );
  }

  static final t = PrincipalDetailTable();

  static const db = PrincipalDetailRepository._();

  @override
  int? id;

  int principalId;

  int detailId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalDetail]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalDetail copyWith({
    int? id,
    int? principalId,
    int? detailId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrincipalDetail',
      if (id != null) 'id': id,
      'principalId': principalId,
      'detailId': detailId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PrincipalDetail',
      if (id != null) 'id': id,
      'principalId': principalId,
      'detailId': detailId,
    };
  }

  static PrincipalDetailInclude include() {
    return PrincipalDetailInclude._();
  }

  static PrincipalDetailIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    PrincipalDetailInclude? include,
  }) {
    return PrincipalDetailIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalDetail.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalDetailImpl extends PrincipalDetail {
  _PrincipalDetailImpl({
    int? id,
    required int principalId,
    required int detailId,
  }) : super._(
         id: id,
         principalId: principalId,
         detailId: detailId,
       );

  /// Returns a shallow copy of this [PrincipalDetail]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalDetail copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? detailId,
  }) {
    return PrincipalDetail(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      detailId: detailId ?? this.detailId,
    );
  }
}

class PrincipalDetailUpdateTable extends _i1.UpdateTable<PrincipalDetailTable> {
  PrincipalDetailUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> detailId(int value) => _i1.ColumnValue(
    table.detailId,
    value,
  );
}

class PrincipalDetailTable extends _i1.Table<int?> {
  PrincipalDetailTable({super.tableRelation})
    : super(tableName: 'principal_detail') {
    updateTable = PrincipalDetailUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    detailId = _i1.ColumnInt(
      'detailId',
      this,
    );
  }

  late final PrincipalDetailUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt detailId;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    detailId,
  ];
}

class PrincipalDetailInclude extends _i1.IncludeObject {
  PrincipalDetailInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalDetail.t;
}

class PrincipalDetailIncludeList extends _i1.IncludeList {
  PrincipalDetailIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalDetail.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalDetail.t;
}

class PrincipalDetailRepository {
  const PrincipalDetailRepository._();

  /// Returns a list of [PrincipalDetail]s matching the given query parameters.
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
  Future<List<PrincipalDetail>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalDetail>(
      where: where?.call(PrincipalDetail.t),
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderByList: orderByList?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalDetail] matching the given query parameters.
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
  Future<PrincipalDetail?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalDetail>(
      where: where?.call(PrincipalDetail.t),
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderByList: orderByList?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalDetail] by its [id] or null if no such row exists.
  Future<PrincipalDetail?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalDetail>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalDetail]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalDetail]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalDetail>> insert(
    _i1.Session session,
    List<PrincipalDetail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalDetail>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalDetail] and returns the inserted row.
  ///
  /// The returned [PrincipalDetail] will have its `id` field set.
  Future<PrincipalDetail> insertRow(
    _i1.Session session,
    PrincipalDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalDetail>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalDetail]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalDetail>> update(
    _i1.Session session,
    List<PrincipalDetail> rows, {
    _i1.ColumnSelections<PrincipalDetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalDetail>(
      rows,
      columns: columns?.call(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalDetail]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalDetail> updateRow(
    _i1.Session session,
    PrincipalDetail row, {
    _i1.ColumnSelections<PrincipalDetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalDetail>(
      row,
      columns: columns?.call(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalDetail] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PrincipalDetail?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrincipalDetailUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PrincipalDetail>(
      id,
      columnValues: columnValues(PrincipalDetail.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalDetail]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PrincipalDetail>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrincipalDetailUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<PrincipalDetailTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalDetailTable>? orderBy,
    _i1.OrderByListBuilder<PrincipalDetailTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PrincipalDetail>(
      columnValues: columnValues(PrincipalDetail.t.updateTable),
      where: where(PrincipalDetail.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalDetail.t),
      orderByList: orderByList?.call(PrincipalDetail.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalDetail]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalDetail>> delete(
    _i1.Session session,
    List<PrincipalDetail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalDetail>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalDetail].
  Future<PrincipalDetail> deleteRow(
    _i1.Session session,
    PrincipalDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalDetail>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalDetail>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalDetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalDetail>(
      where: where(PrincipalDetail.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalDetailTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalDetail>(
      where: where?.call(PrincipalDetail.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
