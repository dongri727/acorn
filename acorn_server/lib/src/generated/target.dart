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

abstract class Target implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Target._({
    this.id,
    required this.specialite,
    required this.detailId,
  });

  factory Target({
    int? id,
    required String specialite,
    required int detailId,
  }) = _TargetImpl;

  factory Target.fromJson(Map<String, dynamic> jsonSerialization) {
    return Target(
      id: jsonSerialization['id'] as int?,
      specialite: jsonSerialization['specialite'] as String,
      detailId: jsonSerialization['detailId'] as int,
    );
  }

  static final t = TargetTable();

  static const db = TargetRepository._();

  @override
  int? id;

  String specialite;

  int detailId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Target]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Target copyWith({
    int? id,
    String? specialite,
    int? detailId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'specialite': specialite,
      'detailId': detailId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'specialite': specialite,
      'detailId': detailId,
    };
  }

  static TargetInclude include() {
    return TargetInclude._();
  }

  static TargetIncludeList includeList({
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TargetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TargetTable>? orderByList,
    TargetInclude? include,
  }) {
    return TargetIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Target.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Target.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TargetImpl extends Target {
  _TargetImpl({
    int? id,
    required String specialite,
    required int detailId,
  }) : super._(
          id: id,
          specialite: specialite,
          detailId: detailId,
        );

  /// Returns a shallow copy of this [Target]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Target copyWith({
    Object? id = _Undefined,
    String? specialite,
    int? detailId,
  }) {
    return Target(
      id: id is int? ? id : this.id,
      specialite: specialite ?? this.specialite,
      detailId: detailId ?? this.detailId,
    );
  }
}

class TargetTable extends _i1.Table<int?> {
  TargetTable({super.tableRelation}) : super(tableName: 'target') {
    specialite = _i1.ColumnString(
      'specialite',
      this,
    );
    detailId = _i1.ColumnInt(
      'detailId',
      this,
    );
  }

  late final _i1.ColumnString specialite;

  late final _i1.ColumnInt detailId;

  @override
  List<_i1.Column> get columns => [
        id,
        specialite,
        detailId,
      ];
}

class TargetInclude extends _i1.IncludeObject {
  TargetInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Target.t;
}

class TargetIncludeList extends _i1.IncludeList {
  TargetIncludeList._({
    _i1.WhereExpressionBuilder<TargetTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Target.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Target.t;
}

class TargetRepository {
  const TargetRepository._();

  /// Returns a list of [Target]s matching the given query parameters.
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
  Future<List<Target>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TargetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TargetTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Target>(
      where: where?.call(Target.t),
      orderBy: orderBy?.call(Target.t),
      orderByList: orderByList?.call(Target.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Target] matching the given query parameters.
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
  Future<Target?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? offset,
    _i1.OrderByBuilder<TargetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TargetTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Target>(
      where: where?.call(Target.t),
      orderBy: orderBy?.call(Target.t),
      orderByList: orderByList?.call(Target.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Target] by its [id] or null if no such row exists.
  Future<Target?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Target>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Target]s in the list and returns the inserted rows.
  ///
  /// The returned [Target]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Target>> insert(
    _i1.Session session,
    List<Target> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Target>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Target] and returns the inserted row.
  ///
  /// The returned [Target] will have its `id` field set.
  Future<Target> insertRow(
    _i1.Session session,
    Target row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Target>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Target]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Target>> update(
    _i1.Session session,
    List<Target> rows, {
    _i1.ColumnSelections<TargetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Target>(
      rows,
      columns: columns?.call(Target.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Target]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Target> updateRow(
    _i1.Session session,
    Target row, {
    _i1.ColumnSelections<TargetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Target>(
      row,
      columns: columns?.call(Target.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Target]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Target>> delete(
    _i1.Session session,
    List<Target> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Target>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Target].
  Future<Target> deleteRow(
    _i1.Session session,
    Target row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Target>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Target>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TargetTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Target>(
      where: where(Target.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Target>(
      where: where?.call(Target.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
