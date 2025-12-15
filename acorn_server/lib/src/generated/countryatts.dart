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

abstract class Countryatts
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Countryatts._({
    this.id,
    required this.countryatt,
  });

  factory Countryatts({
    int? id,
    required String countryatt,
  }) = _CountryattsImpl;

  factory Countryatts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Countryatts(
      id: jsonSerialization['id'] as int?,
      countryatt: jsonSerialization['countryatt'] as String,
    );
  }

  static final t = CountryattsTable();

  static const db = CountryattsRepository._();

  @override
  int? id;

  String countryatt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Countryatts]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Countryatts copyWith({
    int? id,
    String? countryatt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Countryatts',
      if (id != null) 'id': id,
      'countryatt': countryatt,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Countryatts',
      if (id != null) 'id': id,
      'countryatt': countryatt,
    };
  }

  static CountryattsInclude include() {
    return CountryattsInclude._();
  }

  static CountryattsIncludeList includeList({
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    CountryattsInclude? include,
  }) {
    return CountryattsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Countryatts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Countryatts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CountryattsImpl extends Countryatts {
  _CountryattsImpl({
    int? id,
    required String countryatt,
  }) : super._(
         id: id,
         countryatt: countryatt,
       );

  /// Returns a shallow copy of this [Countryatts]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Countryatts copyWith({
    Object? id = _Undefined,
    String? countryatt,
  }) {
    return Countryatts(
      id: id is int? ? id : this.id,
      countryatt: countryatt ?? this.countryatt,
    );
  }
}

class CountryattsUpdateTable extends _i1.UpdateTable<CountryattsTable> {
  CountryattsUpdateTable(super.table);

  _i1.ColumnValue<String, String> countryatt(String value) => _i1.ColumnValue(
    table.countryatt,
    value,
  );
}

class CountryattsTable extends _i1.Table<int?> {
  CountryattsTable({super.tableRelation}) : super(tableName: 'countryatts') {
    updateTable = CountryattsUpdateTable(this);
    countryatt = _i1.ColumnString(
      'countryatt',
      this,
    );
  }

  late final CountryattsUpdateTable updateTable;

  late final _i1.ColumnString countryatt;

  @override
  List<_i1.Column> get columns => [
    id,
    countryatt,
  ];
}

class CountryattsInclude extends _i1.IncludeObject {
  CountryattsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Countryatts.t;
}

class CountryattsIncludeList extends _i1.IncludeList {
  CountryattsIncludeList._({
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Countryatts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Countryatts.t;
}

class CountryattsRepository {
  const CountryattsRepository._();

  /// Returns a list of [Countryatts]s matching the given query parameters.
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
  Future<List<Countryatts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Countryatts>(
      where: where?.call(Countryatts.t),
      orderBy: orderBy?.call(Countryatts.t),
      orderByList: orderByList?.call(Countryatts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Countryatts] matching the given query parameters.
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
  Future<Countryatts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Countryatts>(
      where: where?.call(Countryatts.t),
      orderBy: orderBy?.call(Countryatts.t),
      orderByList: orderByList?.call(Countryatts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Countryatts] by its [id] or null if no such row exists.
  Future<Countryatts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Countryatts>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Countryatts]s in the list and returns the inserted rows.
  ///
  /// The returned [Countryatts]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Countryatts>> insert(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Countryatts>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Countryatts] and returns the inserted row.
  ///
  /// The returned [Countryatts] will have its `id` field set.
  Future<Countryatts> insertRow(
    _i1.Session session,
    Countryatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Countryatts>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Countryatts]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Countryatts>> update(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.ColumnSelections<CountryattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Countryatts>(
      rows,
      columns: columns?.call(Countryatts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Countryatts]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Countryatts> updateRow(
    _i1.Session session,
    Countryatts row, {
    _i1.ColumnSelections<CountryattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Countryatts>(
      row,
      columns: columns?.call(Countryatts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Countryatts] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Countryatts?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<CountryattsUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Countryatts>(
      id,
      columnValues: columnValues(Countryatts.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Countryatts]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Countryatts>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<CountryattsUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<CountryattsTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Countryatts>(
      columnValues: columnValues(Countryatts.t.updateTable),
      where: where(Countryatts.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Countryatts.t),
      orderByList: orderByList?.call(Countryatts.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Countryatts]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Countryatts>> delete(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Countryatts>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Countryatts].
  Future<Countryatts> deleteRow(
    _i1.Session session,
    Countryatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Countryatts>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Countryatts>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Countryatts>(
      where: where(Countryatts.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Countryatts>(
      where: where?.call(Countryatts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
