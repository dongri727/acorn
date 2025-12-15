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

abstract class Pays implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Pays._({
    this.id,
    required this.pays,
    required this.combien,
  });

  factory Pays({
    int? id,
    required String pays,
    required int combien,
  }) = _PaysImpl;

  factory Pays.fromJson(Map<String, dynamic> jsonSerialization) {
    return Pays(
      id: jsonSerialization['id'] as int?,
      pays: jsonSerialization['pays'] as String,
      combien: jsonSerialization['combien'] as int,
    );
  }

  static final t = PaysTable();

  static const db = PaysRepository._();

  @override
  int? id;

  String pays;

  int combien;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Pays]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Pays copyWith({
    int? id,
    String? pays,
    int? combien,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Pays',
      if (id != null) 'id': id,
      'pays': pays,
      'combien': combien,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Pays',
      if (id != null) 'id': id,
      'pays': pays,
      'combien': combien,
    };
  }

  static PaysInclude include() {
    return PaysInclude._();
  }

  static PaysIncludeList includeList({
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    PaysInclude? include,
  }) {
    return PaysIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Pays.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Pays.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaysImpl extends Pays {
  _PaysImpl({
    int? id,
    required String pays,
    required int combien,
  }) : super._(
         id: id,
         pays: pays,
         combien: combien,
       );

  /// Returns a shallow copy of this [Pays]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Pays copyWith({
    Object? id = _Undefined,
    String? pays,
    int? combien,
  }) {
    return Pays(
      id: id is int? ? id : this.id,
      pays: pays ?? this.pays,
      combien: combien ?? this.combien,
    );
  }
}

class PaysUpdateTable extends _i1.UpdateTable<PaysTable> {
  PaysUpdateTable(super.table);

  _i1.ColumnValue<String, String> pays(String value) => _i1.ColumnValue(
    table.pays,
    value,
  );

  _i1.ColumnValue<int, int> combien(int value) => _i1.ColumnValue(
    table.combien,
    value,
  );
}

class PaysTable extends _i1.Table<int?> {
  PaysTable({super.tableRelation}) : super(tableName: 'pays') {
    updateTable = PaysUpdateTable(this);
    pays = _i1.ColumnString(
      'pays',
      this,
    );
    combien = _i1.ColumnInt(
      'combien',
      this,
    );
  }

  late final PaysUpdateTable updateTable;

  late final _i1.ColumnString pays;

  late final _i1.ColumnInt combien;

  @override
  List<_i1.Column> get columns => [
    id,
    pays,
    combien,
  ];
}

class PaysInclude extends _i1.IncludeObject {
  PaysInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Pays.t;
}

class PaysIncludeList extends _i1.IncludeList {
  PaysIncludeList._({
    _i1.WhereExpressionBuilder<PaysTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Pays.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Pays.t;
}

class PaysRepository {
  const PaysRepository._();

  /// Returns a list of [Pays]s matching the given query parameters.
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
  Future<List<Pays>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Pays>(
      where: where?.call(Pays.t),
      orderBy: orderBy?.call(Pays.t),
      orderByList: orderByList?.call(Pays.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Pays] matching the given query parameters.
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
  Future<Pays?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Pays>(
      where: where?.call(Pays.t),
      orderBy: orderBy?.call(Pays.t),
      orderByList: orderByList?.call(Pays.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Pays] by its [id] or null if no such row exists.
  Future<Pays?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Pays>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Pays]s in the list and returns the inserted rows.
  ///
  /// The returned [Pays]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Pays>> insert(
    _i1.Session session,
    List<Pays> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Pays>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Pays] and returns the inserted row.
  ///
  /// The returned [Pays] will have its `id` field set.
  Future<Pays> insertRow(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Pays>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Pays]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Pays>> update(
    _i1.Session session,
    List<Pays> rows, {
    _i1.ColumnSelections<PaysTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Pays>(
      rows,
      columns: columns?.call(Pays.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Pays]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Pays> updateRow(
    _i1.Session session,
    Pays row, {
    _i1.ColumnSelections<PaysTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Pays>(
      row,
      columns: columns?.call(Pays.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Pays] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Pays?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PaysUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Pays>(
      id,
      columnValues: columnValues(Pays.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Pays]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Pays>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PaysUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PaysTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Pays>(
      columnValues: columnValues(Pays.t.updateTable),
      where: where(Pays.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Pays.t),
      orderByList: orderByList?.call(Pays.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Pays]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Pays>> delete(
    _i1.Session session,
    List<Pays> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Pays>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Pays].
  Future<Pays> deleteRow(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Pays>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Pays>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PaysTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Pays>(
      where: where(Pays.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Pays>(
      where: where?.call(Pays.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
