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

abstract class LaunchSites
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  LaunchSites._({
    this.id,
    required this.location,
    required this.precise,
    required this.site,
    required this.lat,
    required this.lon,
  });

  factory LaunchSites({
    int? id,
    required String location,
    required String precise,
    required String site,
    required double lat,
    required double lon,
  }) = _LaunchSitesImpl;

  factory LaunchSites.fromJson(Map<String, dynamic> jsonSerialization) {
    return LaunchSites(
      id: jsonSerialization['id'] as int?,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      site: jsonSerialization['site'] as String,
      lat: (jsonSerialization['lat'] as num).toDouble(),
      lon: (jsonSerialization['lon'] as num).toDouble(),
    );
  }

  static final t = LaunchSitesTable();

  static const db = LaunchSitesRepository._();

  @override
  int? id;

  String location;

  String precise;

  String site;

  double lat;

  double lon;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [LaunchSites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LaunchSites copyWith({
    int? id,
    String? location,
    String? precise,
    String? site,
    double? lat,
    double? lon,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'location': location,
      'precise': precise,
      'site': site,
      'lat': lat,
      'lon': lon,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'location': location,
      'precise': precise,
      'site': site,
      'lat': lat,
      'lon': lon,
    };
  }

  static LaunchSitesInclude include() {
    return LaunchSitesInclude._();
  }

  static LaunchSitesIncludeList includeList({
    _i1.WhereExpressionBuilder<LaunchSitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LaunchSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LaunchSitesTable>? orderByList,
    LaunchSitesInclude? include,
  }) {
    return LaunchSitesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LaunchSites.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LaunchSites.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LaunchSitesImpl extends LaunchSites {
  _LaunchSitesImpl({
    int? id,
    required String location,
    required String precise,
    required String site,
    required double lat,
    required double lon,
  }) : super._(
          id: id,
          location: location,
          precise: precise,
          site: site,
          lat: lat,
          lon: lon,
        );

  /// Returns a shallow copy of this [LaunchSites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LaunchSites copyWith({
    Object? id = _Undefined,
    String? location,
    String? precise,
    String? site,
    double? lat,
    double? lon,
  }) {
    return LaunchSites(
      id: id is int? ? id : this.id,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      site: site ?? this.site,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }
}

class LaunchSitesTable extends _i1.Table<int?> {
  LaunchSitesTable({super.tableRelation}) : super(tableName: 'launch_sites') {
    location = _i1.ColumnString(
      'location',
      this,
    );
    precise = _i1.ColumnString(
      'precise',
      this,
    );
    site = _i1.ColumnString(
      'site',
      this,
    );
    lat = _i1.ColumnDouble(
      'lat',
      this,
    );
    lon = _i1.ColumnDouble(
      'lon',
      this,
    );
  }

  late final _i1.ColumnString location;

  late final _i1.ColumnString precise;

  late final _i1.ColumnString site;

  late final _i1.ColumnDouble lat;

  late final _i1.ColumnDouble lon;

  @override
  List<_i1.Column> get columns => [
        id,
        location,
        precise,
        site,
        lat,
        lon,
      ];
}

class LaunchSitesInclude extends _i1.IncludeObject {
  LaunchSitesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => LaunchSites.t;
}

class LaunchSitesIncludeList extends _i1.IncludeList {
  LaunchSitesIncludeList._({
    _i1.WhereExpressionBuilder<LaunchSitesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LaunchSites.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => LaunchSites.t;
}

class LaunchSitesRepository {
  const LaunchSitesRepository._();

  /// Returns a list of [LaunchSites]s matching the given query parameters.
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
  Future<List<LaunchSites>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LaunchSitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LaunchSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LaunchSitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LaunchSites>(
      where: where?.call(LaunchSites.t),
      orderBy: orderBy?.call(LaunchSites.t),
      orderByList: orderByList?.call(LaunchSites.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [LaunchSites] matching the given query parameters.
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
  Future<LaunchSites?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LaunchSitesTable>? where,
    int? offset,
    _i1.OrderByBuilder<LaunchSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LaunchSitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LaunchSites>(
      where: where?.call(LaunchSites.t),
      orderBy: orderBy?.call(LaunchSites.t),
      orderByList: orderByList?.call(LaunchSites.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [LaunchSites] by its [id] or null if no such row exists.
  Future<LaunchSites?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LaunchSites>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [LaunchSites]s in the list and returns the inserted rows.
  ///
  /// The returned [LaunchSites]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<LaunchSites>> insert(
    _i1.Session session,
    List<LaunchSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LaunchSites>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [LaunchSites] and returns the inserted row.
  ///
  /// The returned [LaunchSites] will have its `id` field set.
  Future<LaunchSites> insertRow(
    _i1.Session session,
    LaunchSites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LaunchSites>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [LaunchSites]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<LaunchSites>> update(
    _i1.Session session,
    List<LaunchSites> rows, {
    _i1.ColumnSelections<LaunchSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LaunchSites>(
      rows,
      columns: columns?.call(LaunchSites.t),
      transaction: transaction,
    );
  }

  /// Updates a single [LaunchSites]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<LaunchSites> updateRow(
    _i1.Session session,
    LaunchSites row, {
    _i1.ColumnSelections<LaunchSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LaunchSites>(
      row,
      columns: columns?.call(LaunchSites.t),
      transaction: transaction,
    );
  }

  /// Deletes all [LaunchSites]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<LaunchSites>> delete(
    _i1.Session session,
    List<LaunchSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LaunchSites>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [LaunchSites].
  Future<LaunchSites> deleteRow(
    _i1.Session session,
    LaunchSites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LaunchSites>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<LaunchSites>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LaunchSitesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LaunchSites>(
      where: where(LaunchSites.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LaunchSitesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LaunchSites>(
      where: where?.call(LaunchSites.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
