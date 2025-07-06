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

abstract class Detail implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Detail._({
    this.id,
    required this.genre,
    required this.mot,
  });

  factory Detail({
    int? id,
    required String genre,
    required String mot,
  }) = _DetailImpl;

  factory Detail.fromJson(Map<String, dynamic> jsonSerialization) {
    return Detail(
      id: jsonSerialization['id'] as int?,
      genre: jsonSerialization['genre'] as String,
      mot: jsonSerialization['mot'] as String,
    );
  }

  static final t = DetailTable();

  static const db = DetailRepository._();

  @override
  int? id;

  String genre;

  String mot;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Detail]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Detail copyWith({
    int? id,
    String? genre,
    String? mot,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'genre': genre,
      'mot': mot,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'genre': genre,
      'mot': mot,
    };
  }

  static DetailInclude include() {
    return DetailInclude._();
  }

  static DetailIncludeList includeList({
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DetailTable>? orderByList,
    DetailInclude? include,
  }) {
    return DetailIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Detail.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Detail.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DetailImpl extends Detail {
  _DetailImpl({
    int? id,
    required String genre,
    required String mot,
  }) : super._(
          id: id,
          genre: genre,
          mot: mot,
        );

  /// Returns a shallow copy of this [Detail]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Detail copyWith({
    Object? id = _Undefined,
    String? genre,
    String? mot,
  }) {
    return Detail(
      id: id is int? ? id : this.id,
      genre: genre ?? this.genre,
      mot: mot ?? this.mot,
    );
  }
}

class DetailTable extends _i1.Table<int?> {
  DetailTable({super.tableRelation}) : super(tableName: 'detail') {
    genre = _i1.ColumnString(
      'genre',
      this,
    );
    mot = _i1.ColumnString(
      'mot',
      this,
    );
  }

  late final _i1.ColumnString genre;

  late final _i1.ColumnString mot;

  @override
  List<_i1.Column> get columns => [
        id,
        genre,
        mot,
      ];
}

class DetailInclude extends _i1.IncludeObject {
  DetailInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Detail.t;
}

class DetailIncludeList extends _i1.IncludeList {
  DetailIncludeList._({
    _i1.WhereExpressionBuilder<DetailTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Detail.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Detail.t;
}

class DetailRepository {
  const DetailRepository._();

  /// Returns a list of [Detail]s matching the given query parameters.
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
  Future<List<Detail>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Detail>(
      where: where?.call(Detail.t),
      orderBy: orderBy?.call(Detail.t),
      orderByList: orderByList?.call(Detail.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Detail] matching the given query parameters.
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
  Future<Detail?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? offset,
    _i1.OrderByBuilder<DetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Detail>(
      where: where?.call(Detail.t),
      orderBy: orderBy?.call(Detail.t),
      orderByList: orderByList?.call(Detail.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Detail] by its [id] or null if no such row exists.
  Future<Detail?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Detail>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Detail]s in the list and returns the inserted rows.
  ///
  /// The returned [Detail]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Detail>> insert(
    _i1.Session session,
    List<Detail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Detail>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Detail] and returns the inserted row.
  ///
  /// The returned [Detail] will have its `id` field set.
  Future<Detail> insertRow(
    _i1.Session session,
    Detail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Detail>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Detail]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Detail>> update(
    _i1.Session session,
    List<Detail> rows, {
    _i1.ColumnSelections<DetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Detail>(
      rows,
      columns: columns?.call(Detail.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Detail]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Detail> updateRow(
    _i1.Session session,
    Detail row, {
    _i1.ColumnSelections<DetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Detail>(
      row,
      columns: columns?.call(Detail.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Detail]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Detail>> delete(
    _i1.Session session,
    List<Detail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Detail>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Detail].
  Future<Detail> deleteRow(
    _i1.Session session,
    Detail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Detail>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Detail>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Detail>(
      where: where(Detail.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Detail>(
      where: where?.call(Detail.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
