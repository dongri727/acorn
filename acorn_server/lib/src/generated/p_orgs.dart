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

abstract class PrincipalOrgs
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PrincipalOrgs._({
    this.id,
    required this.principalId,
    required this.orgId,
  });

  factory PrincipalOrgs({
    int? id,
    required int principalId,
    required int orgId,
  }) = _PrincipalOrgsImpl;

  factory PrincipalOrgs.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalOrgs(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      orgId: jsonSerialization['orgId'] as int,
    );
  }

  static final t = PrincipalOrgsTable();

  static const db = PrincipalOrgsRepository._();

  @override
  int? id;

  int principalId;

  int orgId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PrincipalOrgs]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrincipalOrgs copyWith({
    int? id,
    int? principalId,
    int? orgId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'orgId': orgId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'orgId': orgId,
    };
  }

  static PrincipalOrgsInclude include() {
    return PrincipalOrgsInclude._();
  }

  static PrincipalOrgsIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalOrgsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalOrgsTable>? orderByList,
    PrincipalOrgsInclude? include,
  }) {
    return PrincipalOrgsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalOrgs.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalOrgs.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalOrgsImpl extends PrincipalOrgs {
  _PrincipalOrgsImpl({
    int? id,
    required int principalId,
    required int orgId,
  }) : super._(
          id: id,
          principalId: principalId,
          orgId: orgId,
        );

  /// Returns a shallow copy of this [PrincipalOrgs]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrincipalOrgs copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? orgId,
  }) {
    return PrincipalOrgs(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      orgId: orgId ?? this.orgId,
    );
  }
}

class PrincipalOrgsTable extends _i1.Table<int?> {
  PrincipalOrgsTable({super.tableRelation})
      : super(tableName: 'principal_orgs') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    orgId = _i1.ColumnInt(
      'orgId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt orgId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        orgId,
      ];
}

class PrincipalOrgsInclude extends _i1.IncludeObject {
  PrincipalOrgsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrincipalOrgs.t;
}

class PrincipalOrgsIncludeList extends _i1.IncludeList {
  PrincipalOrgsIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalOrgs.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrincipalOrgs.t;
}

class PrincipalOrgsRepository {
  const PrincipalOrgsRepository._();

  /// Returns a list of [PrincipalOrgs]s matching the given query parameters.
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
  Future<List<PrincipalOrgs>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalOrgsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalOrgsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalOrgs>(
      where: where?.call(PrincipalOrgs.t),
      orderBy: orderBy?.call(PrincipalOrgs.t),
      orderByList: orderByList?.call(PrincipalOrgs.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrincipalOrgs] matching the given query parameters.
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
  Future<PrincipalOrgs?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalOrgsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalOrgsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalOrgs>(
      where: where?.call(PrincipalOrgs.t),
      orderBy: orderBy?.call(PrincipalOrgs.t),
      orderByList: orderByList?.call(PrincipalOrgs.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrincipalOrgs] by its [id] or null if no such row exists.
  Future<PrincipalOrgs?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalOrgs>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrincipalOrgs]s in the list and returns the inserted rows.
  ///
  /// The returned [PrincipalOrgs]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrincipalOrgs>> insert(
    _i1.Session session,
    List<PrincipalOrgs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalOrgs>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrincipalOrgs] and returns the inserted row.
  ///
  /// The returned [PrincipalOrgs] will have its `id` field set.
  Future<PrincipalOrgs> insertRow(
    _i1.Session session,
    PrincipalOrgs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalOrgs>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrincipalOrgs]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrincipalOrgs>> update(
    _i1.Session session,
    List<PrincipalOrgs> rows, {
    _i1.ColumnSelections<PrincipalOrgsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalOrgs>(
      rows,
      columns: columns?.call(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrincipalOrgs]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrincipalOrgs> updateRow(
    _i1.Session session,
    PrincipalOrgs row, {
    _i1.ColumnSelections<PrincipalOrgsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalOrgs>(
      row,
      columns: columns?.call(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PrincipalOrgs]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrincipalOrgs>> delete(
    _i1.Session session,
    List<PrincipalOrgs> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalOrgs>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrincipalOrgs].
  Future<PrincipalOrgs> deleteRow(
    _i1.Session session,
    PrincipalOrgs row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalOrgs>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrincipalOrgs>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalOrgsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalOrgs>(
      where: where(PrincipalOrgs.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalOrgsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalOrgs>(
      where: where?.call(PrincipalOrgs.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
