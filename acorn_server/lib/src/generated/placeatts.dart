/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Placeatts extends _i1.TableRow {
  Placeatts({
    int? id,
    required this.placeatt,
  }) : super(id);

  factory Placeatts.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Placeatts(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      placeatt: serializationManager
          .deserialize<String>(jsonSerialization['placeatt']),
    );
  }

  static final t = PlaceattsTable();

  String placeatt;

  @override
  String get tableName => 'placeatts';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'placeatt': placeatt,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'placeatt': placeatt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'placeatt': placeatt,
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
      case 'placeatt':
        placeatt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Placeatts>> find(
    _i1.Session session, {
    PlaceattsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Placeatts>(
      where: where != null ? where(Placeatts.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Placeatts?> findSingleRow(
    _i1.Session session, {
    PlaceattsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Placeatts>(
      where: where != null ? where(Placeatts.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Placeatts?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Placeatts>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PlaceattsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Placeatts>(
      where: where(Placeatts.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PlaceattsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Placeatts>(
      where: where != null ? where(Placeatts.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PlaceattsExpressionBuilder = _i1.Expression Function(PlaceattsTable);

class PlaceattsTable extends _i1.Table {
  PlaceattsTable() : super(tableName: 'placeatts');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final placeatt = _i1.ColumnString('placeatt');

  @override
  List<_i1.Column> get columns => [
        id,
        placeatt,
      ];
}

@Deprecated('Use PlaceattsTable.t instead.')
PlaceattsTable tPlaceatts = PlaceattsTable();
