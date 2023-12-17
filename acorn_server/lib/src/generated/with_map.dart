/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class WithMap extends _i1.TableRow {
  WithMap({
    int? id,
    required this.principal_id,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.latitude,
    required this.longitude,
    required this.logarithm,
  }) : super(id);

  factory WithMap.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WithMap(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
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

  int principal_id;

  String annee;

  String affair;

  String location;

  String precise;

  double latitude;

  double longitude;

  double logarithm;

  @override
  String get tableName => 'with_map';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
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
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
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
      'id': id,
      'principal_id': principal_id,
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
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'principal_id':
        principal_id = value;
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

  static Future<List<WithMap>> find(
    _i1.Session session, {
    WithMapExpressionBuilder? where,
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

  static Future<WithMap?> findSingleRow(
    _i1.Session session, {
    WithMapExpressionBuilder? where,
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

  static Future<WithMap?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<WithMap>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required WithMapExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WithMap>(
      where: where(WithMap.t),
      transaction: transaction,
    );
  }

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

  static Future<int> count(
    _i1.Session session, {
    WithMapExpressionBuilder? where,
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
}

typedef WithMapExpressionBuilder = _i1.Expression Function(WithMapTable);

class WithMapTable extends _i1.Table {
  WithMapTable() : super(tableName: 'with_map');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final annee = _i1.ColumnString('annee');

  final affair = _i1.ColumnString('affair');

  final location = _i1.ColumnString('location');

  final precise = _i1.ColumnString('precise');

  final latitude = _i1.ColumnDouble('latitude');

  final longitude = _i1.ColumnDouble('longitude');

  final logarithm = _i1.ColumnDouble('logarithm');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
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
