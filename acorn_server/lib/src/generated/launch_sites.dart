/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class LaunchSites implements _i1.TableRow, _i1.ProtocolSerialization {
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
  _i1.Table get table => t;

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

class LaunchSitesTable extends _i1.Table {
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
  _i1.Table get table => LaunchSites.t;
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
  _i1.Table get table => LaunchSites.t;
}

class LaunchSitesRepository {
  const LaunchSitesRepository._();

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
      transaction: transaction ?? session.transaction,
    );
  }

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
      transaction: transaction ?? session.transaction,
    );
  }

  Future<LaunchSites?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LaunchSites>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<LaunchSites>> insert(
    _i1.Session session,
    List<LaunchSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LaunchSites>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<LaunchSites> insertRow(
    _i1.Session session,
    LaunchSites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LaunchSites>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<LaunchSites>> update(
    _i1.Session session,
    List<LaunchSites> rows, {
    _i1.ColumnSelections<LaunchSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LaunchSites>(
      rows,
      columns: columns?.call(LaunchSites.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<LaunchSites> updateRow(
    _i1.Session session,
    LaunchSites row, {
    _i1.ColumnSelections<LaunchSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LaunchSites>(
      row,
      columns: columns?.call(LaunchSites.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<LaunchSites>> delete(
    _i1.Session session,
    List<LaunchSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LaunchSites>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<LaunchSites> deleteRow(
    _i1.Session session,
    LaunchSites row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LaunchSites>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<LaunchSites>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LaunchSitesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LaunchSites>(
      where: where(LaunchSites.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LaunchSitesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LaunchSites>(
      where: where?.call(LaunchSites.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
