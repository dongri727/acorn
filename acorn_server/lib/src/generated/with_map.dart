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

abstract class WithMap implements _i1.TableRow, _i1.ProtocolSerialization {
  WithMap._({
    this.id,
    required this.principalId,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.latitude,
    required this.longitude,
    required this.logarithm,
  });

  factory WithMap({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double latitude,
    required double longitude,
    required double logarithm,
  }) = _WithMapImpl;

  factory WithMap.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithMap(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      annee: jsonSerialization['annee'] as String,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      latitude: (jsonSerialization['latitude'] as num).toDouble(),
      longitude: (jsonSerialization['longitude'] as num).toDouble(),
      logarithm: (jsonSerialization['logarithm'] as num).toDouble(),
    );
  }

  static final t = WithMapTable();

  static const db = WithMapRepository._();

  @override
  int? id;

  int principalId;

  String annee;

  String affair;

  String location;

  String precise;

  double latitude;

  double longitude;

  double logarithm;

  @override
  _i1.Table get table => t;

  WithMap copyWith({
    int? id,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? latitude,
    double? longitude,
    double? logarithm,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'latitude': latitude,
      'longitude': longitude,
      'logarithm': logarithm,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'latitude': latitude,
      'longitude': longitude,
      'logarithm': logarithm,
    };
  }

  static WithMapInclude include() {
    return WithMapInclude._();
  }

  static WithMapIncludeList includeList({
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithMapTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithMapTable>? orderByList,
    WithMapInclude? include,
  }) {
    return WithMapIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WithMap.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WithMap.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WithMapImpl extends WithMap {
  _WithMapImpl({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double latitude,
    required double longitude,
    required double logarithm,
  }) : super._(
          id: id,
          principalId: principalId,
          annee: annee,
          affair: affair,
          location: location,
          precise: precise,
          latitude: latitude,
          longitude: longitude,
          logarithm: logarithm,
        );

  @override
  WithMap copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? latitude,
    double? longitude,
    double? logarithm,
  }) {
    return WithMap(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      annee: annee ?? this.annee,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      logarithm: logarithm ?? this.logarithm,
    );
  }
}

class WithMapTable extends _i1.Table {
  WithMapTable({super.tableRelation}) : super(tableName: 'with_map') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    annee = _i1.ColumnString(
      'annee',
      this,
    );
    affair = _i1.ColumnString(
      'affair',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    precise = _i1.ColumnString(
      'precise',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
    logarithm = _i1.ColumnDouble(
      'logarithm',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString annee;

  late final _i1.ColumnString affair;

  late final _i1.ColumnString location;

  late final _i1.ColumnString precise;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnDouble logarithm;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        annee,
        affair,
        location,
        precise,
        latitude,
        longitude,
        logarithm,
      ];
}

class WithMapInclude extends _i1.IncludeObject {
  WithMapInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => WithMap.t;
}

class WithMapIncludeList extends _i1.IncludeList {
  WithMapIncludeList._({
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WithMap.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => WithMap.t;
}

class WithMapRepository {
  const WithMapRepository._();

  Future<List<WithMap>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithMapTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithMapTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WithMap>(
      where: where?.call(WithMap.t),
      orderBy: orderBy?.call(WithMap.t),
      orderByList: orderByList?.call(WithMap.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithMap?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? offset,
    _i1.OrderByBuilder<WithMapTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithMapTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<WithMap>(
      where: where?.call(WithMap.t),
      orderBy: orderBy?.call(WithMap.t),
      orderByList: orderByList?.call(WithMap.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithMap?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<WithMap>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithMap>> insert(
    _i1.Session session,
    List<WithMap> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<WithMap>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithMap> insertRow(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<WithMap>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithMap>> update(
    _i1.Session session,
    List<WithMap> rows, {
    _i1.ColumnSelections<WithMapTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<WithMap>(
      rows,
      columns: columns?.call(WithMap.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithMap> updateRow(
    _i1.Session session,
    WithMap row, {
    _i1.ColumnSelections<WithMapTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<WithMap>(
      row,
      columns: columns?.call(WithMap.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithMap>> delete(
    _i1.Session session,
    List<WithMap> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WithMap>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithMap> deleteRow(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WithMap>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithMap>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WithMapTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<WithMap>(
      where: where(WithMap.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WithMap>(
      where: where?.call(WithMap.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
