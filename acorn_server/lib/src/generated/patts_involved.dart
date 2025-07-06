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

abstract class PattsInvolved
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PattsInvolved._({
    this.id,
    required this.principalId,
    required this.pattId,
  });

  factory PattsInvolved({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PattsInvolvedImpl;

  factory PattsInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return PattsInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      pattId: jsonSerialization['pattId'] as int,
    );
  }

  static final t = PattsInvolvedTable();

  static const db = PattsInvolvedRepository._();

  @override
  int? id;

  int principalId;

  int pattId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PattsInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PattsInvolved copyWith({
    int? id,
    int? principalId,
    int? pattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  static PattsInvolvedInclude include() {
    return PattsInvolvedInclude._();
  }

  static PattsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PattsInvolvedTable>? orderByList,
    PattsInvolvedInclude? include,
  }) {
    return PattsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PattsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PattsInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PattsInvolvedImpl extends PattsInvolved {
  _PattsInvolvedImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
          id: id,
          principalId: principalId,
          pattId: pattId,
        );

  /// Returns a shallow copy of this [PattsInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}

class PattsInvolvedTable extends _i1.Table<int?> {
  PattsInvolvedTable({super.tableRelation})
      : super(tableName: 'patts_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    pattId = _i1.ColumnInt(
      'pattId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt pattId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        pattId,
      ];
}

class PattsInvolvedInclude extends _i1.IncludeObject {
  PattsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PattsInvolved.t;
}

class PattsInvolvedIncludeList extends _i1.IncludeList {
  PattsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PattsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PattsInvolved.t;
}

class PattsInvolvedRepository {
  const PattsInvolvedRepository._();

  /// Returns a list of [PattsInvolved]s matching the given query parameters.
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
  Future<List<PattsInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PattsInvolved>(
      where: where?.call(PattsInvolved.t),
      orderBy: orderBy?.call(PattsInvolved.t),
      orderByList: orderByList?.call(PattsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PattsInvolved] matching the given query parameters.
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
  Future<PattsInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<PattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PattsInvolved>(
      where: where?.call(PattsInvolved.t),
      orderBy: orderBy?.call(PattsInvolved.t),
      orderByList: orderByList?.call(PattsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PattsInvolved] by its [id] or null if no such row exists.
  Future<PattsInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PattsInvolved>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PattsInvolved]s in the list and returns the inserted rows.
  ///
  /// The returned [PattsInvolved]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PattsInvolved>> insert(
    _i1.Session session,
    List<PattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PattsInvolved] and returns the inserted row.
  ///
  /// The returned [PattsInvolved] will have its `id` field set.
  Future<PattsInvolved> insertRow(
    _i1.Session session,
    PattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PattsInvolved]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PattsInvolved>> update(
    _i1.Session session,
    List<PattsInvolved> rows, {
    _i1.ColumnSelections<PattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PattsInvolved>(
      rows,
      columns: columns?.call(PattsInvolved.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PattsInvolved]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PattsInvolved> updateRow(
    _i1.Session session,
    PattsInvolved row, {
    _i1.ColumnSelections<PattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PattsInvolved>(
      row,
      columns: columns?.call(PattsInvolved.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PattsInvolved]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PattsInvolved>> delete(
    _i1.Session session,
    List<PattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PattsInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PattsInvolved].
  Future<PattsInvolved> deleteRow(
    _i1.Session session,
    PattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PattsInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PattsInvolved>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PattsInvolved>(
      where: where(PattsInvolved.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PattsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PattsInvolved>(
      where: where?.call(PattsInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
