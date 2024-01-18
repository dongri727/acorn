/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Lieux extends _i1.TableRow {
  Lieux._({
    int? id,
    required this.principalId,
    required this.latitude,
    required this.longitude,
    required this.threeDX,
    required this.threeDY,
    required this.threeDZ,
  }) : super(id);

  factory Lieux({
    int? id,
    required int principalId,
    required double latitude,
    required double longitude,
    required double threeDX,
    required double threeDY,
    required double threeDZ,
  }) = _LieuxImpl;

  factory Lieux.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Lieux(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
      threeDX: serializationManager
          .deserialize<double>(jsonSerialization['threeDX']),
      threeDY: serializationManager
          .deserialize<double>(jsonSerialization['threeDY']),
      threeDZ: serializationManager
          .deserialize<double>(jsonSerialization['threeDZ']),
    );
  }

  static final t = LieuxTable();

  static const db = LieuxRepository._();

  int principalId;

  double latitude;

  double longitude;

  double threeDX;

  double threeDY;

  double threeDZ;

  @override
  _i1.Table get table => t;

  Lieux copyWith({
    int? id,
    int? principalId,
    double? latitude,
    double? longitude,
    double? threeDX,
    double? threeDY,
    double? threeDZ,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'latitude': latitude,
      'longitude': longitude,
      'threeDX': threeDX,
      'threeDY': threeDY,
      'threeDZ': threeDZ,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'latitude': latitude,
      'longitude': longitude,
      'threeDX': threeDX,
      'threeDY': threeDY,
      'threeDZ': threeDZ,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
      'latitude': latitude,
      'longitude': longitude,
      'threeDX': threeDX,
      'threeDY': threeDY,
      'threeDZ': threeDZ,
    };
  }

  @override
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
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      case 'threeDX':
        threeDX = value;
        return;
      case 'threeDY':
        threeDY = value;
        return;
      case 'threeDZ':
        threeDZ = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Lieux>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Lieux>(
      where: where != null ? where(Lieux.t) : null,
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
  static Future<Lieux?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Lieux>(
      where: where != null ? where(Lieux.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Lieux?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Lieux>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LieuxTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Lieux>(
      where: where(Lieux.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Lieux row, {
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
    Lieux row, {
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
    Lieux row, {
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
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Lieux>(
      where: where != null ? where(Lieux.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static LieuxInclude include() {
    return LieuxInclude._();
  }

  static LieuxIncludeList includeList({
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LieuxTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LieuxTable>? orderByList,
    LieuxInclude? include,
  }) {
    return LieuxIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Lieux.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Lieux.t),
      include: include,
    );
  }
}

class _Undefined {}

class _LieuxImpl extends Lieux {
  _LieuxImpl({
    int? id,
    required int principalId,
    required double latitude,
    required double longitude,
    required double threeDX,
    required double threeDY,
    required double threeDZ,
  }) : super._(
          id: id,
          principalId: principalId,
          latitude: latitude,
          longitude: longitude,
          threeDX: threeDX,
          threeDY: threeDY,
          threeDZ: threeDZ,
        );

  @override
  Lieux copyWith({
    Object? id = _Undefined,
    int? principalId,
    double? latitude,
    double? longitude,
    double? threeDX,
    double? threeDY,
    double? threeDZ,
  }) {
    return Lieux(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      threeDX: threeDX ?? this.threeDX,
      threeDY: threeDY ?? this.threeDY,
      threeDZ: threeDZ ?? this.threeDZ,
    );
  }
}

class LieuxTable extends _i1.Table {
  LieuxTable({super.tableRelation}) : super(tableName: 'lieux') {
    principalId = _i1.ColumnInt(
      'principalId',
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
    threeDX = _i1.ColumnDouble(
      'threeDX',
      this,
    );
    threeDY = _i1.ColumnDouble(
      'threeDY',
      this,
    );
    threeDZ = _i1.ColumnDouble(
      'threeDZ',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnDouble threeDX;

  late final _i1.ColumnDouble threeDY;

  late final _i1.ColumnDouble threeDZ;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        latitude,
        longitude,
        threeDX,
        threeDY,
        threeDZ,
      ];
}

@Deprecated('Use LieuxTable.t instead.')
LieuxTable tLieux = LieuxTable();

class LieuxInclude extends _i1.IncludeObject {
  LieuxInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Lieux.t;
}

class LieuxIncludeList extends _i1.IncludeList {
  LieuxIncludeList._({
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Lieux.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Lieux.t;
}

class LieuxRepository {
  const LieuxRepository._();

  Future<List<Lieux>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LieuxTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LieuxTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Lieux>(
      where: where?.call(Lieux.t),
      orderBy: orderBy?.call(Lieux.t),
      orderByList: orderByList?.call(Lieux.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Lieux?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? offset,
    _i1.OrderByBuilder<LieuxTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LieuxTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Lieux>(
      where: where?.call(Lieux.t),
      orderBy: orderBy?.call(Lieux.t),
      orderByList: orderByList?.call(Lieux.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Lieux?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Lieux>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Lieux>> insert(
    _i1.Session session,
    List<Lieux> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Lieux>(
      rows,
      transaction: transaction,
    );
  }

  Future<Lieux> insertRow(
    _i1.Session session,
    Lieux row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Lieux>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Lieux>> update(
    _i1.Session session,
    List<Lieux> rows, {
    _i1.ColumnSelections<LieuxTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Lieux>(
      rows,
      columns: columns?.call(Lieux.t),
      transaction: transaction,
    );
  }

  Future<Lieux> updateRow(
    _i1.Session session,
    Lieux row, {
    _i1.ColumnSelections<LieuxTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Lieux>(
      row,
      columns: columns?.call(Lieux.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Lieux> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Lieux>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Lieux row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Lieux>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LieuxTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Lieux>(
      where: where(Lieux.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LieuxTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Lieux>(
      where: where?.call(Lieux.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
