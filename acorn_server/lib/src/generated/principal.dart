/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Principal extends _i1.TableRow {
  Principal({
    int? id,
    required this.period,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.placeId,
  }) : super(id);

  factory Principal.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Principal(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      period:
          serializationManager.deserialize<int>(jsonSerialization['period']),
      annee:
          serializationManager.deserialize<double>(jsonSerialization['annee']),
      month: serializationManager.deserialize<int>(jsonSerialization['month']),
      day: serializationManager.deserialize<int>(jsonSerialization['day']),
      point: serializationManager.deserialize<int>(jsonSerialization['point']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
      placeId:
          serializationManager.deserialize<int>(jsonSerialization['placeId']),
    );
  }

  static final t = PrincipalTable();

  int period;

  double annee;

  int month;

  int day;

  int point;

  String affair;

  String location;

  int placeId;

  @override
  String get tableName => 'principal';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'placeId': placeId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'placeId': placeId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'placeId': placeId,
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
      case 'period':
        period = value;
        return;
      case 'annee':
        annee = value;
        return;
      case 'month':
        month = value;
        return;
      case 'day':
        day = value;
        return;
      case 'point':
        point = value;
        return;
      case 'affair':
        affair = value;
        return;
      case 'location':
        location = value;
        return;
      case 'placeId':
        placeId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Principal>> find(
    _i1.Session session, {
    PrincipalExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Principal>(
      where: where != null ? where(Principal.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Principal?> findSingleRow(
    _i1.Session session, {
    PrincipalExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Principal>(
      where: where != null ? where(Principal.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Principal?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Principal>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Principal>(
      where: where(Principal.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Principal>(
      where: where != null ? where(Principal.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalExpressionBuilder = _i1.Expression Function(PrincipalTable);

class PrincipalTable extends _i1.Table {
  PrincipalTable() : super(tableName: 'principal');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final period = _i1.ColumnInt('period');

  final annee = _i1.ColumnDouble('annee');

  final month = _i1.ColumnInt('month');

  final day = _i1.ColumnInt('day');

  final point = _i1.ColumnInt('point');

  final affair = _i1.ColumnString('affair');

  final location = _i1.ColumnString('location');

  final placeId = _i1.ColumnInt('placeId');

  @override
  List<_i1.Column> get columns => [
        id,
        period,
        annee,
        month,
        day,
        point,
        affair,
        location,
        placeId,
      ];
}

@Deprecated('Use PrincipalTable.t instead.')
PrincipalTable tPrincipal = PrincipalTable();
