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

abstract class Places implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Places._({
    this.id,
    required this.place,
    required this.country,
  });

  factory Places({
    int? id,
    required String place,
    required String country,
  }) = _PlacesImpl;

  factory Places.fromJson(Map<String, dynamic> jsonSerialization) {
    return Places(
      id: jsonSerialization['id'] as int?,
      place: jsonSerialization['place'] as String,
      country: jsonSerialization['country'] as String,
    );
  }

  static final t = PlacesTable();

  static const db = PlacesRepository._();

  @override
  int? id;

  String place;

  String country;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Places]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Places copyWith({
    int? id,
    String? place,
    String? country,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Places',
      if (id != null) 'id': id,
      'place': place,
      'country': country,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Places',
      if (id != null) 'id': id,
      'place': place,
      'country': country,
    };
  }

  static PlacesInclude include() {
    return PlacesInclude._();
  }

  static PlacesIncludeList includeList({
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    PlacesInclude? include,
  }) {
    return PlacesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Places.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Places.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlacesImpl extends Places {
  _PlacesImpl({
    int? id,
    required String place,
    required String country,
  }) : super._(
         id: id,
         place: place,
         country: country,
       );

  /// Returns a shallow copy of this [Places]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Places copyWith({
    Object? id = _Undefined,
    String? place,
    String? country,
  }) {
    return Places(
      id: id is int? ? id : this.id,
      place: place ?? this.place,
      country: country ?? this.country,
    );
  }
}

class PlacesUpdateTable extends _i1.UpdateTable<PlacesTable> {
  PlacesUpdateTable(super.table);

  _i1.ColumnValue<String, String> place(String value) => _i1.ColumnValue(
    table.place,
    value,
  );

  _i1.ColumnValue<String, String> country(String value) => _i1.ColumnValue(
    table.country,
    value,
  );
}

class PlacesTable extends _i1.Table<int?> {
  PlacesTable({super.tableRelation}) : super(tableName: 'places') {
    updateTable = PlacesUpdateTable(this);
    place = _i1.ColumnString(
      'place',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
  }

  late final PlacesUpdateTable updateTable;

  late final _i1.ColumnString place;

  late final _i1.ColumnString country;

  @override
  List<_i1.Column> get columns => [
    id,
    place,
    country,
  ];
}

class PlacesInclude extends _i1.IncludeObject {
  PlacesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Places.t;
}

class PlacesIncludeList extends _i1.IncludeList {
  PlacesIncludeList._({
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Places.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Places.t;
}

class PlacesRepository {
  const PlacesRepository._();

  /// Returns a list of [Places]s matching the given query parameters.
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
  Future<List<Places>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Places>(
      where: where?.call(Places.t),
      orderBy: orderBy?.call(Places.t),
      orderByList: orderByList?.call(Places.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Places] matching the given query parameters.
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
  Future<Places?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Places>(
      where: where?.call(Places.t),
      orderBy: orderBy?.call(Places.t),
      orderByList: orderByList?.call(Places.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Places] by its [id] or null if no such row exists.
  Future<Places?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Places>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Places]s in the list and returns the inserted rows.
  ///
  /// The returned [Places]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Places>> insert(
    _i1.Session session,
    List<Places> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Places>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Places] and returns the inserted row.
  ///
  /// The returned [Places] will have its `id` field set.
  Future<Places> insertRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Places>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Places]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Places>> update(
    _i1.Session session,
    List<Places> rows, {
    _i1.ColumnSelections<PlacesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Places>(
      rows,
      columns: columns?.call(Places.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Places]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Places> updateRow(
    _i1.Session session,
    Places row, {
    _i1.ColumnSelections<PlacesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Places>(
      row,
      columns: columns?.call(Places.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Places] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Places?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PlacesUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Places>(
      id,
      columnValues: columnValues(Places.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Places]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Places>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PlacesUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PlacesTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Places>(
      columnValues: columnValues(Places.t.updateTable),
      where: where(Places.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Places.t),
      orderByList: orderByList?.call(Places.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Places]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Places>> delete(
    _i1.Session session,
    List<Places> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Places>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Places].
  Future<Places> deleteRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Places>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Places>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlacesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Places>(
      where: where(Places.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Places>(
      where: where?.call(Places.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
