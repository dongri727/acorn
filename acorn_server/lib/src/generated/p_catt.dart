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

abstract class PrincipalCatt
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalCatt._({
    this.id,
    required this.principalId,
    required this.cattId,
  });

  factory PrincipalCatt({
    int? id,
    required int principalId,
    required int cattId,
  }) = _PrincipalCattImpl;

  factory PrincipalCatt.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalCatt(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      cattId: jsonSerialization['cattId'] as int,
    );
  }

  static final t = PrincipalCattTable();

  static const db = PrincipalCattRepository._();

  @override
  int? id;

  int principalId;

  int cattId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalCatt]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalCatt copyWith({
    int? id,
    int? principalId,
    int? cattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  static PrincipalCattInclude include() {
    return PrincipalCattInclude._();
  }

  static PrincipalCattIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    PrincipalCattInclude? include,
  }) {
    return PrincipalCattIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalCatt.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalCattImpl extends PrincipalCatt {
  _PrincipalCattImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  /// Returns a shallow copy of this [PrincipalCatt]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalCatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return PrincipalCatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}

class PrincipalCattTable extends _i1.Table<int?> {
  PrincipalCattTable({super.tableRelation})
      : super(tableName: 'principal_catt') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    cattId = _i1.ColumnInt(
      'cattId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt cattId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        cattId,
      ];
}

class PrincipalCattInclude extends _i1.IncludeObject {
  PrincipalCattInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalCatt.t;
}

class PrincipalCattIncludeList extends _i1.IncludeList {
  PrincipalCattIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalCatt.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalCatt.t;
}

class PrincipalCattRepository {
  const PrincipalCattRepository._();

  /// Returns a list of [PrincipalCatt]s matching the given query parameters.
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
  Future<List<PrincipalCatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderByList: orderByList?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalCatt] matching the given query parameters.
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
  Future<PrincipalCatt?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderByList: orderByList?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalCatt] by its [id] or null if no such row exists.
  Future<PrincipalCatt?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalCatt>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalCatt]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalCatt]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalCatt>> insert(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalCatt>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalCatt] and returns the inserted row.
  ///
  /// The returned [PrincipalCatt] will have its `id` field set.
  Future<PrincipalCatt> insertRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalCatt>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalCatt]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalCatt>> update(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.ColumnSelections<PrincipalCattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalCatt>(
      rows,
      columns: columns?.call(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalCatt]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalCatt> updateRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.ColumnSelections<PrincipalCattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalCatt>(
      row,
      columns: columns?.call(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalCatt]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalCatt>> delete(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCatt>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalCatt].
  Future<PrincipalCatt> deleteRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalCatt>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalCatt>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalCatt>(
      where: where(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
