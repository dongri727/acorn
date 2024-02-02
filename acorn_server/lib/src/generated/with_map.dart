/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class WithMap extends _i1.TableRow {
  WithMap._({
    int? id,
    required this.principalId,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.latitude,
    required this.longitude,
    required this.logarithm,
  }) : super(id);

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

  factory WithMap.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WithMap(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      annee:
          serializationManager.deserialize<String>(jsonSerialization['annee']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
      precise: serializationManager
          .deserialize<String>(jsonSerialization['precise']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      logarithm: serializationManager
          .deserialize<double>(jsonSerialization['logarithm']),
    );
  }

  static final t = WithMapTable();

  static const db = WithMapRepository._();

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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
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
  Map<String, dynamic> allToJson() {
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
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'principalId':
        principalId = value;
        return;
      case 'annee':
        annee = value;
        return;
      case 'affair':
        affair = value;
        return;
      case 'location':
        location = value;
        return;
      case 'precise':
        precise = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'logarithm':
        logarithm = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<WithMap>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WithMap>(
      where: where != null ? where(WithMap.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<WithMap?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<WithMap>(
      where: where != null ? where(WithMap.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<WithMap?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<WithMap>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WithMapTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WithMap>(
      where: where(WithMap.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WithMap>(
      where: where != null ? where(WithMap.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use WithMapTable.t instead.')
WithMapTable tWithMap = WithMapTable();

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
    return session.dbNext.find<WithMap>(
      where: where?.call(WithMap.t),
      orderBy: orderBy?.call(WithMap.t),
      orderByList: orderByList?.call(WithMap.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
    return session.dbNext.findFirstRow<WithMap>(
      where: where?.call(WithMap.t),
      orderBy: orderBy?.call(WithMap.t),
      orderByList: orderByList?.call(WithMap.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<WithMap?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<WithMap>(
      id,
      transaction: transaction,
    );
  }

  Future<List<WithMap>> insert(
    _i1.Session session,
    List<WithMap> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<WithMap>(
      rows,
      transaction: transaction,
    );
  }

  Future<WithMap> insertRow(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<WithMap>(
      row,
      transaction: transaction,
    );
  }

  Future<List<WithMap>> update(
    _i1.Session session,
    List<WithMap> rows, {
    _i1.ColumnSelections<WithMapTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<WithMap>(
      rows,
      columns: columns?.call(WithMap.t),
      transaction: transaction,
    );
  }

  Future<WithMap> updateRow(
    _i1.Session session,
    WithMap row, {
    _i1.ColumnSelections<WithMapTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<WithMap>(
      row,
      columns: columns?.call(WithMap.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<WithMap> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<WithMap>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    WithMap row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<WithMap>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WithMapTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<WithMap>(
      where: where(WithMap.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithMapTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<WithMap>(
      where: where?.call(WithMap.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
