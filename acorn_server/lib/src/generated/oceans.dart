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

abstract class Oceans implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Oceans._({
    this.id,
    required this.ocean,
  });

  factory Oceans({
    int? id,
    required String ocean,
  }) = _OceansImpl;

  factory Oceans.fromJson(Map<String, dynamic> jsonSerialization) {
    return Oceans(
      id: jsonSerialization['id'] as int?,
      ocean: jsonSerialization['ocean'] as String,
    );
  }

  static final t = OceansTable();

  static const db = OceansRepository._();

  @override
  int? id;

  String ocean;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Oceans]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Oceans copyWith({
    int? id,
    String? ocean,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Oceans',
      if (id != null) 'id': id,
      'ocean': ocean,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Oceans',
      if (id != null) 'id': id,
      'ocean': ocean,
    };
  }

  static OceansInclude include() {
    return OceansInclude._();
  }

  static OceansIncludeList includeList({
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    OceansInclude? include,
  }) {
    return OceansIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Oceans.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Oceans.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OceansImpl extends Oceans {
  _OceansImpl({
    int? id,
    required String ocean,
  }) : super._(
         id: id,
         ocean: ocean,
       );

  /// Returns a shallow copy of this [Oceans]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Oceans copyWith({
    Object? id = _Undefined,
    String? ocean,
  }) {
    return Oceans(
      id: id is int? ? id : this.id,
      ocean: ocean ?? this.ocean,
    );
  }
}

class OceansUpdateTable extends _i1.UpdateTable<OceansTable> {
  OceansUpdateTable(super.table);

  _i1.ColumnValue<String, String> ocean(String value) => _i1.ColumnValue(
    table.ocean,
    value,
  );
}

class OceansTable extends _i1.Table<int?> {
  OceansTable({super.tableRelation}) : super(tableName: 'oceans') {
    updateTable = OceansUpdateTable(this);
    ocean = _i1.ColumnString(
      'ocean',
      this,
    );
  }

  late final OceansUpdateTable updateTable;

  late final _i1.ColumnString ocean;

  @override
  List<_i1.Column> get columns => [
    id,
    ocean,
  ];
}

class OceansInclude extends _i1.IncludeObject {
  OceansInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Oceans.t;
}

class OceansIncludeList extends _i1.IncludeList {
  OceansIncludeList._({
    _i1.WhereExpressionBuilder<OceansTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Oceans.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Oceans.t;
}

class OceansRepository {
  const OceansRepository._();

  /// Returns a list of [Oceans]s matching the given query parameters.
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
  Future<List<Oceans>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Oceans>(
      where: where?.call(Oceans.t),
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Oceans] matching the given query parameters.
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
  Future<Oceans?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Oceans>(
      where: where?.call(Oceans.t),
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Oceans] by its [id] or null if no such row exists.
  Future<Oceans?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Oceans>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Oceans]s in the list and returns the inserted rows.
  ///
  /// The returned [Oceans]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Oceans>> insert(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Oceans>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Oceans] and returns the inserted row.
  ///
  /// The returned [Oceans] will have its `id` field set.
  Future<Oceans> insertRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Oceans>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Oceans]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Oceans>> update(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.ColumnSelections<OceansTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Oceans>(
      rows,
      columns: columns?.call(Oceans.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Oceans]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Oceans> updateRow(
    _i1.Session session,
    Oceans row, {
    _i1.ColumnSelections<OceansTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Oceans>(
      row,
      columns: columns?.call(Oceans.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Oceans] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Oceans?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<OceansUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Oceans>(
      id,
      columnValues: columnValues(Oceans.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Oceans]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Oceans>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<OceansUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<OceansTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Oceans>(
      columnValues: columnValues(Oceans.t.updateTable),
      where: where(Oceans.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Oceans]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Oceans>> delete(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Oceans>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Oceans].
  Future<Oceans> deleteRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Oceans>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Oceans>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OceansTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Oceans>(
      where: where(Oceans.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Oceans>(
      where: where?.call(Oceans.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
