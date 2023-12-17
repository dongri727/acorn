/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class WithGlobe extends _i1.TableRow {
  WithGlobe({
    int? id,
    required this.principal_id,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.x_coordinate,
    required this.y_coordinate,
    required this.z_coordinate,
    required this.coefficient,
  }) : super(id);

  factory WithGlobe.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WithGlobe(
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
      x_coordinate: serializationManager
          .deserialize<double>(jsonSerialization['x_coordinate']),
      y_coordinate: serializationManager
          .deserialize<double>(jsonSerialization['y_coordinate']),
      z_coordinate: serializationManager
          .deserialize<double>(jsonSerialization['z_coordinate']),
      coefficient: serializationManager
          .deserialize<double>(jsonSerialization['coefficient']),
    );
  }

  static final t = WithGlobeTable();

  int principal_id;

  String annee;

  String affair;

  String location;

  String precise;

  double x_coordinate;

  double y_coordinate;

  double z_coordinate;

  double coefficient;

  @override
  String get tableName => 'with_globe';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'x_coordinate': x_coordinate,
      'y_coordinate': y_coordinate,
      'z_coordinate': z_coordinate,
      'coefficient': coefficient,
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
      'x_coordinate': x_coordinate,
      'y_coordinate': y_coordinate,
      'z_coordinate': z_coordinate,
      'coefficient': coefficient,
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
      'x_coordinate': x_coordinate,
      'y_coordinate': y_coordinate,
      'z_coordinate': z_coordinate,
      'coefficient': coefficient,
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
      case 'x_coordinate':
        x_coordinate = value;
        return;
      case 'y_coordinate':
        y_coordinate = value;
        return;
      case 'z_coordinate':
        z_coordinate = value;
        return;
      case 'coefficient':
        coefficient = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<WithGlobe>> find(
    _i1.Session session, {
    WithGlobeExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WithGlobe>(
      where: where != null ? where(WithGlobe.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<WithGlobe?> findSingleRow(
    _i1.Session session, {
    WithGlobeExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<WithGlobe>(
      where: where != null ? where(WithGlobe.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<WithGlobe?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<WithGlobe>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required WithGlobeExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WithGlobe>(
      where: where(WithGlobe.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    WithGlobe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    WithGlobe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    WithGlobe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    WithGlobeExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WithGlobe>(
      where: where != null ? where(WithGlobe.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef WithGlobeExpressionBuilder = _i1.Expression Function(WithGlobeTable);

class WithGlobeTable extends _i1.Table {
  WithGlobeTable() : super(tableName: 'with_globe');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final annee = _i1.ColumnString('annee');

  final affair = _i1.ColumnString('affair');

  final location = _i1.ColumnString('location');

  final precise = _i1.ColumnString('precise');

  final x_coordinate = _i1.ColumnDouble('x_coordinate');

  final y_coordinate = _i1.ColumnDouble('y_coordinate');

  final z_coordinate = _i1.ColumnDouble('z_coordinate');

  final coefficient = _i1.ColumnDouble('coefficient');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        annee,
        affair,
        location,
        precise,
        x_coordinate,
        y_coordinate,
        z_coordinate,
        coefficient,
      ];
}

@Deprecated('Use WithGlobeTable.t instead.')
WithGlobeTable tWithGlobe = WithGlobeTable();
