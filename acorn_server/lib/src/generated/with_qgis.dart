/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class WithQgis
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  WithQgis._({
    this.id,
    required this.principalId,
    required this.name,
    required this.geo,
    required this.year,
  });

  factory WithQgis({
    int? id,
    required int principalId,
    required String name,
    required String geo,
    required String year,
  }) = _WithQgisImpl;

  factory WithQgis.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithQgis(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      name: jsonSerialization['name'] as String,
      geo: jsonSerialization['geo'] as String,
      year: jsonSerialization['year'] as String,
    );
  }

  static final t = WithQgisTable();

  static const db = WithQgisRepository._();

  @override
  int? id;

  int principalId;

  String name;

  String geo;

  String year;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [WithQgis]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  WithQgis copyWith({
    int? id,
    int? principalId,
    String? name,
    String? geo,
    String? year,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'name': name,
      'geo': geo,
      'year': year,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'name': name,
      'geo': geo,
      'year': year,
    };
  }

  static WithQgisInclude include() {
    return WithQgisInclude._();
  }

  static WithQgisIncludeList includeList({
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithQgisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithQgisTable>? orderByList,
    WithQgisInclude? include,
  }) {
    return WithQgisIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WithQgis.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WithQgis.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WithQgisImpl extends WithQgis {
  _WithQgisImpl({
    int? id,
    required int principalId,
    required String name,
    required String geo,
    required String year,
  }) : super._(
          id: id,
          principalId: principalId,
          name: name,
          geo: geo,
          year: year,
        );

  /// Returns a shallow copy of this [WithQgis]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  WithQgis copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? name,
    String? geo,
    String? year,
  }) {
    return WithQgis(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      name: name ?? this.name,
      geo: geo ?? this.geo,
      year: year ?? this.year,
    );
  }
}

class WithQgisTable extends _i1.Table<int?> {
  WithQgisTable({super.tableRelation}) : super(tableName: 'with_qgis') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    geo = _i1.ColumnString(
      'geo',
      this,
    );
    year = _i1.ColumnString(
      'year',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString geo;

  late final _i1.ColumnString year;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        name,
        geo,
        year,
      ];
}

class WithQgisInclude extends _i1.IncludeObject {
  WithQgisInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => WithQgis.t;
}

class WithQgisIncludeList extends _i1.IncludeList {
  WithQgisIncludeList._({
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WithQgis.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => WithQgis.t;
}

class WithQgisRepository {
  const WithQgisRepository._();

  /// Returns a list of [WithQgis]s matching the given query parameters.
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
  Future<List<WithQgis>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithQgisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithQgisTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WithQgis>(
      where: where?.call(WithQgis.t),
      orderBy: orderBy?.call(WithQgis.t),
      orderByList: orderByList?.call(WithQgis.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [WithQgis] matching the given query parameters.
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
  Future<WithQgis?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? offset,
    _i1.OrderByBuilder<WithQgisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithQgisTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<WithQgis>(
      where: where?.call(WithQgis.t),
      orderBy: orderBy?.call(WithQgis.t),
      orderByList: orderByList?.call(WithQgis.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [WithQgis] by its [id] or null if no such row exists.
  Future<WithQgis?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<WithQgis>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [WithQgis]s in the list and returns the inserted rows.
  ///
  /// The returned [WithQgis]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<WithQgis>> insert(
    _i1.Session session,
    List<WithQgis> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<WithQgis>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [WithQgis] and returns the inserted row.
  ///
  /// The returned [WithQgis] will have its `id` field set.
  Future<WithQgis> insertRow(
    _i1.Session session,
    WithQgis row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<WithQgis>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [WithQgis]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<WithQgis>> update(
    _i1.Session session,
    List<WithQgis> rows, {
    _i1.ColumnSelections<WithQgisTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<WithQgis>(
      rows,
      columns: columns?.call(WithQgis.t),
      transaction: transaction,
    );
  }

  /// Updates a single [WithQgis]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<WithQgis> updateRow(
    _i1.Session session,
    WithQgis row, {
    _i1.ColumnSelections<WithQgisTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<WithQgis>(
      row,
      columns: columns?.call(WithQgis.t),
      transaction: transaction,
    );
  }

  /// Deletes all [WithQgis]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<WithQgis>> delete(
    _i1.Session session,
    List<WithQgis> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WithQgis>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [WithQgis].
  Future<WithQgis> deleteRow(
    _i1.Session session,
    WithQgis row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WithQgis>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<WithQgis>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WithQgisTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<WithQgis>(
      where: where(WithQgis.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WithQgis>(
      where: where?.call(WithQgis.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
