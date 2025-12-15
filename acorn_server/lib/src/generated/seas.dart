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

abstract class Seas implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Seas._({
    this.id,
    required this.sea,
    required this.area,
  });

  factory Seas({
    int? id,
    required String sea,
    required String area,
  }) = _SeasImpl;

  factory Seas.fromJson(Map<String, dynamic> jsonSerialization) {
    return Seas(
      id: jsonSerialization['id'] as int?,
      sea: jsonSerialization['sea'] as String,
      area: jsonSerialization['area'] as String,
    );
  }

  static final t = SeasTable();

  static const db = SeasRepository._();

  @override
  int? id;

  String sea;

  String area;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Seas]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Seas copyWith({
    int? id,
    String? sea,
    String? area,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Seas',
      if (id != null) 'id': id,
      'sea': sea,
      'area': area,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Seas',
      if (id != null) 'id': id,
      'sea': sea,
      'area': area,
    };
  }

  static SeasInclude include() {
    return SeasInclude._();
  }

  static SeasIncludeList includeList({
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    SeasInclude? include,
  }) {
    return SeasIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Seas.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Seas.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SeasImpl extends Seas {
  _SeasImpl({
    int? id,
    required String sea,
    required String area,
  }) : super._(
         id: id,
         sea: sea,
         area: area,
       );

  /// Returns a shallow copy of this [Seas]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Seas copyWith({
    Object? id = _Undefined,
    String? sea,
    String? area,
  }) {
    return Seas(
      id: id is int? ? id : this.id,
      sea: sea ?? this.sea,
      area: area ?? this.area,
    );
  }
}

class SeasUpdateTable extends _i1.UpdateTable<SeasTable> {
  SeasUpdateTable(super.table);

  _i1.ColumnValue<String, String> sea(String value) => _i1.ColumnValue(
    table.sea,
    value,
  );

  _i1.ColumnValue<String, String> area(String value) => _i1.ColumnValue(
    table.area,
    value,
  );
}

class SeasTable extends _i1.Table<int?> {
  SeasTable({super.tableRelation}) : super(tableName: 'seas') {
    updateTable = SeasUpdateTable(this);
    sea = _i1.ColumnString(
      'sea',
      this,
    );
    area = _i1.ColumnString(
      'area',
      this,
    );
  }

  late final SeasUpdateTable updateTable;

  late final _i1.ColumnString sea;

  late final _i1.ColumnString area;

  @override
  List<_i1.Column> get columns => [
    id,
    sea,
    area,
  ];
}

class SeasInclude extends _i1.IncludeObject {
  SeasInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Seas.t;
}

class SeasIncludeList extends _i1.IncludeList {
  SeasIncludeList._({
    _i1.WhereExpressionBuilder<SeasTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Seas.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Seas.t;
}

class SeasRepository {
  const SeasRepository._();

  /// Returns a list of [Seas]s matching the given query parameters.
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
  Future<List<Seas>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Seas>(
      where: where?.call(Seas.t),
      orderBy: orderBy?.call(Seas.t),
      orderByList: orderByList?.call(Seas.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Seas] matching the given query parameters.
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
  Future<Seas?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Seas>(
      where: where?.call(Seas.t),
      orderBy: orderBy?.call(Seas.t),
      orderByList: orderByList?.call(Seas.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Seas] by its [id] or null if no such row exists.
  Future<Seas?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Seas>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Seas]s in the list and returns the inserted rows.
  ///
  /// The returned [Seas]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Seas>> insert(
    _i1.Session session,
    List<Seas> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Seas>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Seas] and returns the inserted row.
  ///
  /// The returned [Seas] will have its `id` field set.
  Future<Seas> insertRow(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Seas>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Seas]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Seas>> update(
    _i1.Session session,
    List<Seas> rows, {
    _i1.ColumnSelections<SeasTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Seas>(
      rows,
      columns: columns?.call(Seas.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Seas]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Seas> updateRow(
    _i1.Session session,
    Seas row, {
    _i1.ColumnSelections<SeasTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Seas>(
      row,
      columns: columns?.call(Seas.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Seas] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Seas?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SeasUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Seas>(
      id,
      columnValues: columnValues(Seas.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Seas]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Seas>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SeasUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SeasTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Seas>(
      columnValues: columnValues(Seas.t.updateTable),
      where: where(Seas.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Seas.t),
      orderByList: orderByList?.call(Seas.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Seas]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Seas>> delete(
    _i1.Session session,
    List<Seas> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Seas>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Seas].
  Future<Seas> deleteRow(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Seas>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Seas>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SeasTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Seas>(
      where: where(Seas.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Seas>(
      where: where?.call(Seas.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
