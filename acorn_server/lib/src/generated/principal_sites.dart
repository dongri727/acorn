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

abstract class PrincipalSites
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalSites._({
    this.id,
    required this.principalId,
    required this.siteId,
  });

  factory PrincipalSites({
    int? id,
    required int principalId,
    required int siteId,
  }) = _PrincipalSitesImpl;

  factory PrincipalSites.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalSites(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      siteId: jsonSerialization['siteId'] as int,
    );
  }

  static final t = PrincipalSitesTable();

  static const db = PrincipalSitesRepository._();

  @override
  int? id;

  int principalId;

  int siteId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalSites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalSites copyWith({
    int? id,
    int? principalId,
    int? siteId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrincipalSites',
      if (id != null) 'id': id,
      'principalId': principalId,
      'siteId': siteId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PrincipalSites',
      if (id != null) 'id': id,
      'principalId': principalId,
      'siteId': siteId,
    };
  }

  static PrincipalSitesInclude include() {
    return PrincipalSitesInclude._();
  }

  static PrincipalSitesIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    PrincipalSitesInclude? include,
  }) {
    return PrincipalSitesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalSites.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalSitesImpl extends PrincipalSites {
  _PrincipalSitesImpl({
    int? id,
    required int principalId,
    required int siteId,
  }) : super._(
         id: id,
         principalId: principalId,
         siteId: siteId,
       );

  /// Returns a shallow copy of this [PrincipalSites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalSites copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? siteId,
  }) {
    return PrincipalSites(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      siteId: siteId ?? this.siteId,
    );
  }
}

class PrincipalSitesUpdateTable extends _i1.UpdateTable<PrincipalSitesTable> {
  PrincipalSitesUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> siteId(int value) => _i1.ColumnValue(
    table.siteId,
    value,
  );
}

class PrincipalSitesTable extends _i1.Table<int?> {
  PrincipalSitesTable({super.tableRelation})
    : super(tableName: 'principal_sites') {
    updateTable = PrincipalSitesUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    siteId = _i1.ColumnInt(
      'siteId',
      this,
    );
  }

  late final PrincipalSitesUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt siteId;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    siteId,
  ];
}

class PrincipalSitesInclude extends _i1.IncludeObject {
  PrincipalSitesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalSites.t;
}

class PrincipalSitesIncludeList extends _i1.IncludeList {
  PrincipalSitesIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalSites.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalSites.t;
}

class PrincipalSitesRepository {
  const PrincipalSitesRepository._();

  /// Returns a list of [PrincipalSites]s matching the given query parameters.
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
  Future<List<PrincipalSites>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalSites>(
      where: where?.call(PrincipalSites.t),
      orderBy: orderBy?.call(PrincipalSites.t),
      orderByList: orderByList?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalSites] matching the given query parameters.
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
  Future<PrincipalSites?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalSites>(
      where: where?.call(PrincipalSites.t),
      orderBy: orderBy?.call(PrincipalSites.t),
      orderByList: orderByList?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalSites] by its [id] or null if no such row exists.
  Future<PrincipalSites?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalSites>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalSites]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalSites]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalSites>> insert(
    _i1.Session session,
    List<PrincipalSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalSites>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalSites] and returns the inserted row.
  ///
  /// The returned [PrincipalSites] will have its `id` field set.
  Future<PrincipalSites> insertRow(
    _i1.Session session,
    PrincipalSites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalSites>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalSites]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalSites>> update(
    _i1.Session session,
    List<PrincipalSites> rows, {
    _i1.ColumnSelections<PrincipalSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalSites>(
      rows,
      columns: columns?.call(PrincipalSites.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalSites]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalSites> updateRow(
    _i1.Session session,
    PrincipalSites row, {
    _i1.ColumnSelections<PrincipalSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalSites>(
      row,
      columns: columns?.call(PrincipalSites.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalSites] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PrincipalSites?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrincipalSitesUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PrincipalSites>(
      id,
      columnValues: columnValues(PrincipalSites.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalSites]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PrincipalSites>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrincipalSitesUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PrincipalSitesTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PrincipalSites>(
      columnValues: columnValues(PrincipalSites.t.updateTable),
      where: where(PrincipalSites.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalSites.t),
      orderByList: orderByList?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalSites]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalSites>> delete(
    _i1.Session session,
    List<PrincipalSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalSites>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalSites].
  Future<PrincipalSites> deleteRow(
    _i1.Session session,
    PrincipalSites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalSites>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalSites>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalSitesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalSites>(
      where: where(PrincipalSites.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalSites>(
      where: where?.call(PrincipalSites.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
