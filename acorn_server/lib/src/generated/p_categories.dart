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

abstract class PrincipalCategories
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalCategories._({
    this.id,
    required this.principalId,
    required this.categoryId,
  });

  factory PrincipalCategories({
    int? id,
    required int principalId,
    required int categoryId,
  }) = _PrincipalCategoriesImpl;

  factory PrincipalCategories.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalCategories(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      categoryId: jsonSerialization['categoryId'] as int,
    );
  }

  static final t = PrincipalCategoriesTable();

  static const db = PrincipalCategoriesRepository._();

  @override
  int? id;

  int principalId;

  int categoryId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalCategories]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalCategories copyWith({
    int? id,
    int? principalId,
    int? categoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
    };
  }

  static PrincipalCategoriesInclude include() {
    return PrincipalCategoriesInclude._();
  }

  static PrincipalCategoriesIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCategoriesTable>? orderByList,
    PrincipalCategoriesInclude? include,
  }) {
    return PrincipalCategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalCategories.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalCategories.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalCategoriesImpl extends PrincipalCategories {
  _PrincipalCategoriesImpl({
    int? id,
    required int principalId,
    required int categoryId,
  }) : super._(
          id: id,
          principalId: principalId,
          categoryId: categoryId,
        );

  /// Returns a shallow copy of this [PrincipalCategories]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalCategories copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? categoryId,
  }) {
    return PrincipalCategories(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

class PrincipalCategoriesTable extends _i1.Table<int?> {
  PrincipalCategoriesTable({super.tableRelation})
      : super(tableName: 'principal_categories') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt categoryId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        categoryId,
      ];
}

class PrincipalCategoriesInclude extends _i1.IncludeObject {
  PrincipalCategoriesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalCategories.t;
}

class PrincipalCategoriesIncludeList extends _i1.IncludeList {
  PrincipalCategoriesIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalCategories.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalCategories.t;
}

class PrincipalCategoriesRepository {
  const PrincipalCategoriesRepository._();

  /// Returns a list of [PrincipalCategories]s matching the given query parameters.
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
  Future<List<PrincipalCategories>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCategoriesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      orderBy: orderBy?.call(PrincipalCategories.t),
      orderByList: orderByList?.call(PrincipalCategories.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalCategories] matching the given query parameters.
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
  Future<PrincipalCategories?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalCategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCategoriesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      orderBy: orderBy?.call(PrincipalCategories.t),
      orderByList: orderByList?.call(PrincipalCategories.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalCategories] by its [id] or null if no such row exists.
  Future<PrincipalCategories?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalCategories>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalCategories]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalCategories]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalCategories>> insert(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalCategories>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalCategories] and returns the inserted row.
  ///
  /// The returned [PrincipalCategories] will have its `id` field set.
  Future<PrincipalCategories> insertRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalCategories>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalCategories]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalCategories>> update(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.ColumnSelections<PrincipalCategoriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalCategories>(
      rows,
      columns: columns?.call(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalCategories]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalCategories> updateRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.ColumnSelections<PrincipalCategoriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalCategories>(
      row,
      columns: columns?.call(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalCategories]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalCategories>> delete(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCategories>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalCategories].
  Future<PrincipalCategories> deleteRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalCategories>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalCategories>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalCategories>(
      where: where(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
