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

abstract class Stars implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Stars._({
    this.id,
    required this.star,
    required this.area,
  });

  factory Stars({
    int? id,
    required String star,
    required String area,
  }) = _StarsImpl;

  factory Stars.fromJson(Map<String, dynamic> jsonSerialization) {
    return Stars(
      id: jsonSerialization['id'] as int?,
      star: jsonSerialization['star'] as String,
      area: jsonSerialization['area'] as String,
    );
  }

  static final t = StarsTable();

  static const db = StarsRepository._();

  @override
  int? id;

  String star;

  String area;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Stars]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Stars copyWith({
    int? id,
    String? star,
    String? area,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Stars',
      if (id != null) 'id': id,
      'star': star,
      'area': area,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Stars',
      if (id != null) 'id': id,
      'star': star,
      'area': area,
    };
  }

  static StarsInclude include() {
    return StarsInclude._();
  }

  static StarsIncludeList includeList({
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    StarsInclude? include,
  }) {
    return StarsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Stars.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Stars.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StarsImpl extends Stars {
  _StarsImpl({
    int? id,
    required String star,
    required String area,
  }) : super._(
         id: id,
         star: star,
         area: area,
       );

  /// Returns a shallow copy of this [Stars]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Stars copyWith({
    Object? id = _Undefined,
    String? star,
    String? area,
  }) {
    return Stars(
      id: id is int? ? id : this.id,
      star: star ?? this.star,
      area: area ?? this.area,
    );
  }
}

class StarsUpdateTable extends _i1.UpdateTable<StarsTable> {
  StarsUpdateTable(super.table);

  _i1.ColumnValue<String, String> star(String value) => _i1.ColumnValue(
    table.star,
    value,
  );

  _i1.ColumnValue<String, String> area(String value) => _i1.ColumnValue(
    table.area,
    value,
  );
}

class StarsTable extends _i1.Table<int?> {
  StarsTable({super.tableRelation}) : super(tableName: 'stars') {
    updateTable = StarsUpdateTable(this);
    star = _i1.ColumnString(
      'star',
      this,
    );
    area = _i1.ColumnString(
      'area',
      this,
    );
  }

  late final StarsUpdateTable updateTable;

  late final _i1.ColumnString star;

  late final _i1.ColumnString area;

  @override
  List<_i1.Column> get columns => [
    id,
    star,
    area,
  ];
}

class StarsInclude extends _i1.IncludeObject {
  StarsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Stars.t;
}

class StarsIncludeList extends _i1.IncludeList {
  StarsIncludeList._({
    _i1.WhereExpressionBuilder<StarsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Stars.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Stars.t;
}

class StarsRepository {
  const StarsRepository._();

  /// Returns a list of [Stars]s matching the given query parameters.
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
  Future<List<Stars>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Stars>(
      where: where?.call(Stars.t),
      orderBy: orderBy?.call(Stars.t),
      orderByList: orderByList?.call(Stars.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Stars] matching the given query parameters.
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
  Future<Stars?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Stars>(
      where: where?.call(Stars.t),
      orderBy: orderBy?.call(Stars.t),
      orderByList: orderByList?.call(Stars.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Stars] by its [id] or null if no such row exists.
  Future<Stars?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Stars>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Stars]s in the list and returns the inserted rows.
  ///
  /// The returned [Stars]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Stars>> insert(
    _i1.Session session,
    List<Stars> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Stars>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Stars] and returns the inserted row.
  ///
  /// The returned [Stars] will have its `id` field set.
  Future<Stars> insertRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Stars>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Stars]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Stars>> update(
    _i1.Session session,
    List<Stars> rows, {
    _i1.ColumnSelections<StarsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Stars>(
      rows,
      columns: columns?.call(Stars.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Stars]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Stars> updateRow(
    _i1.Session session,
    Stars row, {
    _i1.ColumnSelections<StarsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Stars>(
      row,
      columns: columns?.call(Stars.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Stars] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Stars?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<StarsUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Stars>(
      id,
      columnValues: columnValues(Stars.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Stars]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Stars>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<StarsUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<StarsTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Stars>(
      columnValues: columnValues(Stars.t.updateTable),
      where: where(Stars.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Stars.t),
      orderByList: orderByList?.call(Stars.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Stars]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Stars>> delete(
    _i1.Session session,
    List<Stars> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Stars>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Stars].
  Future<Stars> deleteRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Stars>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Stars>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Stars>(
      where: where(Stars.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Stars>(
      where: where?.call(Stars.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
