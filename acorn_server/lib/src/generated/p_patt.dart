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

abstract class PrincipalPatt
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalPatt._({
    this.id,
    required this.principalId,
    required this.pattId,
  });

  factory PrincipalPatt({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PrincipalPattImpl;

  factory PrincipalPatt.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalPatt(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      pattId: jsonSerialization['pattId'] as int,
    );
  }

  static final t = PrincipalPattTable();

  static const db = PrincipalPattRepository._();

  @override
  int? id;

  int principalId;

  int pattId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalPatt]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalPatt copyWith({
    int? id,
    int? principalId,
    int? pattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrincipalPatt',
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PrincipalPatt',
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  static PrincipalPattInclude include() {
    return PrincipalPattInclude._();
  }

  static PrincipalPattIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    PrincipalPattInclude? include,
  }) {
    return PrincipalPattIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalPatt.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalPattImpl extends PrincipalPatt {
  _PrincipalPattImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
         id: id,
         principalId: principalId,
         pattId: pattId,
       );

  /// Returns a shallow copy of this [PrincipalPatt]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalPatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PrincipalPatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}

class PrincipalPattUpdateTable extends _i1.UpdateTable<PrincipalPattTable> {
  PrincipalPattUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> pattId(int value) => _i1.ColumnValue(
    table.pattId,
    value,
  );
}

class PrincipalPattTable extends _i1.Table<int?> {
  PrincipalPattTable({super.tableRelation})
    : super(tableName: 'principal_patt') {
    updateTable = PrincipalPattUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    pattId = _i1.ColumnInt(
      'pattId',
      this,
    );
  }

  late final PrincipalPattUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt pattId;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    pattId,
  ];
}

class PrincipalPattInclude extends _i1.IncludeObject {
  PrincipalPattInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalPatt.t;
}

class PrincipalPattIncludeList extends _i1.IncludeList {
  PrincipalPattIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalPatt.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalPatt.t;
}

class PrincipalPattRepository {
  const PrincipalPattRepository._();

  /// Returns a list of [PrincipalPatt]s matching the given query parameters.
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
  Future<List<PrincipalPatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalPatt] matching the given query parameters.
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
  Future<PrincipalPatt?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalPatt] by its [id] or null if no such row exists.
  Future<PrincipalPatt?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalPatt>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalPatt]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalPatt]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalPatt>> insert(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalPatt>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalPatt] and returns the inserted row.
  ///
  /// The returned [PrincipalPatt] will have its `id` field set.
  Future<PrincipalPatt> insertRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalPatt>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalPatt]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalPatt>> update(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.ColumnSelections<PrincipalPattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalPatt>(
      rows,
      columns: columns?.call(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalPatt]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalPatt> updateRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.ColumnSelections<PrincipalPattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalPatt>(
      row,
      columns: columns?.call(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalPatt] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PrincipalPatt?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrincipalPattUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PrincipalPatt>(
      id,
      columnValues: columnValues(PrincipalPatt.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalPatt]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PrincipalPatt>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrincipalPattUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PrincipalPattTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PrincipalPatt>(
      columnValues: columnValues(PrincipalPatt.t.updateTable),
      where: where(PrincipalPatt.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalPatt]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalPatt>> delete(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPatt>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalPatt].
  Future<PrincipalPatt> deleteRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalPatt>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalPatt>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalPatt>(
      where: where(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
