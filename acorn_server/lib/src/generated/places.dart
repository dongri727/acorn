/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Places extends _i1.TableRow {
  Places({
    int? id,
    required this.place,
  }) : super(id);

  factory Places.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Places(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      place:
          serializationManager.deserialize<String>(jsonSerialization['place']),
    );
  }

  static final t = PlacesTable();

  String place;

  @override
  String get tableName => 'places';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'place': place,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'place': place,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'place': place,
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
      case 'place':
        place = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Places>> find(
    _i1.Session session, {
    PlacesExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Places>(
      where: where != null ? where(Places.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Places?> findSingleRow(
    _i1.Session session, {
    PlacesExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Places>(
      where: where != null ? where(Places.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Places?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Places>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PlacesExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Places>(
      where: where(Places.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PlacesExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Places>(
      where: where != null ? where(Places.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PlacesExpressionBuilder = _i1.Expression Function(PlacesTable);

class PlacesTable extends _i1.Table {
  PlacesTable() : super(tableName: 'places');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final place = _i1.ColumnString('place');

  @override
  List<_i1.Column> get columns => [
        id,
        place,
      ];
}

@Deprecated('Use PlacesTable.t instead.')
PlacesTable tPlaces = PlacesTable();
