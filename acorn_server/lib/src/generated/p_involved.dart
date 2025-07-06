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

abstract class PlaceInvolved
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PlaceInvolved._({
    this.id,
    required this.principalId,
    required this.placeId,
  });

  factory PlaceInvolved({
    int? id,
    required int principalId,
    required int placeId,
  }) = _PlaceInvolvedImpl;

  factory PlaceInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlaceInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      placeId: jsonSerialization['placeId'] as int,
    );
  }

  static final t = PlaceInvolvedTable();

  static const db = PlaceInvolvedRepository._();

  @override
  int? id;

  int principalId;

  int placeId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PlaceInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PlaceInvolved copyWith({
    int? id,
    int? principalId,
    int? placeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  static PlaceInvolvedInclude include() {
    return PlaceInvolvedInclude._();
  }

  static PlaceInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceInvolvedTable>? orderByList,
    PlaceInvolvedInclude? include,
  }) {
    return PlaceInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlaceInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PlaceInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlaceInvolvedImpl extends PlaceInvolved {
  _PlaceInvolvedImpl({
    int? id,
    required int principalId,
    required int placeId,
  }) : super._(
          id: id,
          principalId: principalId,
          placeId: placeId,
        );

  /// Returns a shallow copy of this [PlaceInvolved]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PlaceInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? placeId,
  }) {
    return PlaceInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      placeId: placeId ?? this.placeId,
    );
  }
}

class PlaceInvolvedTable extends _i1.Table<int?> {
  PlaceInvolvedTable({super.tableRelation})
      : super(tableName: 'place_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    placeId = _i1.ColumnInt(
      'placeId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt placeId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        placeId,
      ];
}

class PlaceInvolvedInclude extends _i1.IncludeObject {
  PlaceInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PlaceInvolved.t;
}

class PlaceInvolvedIncludeList extends _i1.IncludeList {
  PlaceInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PlaceInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PlaceInvolved.t;
}

class PlaceInvolvedRepository {
  const PlaceInvolvedRepository._();

  /// Returns a list of [PlaceInvolved]s matching the given query parameters.
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
  Future<List<PlaceInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      orderBy: orderBy?.call(PlaceInvolved.t),
      orderByList: orderByList?.call(PlaceInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PlaceInvolved] matching the given query parameters.
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
  Future<PlaceInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlaceInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      orderBy: orderBy?.call(PlaceInvolved.t),
      orderByList: orderByList?.call(PlaceInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PlaceInvolved] by its [id] or null if no such row exists.
  Future<PlaceInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PlaceInvolved>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PlaceInvolved]s in the list and returns the inserted rows.
  ///
  /// The returned [PlaceInvolved]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PlaceInvolved>> insert(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PlaceInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PlaceInvolved] and returns the inserted row.
  ///
  /// The returned [PlaceInvolved] will have its `id` field set.
  Future<PlaceInvolved> insertRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PlaceInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PlaceInvolved]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PlaceInvolved>> update(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.ColumnSelections<PlaceInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PlaceInvolved>(
      rows,
      columns: columns?.call(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlaceInvolved]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PlaceInvolved> updateRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.ColumnSelections<PlaceInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PlaceInvolved>(
      row,
      columns: columns?.call(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PlaceInvolved]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PlaceInvolved>> delete(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PlaceInvolved>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PlaceInvolved].
  Future<PlaceInvolved> deleteRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PlaceInvolved>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PlaceInvolved>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PlaceInvolved>(
      where: where(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
