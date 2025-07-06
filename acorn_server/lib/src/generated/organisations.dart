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

abstract class Organisations
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Organisations._({
    this.id,
    required this.organisation,
  });

  factory Organisations({
    int? id,
    required String organisation,
  }) = _OrganisationsImpl;

  factory Organisations.fromJson(Map<String, dynamic> jsonSerialization) {
    return Organisations(
      id: jsonSerialization['id'] as int?,
      organisation: jsonSerialization['organisation'] as String,
    );
  }

  static final t = OrganisationsTable();

  static const db = OrganisationsRepository._();

  @override
  int? id;

  String organisation;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Organisations]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Organisations copyWith({
    int? id,
    String? organisation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'organisation': organisation,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'organisation': organisation,
    };
  }

  static OrganisationsInclude include() {
    return OrganisationsInclude._();
  }

  static OrganisationsIncludeList includeList({
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationsTable>? orderByList,
    OrganisationsInclude? include,
  }) {
    return OrganisationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Organisations.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Organisations.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _OrganisationsImpl extends Organisations {
  _OrganisationsImpl({
    int? id,
    required String organisation,
  }) : super._(
          id: id,
          organisation: organisation,
        );

  /// Returns a shallow copy of this [Organisations]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Organisations copyWith({
    Object? id = _Undefined,
    String? organisation,
  }) {
    return Organisations(
      id: id is int? ? id : this.id,
      organisation: organisation ?? this.organisation,
    );
  }
}

class OrganisationsTable extends _i1.Table<int?> {
  OrganisationsTable({super.tableRelation})
      : super(tableName: 'organisations') {
    organisation = _i1.ColumnString(
      'organisation',
      this,
    );
  }

  late final _i1.ColumnString organisation;

  @override
  List<_i1.Column> get columns => [
        id,
        organisation,
      ];
}

class OrganisationsInclude extends _i1.IncludeObject {
  OrganisationsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Organisations.t;
}

class OrganisationsIncludeList extends _i1.IncludeList {
  OrganisationsIncludeList._({
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Organisations.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Organisations.t;
}

class OrganisationsRepository {
  const OrganisationsRepository._();

  /// Returns a list of [Organisations]s matching the given query parameters.
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
  Future<List<Organisations>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Organisations>(
      where: where?.call(Organisations.t),
      orderBy: orderBy?.call(Organisations.t),
      orderByList: orderByList?.call(Organisations.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Organisations] matching the given query parameters.
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
  Future<Organisations?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrganisationsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Organisations>(
      where: where?.call(Organisations.t),
      orderBy: orderBy?.call(Organisations.t),
      orderByList: orderByList?.call(Organisations.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Organisations] by its [id] or null if no such row exists.
  Future<Organisations?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Organisations>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Organisations]s in the list and returns the inserted rows.
  ///
  /// The returned [Organisations]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Organisations>> insert(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Organisations>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Organisations] and returns the inserted row.
  ///
  /// The returned [Organisations] will have its `id` field set.
  Future<Organisations> insertRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Organisations>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Organisations]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Organisations>> update(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.ColumnSelections<OrganisationsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Organisations>(
      rows,
      columns: columns?.call(Organisations.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Organisations]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Organisations> updateRow(
    _i1.Session session,
    Organisations row, {
    _i1.ColumnSelections<OrganisationsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Organisations>(
      row,
      columns: columns?.call(Organisations.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Organisations]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Organisations>> delete(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Organisations>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Organisations].
  Future<Organisations> deleteRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Organisations>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Organisations>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrganisationsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Organisations>(
      where: where(Organisations.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Organisations>(
      where: where?.call(Organisations.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
