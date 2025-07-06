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

abstract class Placeatts
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Placeatts._({
    this.id,
    required this.placeatt,
  });

  factory Placeatts({
    int? id,
    required String placeatt,
  }) = _PlaceattsImpl;

  factory Placeatts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Placeatts(
      id: jsonSerialization['id'] as int?,
      placeatt: jsonSerialization['placeatt'] as String,
    );
  }

  static final t = PlaceattsTable();

  static const db = PlaceattsRepository._();

  @override
  int? id;

  String placeatt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Placeatts]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Placeatts copyWith({
    int? id,
    String? placeatt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'placeatt': placeatt,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'placeatt': placeatt,
    };
  }

  static PlaceattsInclude include() {
    return PlaceattsInclude._();
  }

  static PlaceattsIncludeList includeList({
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    PlaceattsInclude? include,
  }) {
    return PlaceattsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Placeatts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Placeatts.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlaceattsImpl extends Placeatts {
  _PlaceattsImpl({
    int? id,
    required String placeatt,
  }) : super._(
          id: id,
          placeatt: placeatt,
        );

  /// Returns a shallow copy of this [Placeatts]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Placeatts copyWith({
    Object? id = _Undefined,
    String? placeatt,
  }) {
    return Placeatts(
      id: id is int? ? id : this.id,
      placeatt: placeatt ?? this.placeatt,
    );
  }
}

class PlaceattsTable extends _i1.Table<int?> {
  PlaceattsTable({super.tableRelation}) : super(tableName: 'placeatts') {
    placeatt = _i1.ColumnString(
      'placeatt',
      this,
    );
  }

  late final _i1.ColumnString placeatt;

  @override
  List<_i1.Column> get columns => [
        id,
        placeatt,
      ];
}

class PlaceattsInclude extends _i1.IncludeObject {
  PlaceattsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Placeatts.t;
}

class PlaceattsIncludeList extends _i1.IncludeList {
  PlaceattsIncludeList._({
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Placeatts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Placeatts.t;
}

class PlaceattsRepository {
  const PlaceattsRepository._();

  /// Returns a list of [Placeatts]s matching the given query parameters.
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
  Future<List<Placeatts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Placeatts>(
      where: where?.call(Placeatts.t),
      orderBy: orderBy?.call(Placeatts.t),
      orderByList: orderByList?.call(Placeatts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Placeatts] matching the given query parameters.
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
  Future<Placeatts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Placeatts>(
      where: where?.call(Placeatts.t),
      orderBy: orderBy?.call(Placeatts.t),
      orderByList: orderByList?.call(Placeatts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Placeatts] by its [id] or null if no such row exists.
  Future<Placeatts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Placeatts>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Placeatts]s in the list and returns the inserted rows.
  ///
  /// The returned [Placeatts]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Placeatts>> insert(
    _i1.Session session,
    List<Placeatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Placeatts>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Placeatts] and returns the inserted row.
  ///
  /// The returned [Placeatts] will have its `id` field set.
  Future<Placeatts> insertRow(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Placeatts>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Placeatts]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Placeatts>> update(
    _i1.Session session,
    List<Placeatts> rows, {
    _i1.ColumnSelections<PlaceattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Placeatts>(
      rows,
      columns: columns?.call(Placeatts.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Placeatts]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Placeatts> updateRow(
    _i1.Session session,
    Placeatts row, {
    _i1.ColumnSelections<PlaceattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Placeatts>(
      row,
      columns: columns?.call(Placeatts.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Placeatts]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Placeatts>> delete(
    _i1.Session session,
    List<Placeatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Placeatts>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Placeatts].
  Future<Placeatts> deleteRow(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Placeatts>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Placeatts>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Placeatts>(
      where: where(Placeatts.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Placeatts>(
      where: where?.call(Placeatts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
