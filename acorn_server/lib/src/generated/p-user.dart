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

abstract class PrincipalUser
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalUser._({
    this.id,
    required this.principalId,
    required this.userId,
  });

  factory PrincipalUser({
    int? id,
    required int principalId,
    required int userId,
  }) = _PrincipalUserImpl;

  factory PrincipalUser.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalUser(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      userId: jsonSerialization['userId'] as int,
    );
  }

  static final t = PrincipalUserTable();

  static const db = PrincipalUserRepository._();

  @override
  int? id;

  int principalId;

  int userId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalUser]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalUser copyWith({
    int? id,
    int? principalId,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrincipalUser',
      if (id != null) 'id': id,
      'principalId': principalId,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PrincipalUser',
      if (id != null) 'id': id,
      'principalId': principalId,
      'userId': userId,
    };
  }

  static PrincipalUserInclude include() {
    return PrincipalUserInclude._();
  }

  static PrincipalUserIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    PrincipalUserInclude? include,
  }) {
    return PrincipalUserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalUser.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalUserImpl extends PrincipalUser {
  _PrincipalUserImpl({
    int? id,
    required int principalId,
    required int userId,
  }) : super._(
         id: id,
         principalId: principalId,
         userId: userId,
       );

  /// Returns a shallow copy of this [PrincipalUser]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalUser copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? userId,
  }) {
    return PrincipalUser(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      userId: userId ?? this.userId,
    );
  }
}

class PrincipalUserUpdateTable extends _i1.UpdateTable<PrincipalUserTable> {
  PrincipalUserUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );
}

class PrincipalUserTable extends _i1.Table<int?> {
  PrincipalUserTable({super.tableRelation})
    : super(tableName: 'principal_user') {
    updateTable = PrincipalUserUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final PrincipalUserUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt userId;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    userId,
  ];
}

class PrincipalUserInclude extends _i1.IncludeObject {
  PrincipalUserInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalUser.t;
}

class PrincipalUserIncludeList extends _i1.IncludeList {
  PrincipalUserIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalUser.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalUser.t;
}

class PrincipalUserRepository {
  const PrincipalUserRepository._();

  /// Returns a list of [PrincipalUser]s matching the given query parameters.
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
  Future<List<PrincipalUser>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      orderBy: orderBy?.call(PrincipalUser.t),
      orderByList: orderByList?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalUser] matching the given query parameters.
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
  Future<PrincipalUser?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      orderBy: orderBy?.call(PrincipalUser.t),
      orderByList: orderByList?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalUser] by its [id] or null if no such row exists.
  Future<PrincipalUser?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalUser>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalUser]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalUser]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalUser>> insert(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalUser>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalUser] and returns the inserted row.
  ///
  /// The returned [PrincipalUser] will have its `id` field set.
  Future<PrincipalUser> insertRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalUser>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalUser]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalUser>> update(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.ColumnSelections<PrincipalUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalUser>(
      rows,
      columns: columns?.call(PrincipalUser.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalUser]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalUser> updateRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.ColumnSelections<PrincipalUserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalUser>(
      row,
      columns: columns?.call(PrincipalUser.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalUser] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PrincipalUser?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrincipalUserUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PrincipalUser>(
      id,
      columnValues: columnValues(PrincipalUser.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalUser]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PrincipalUser>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrincipalUserUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PrincipalUserTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalUserTable>? orderBy,
    _i1.OrderByListBuilder<PrincipalUserTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PrincipalUser>(
      columnValues: columnValues(PrincipalUser.t.updateTable),
      where: where(PrincipalUser.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalUser.t),
      orderByList: orderByList?.call(PrincipalUser.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalUser]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalUser>> delete(
    _i1.Session session,
    List<PrincipalUser> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalUser>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalUser].
  Future<PrincipalUser> deleteRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalUser>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalUser>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalUserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalUser>(
      where: where(PrincipalUser.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalUserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalUser>(
      where: where?.call(PrincipalUser.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
