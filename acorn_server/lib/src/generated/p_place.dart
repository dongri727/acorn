/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class PrincipalPlace extends _i1.TableRow {
  PrincipalPlace({
    int? id,
    required this.principal_id,
    required this.place_id,
  }) : super(id);

  factory PrincipalPlace.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalPlace(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      place_id:
          serializationManager.deserialize<int>(jsonSerialization['place_id']),
    );
  }

  static final t = PrincipalPlaceTable();

  int principal_id;

  int place_id;

  @override
  String get tableName => 'principal_place';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'place_id': place_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'place_id': place_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'place_id': place_id,
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
      case 'place_id':
        place_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<PrincipalPlace>> find(
    _i1.Session session, {
    PrincipalPlaceExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPlace>(
      where: where != null ? where(PrincipalPlace.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalPlace?> findSingleRow(
    _i1.Session session, {
    PrincipalPlaceExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalPlace>(
      where: where != null ? where(PrincipalPlace.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalPlace?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalPlace>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalPlaceExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPlace>(
      where: where(PrincipalPlace.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalPlace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    PrincipalPlace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    PrincipalPlace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalPlaceExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPlace>(
      where: where != null ? where(PrincipalPlace.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalPlaceExpressionBuilder = _i1.Expression Function(
    PrincipalPlaceTable);

class PrincipalPlaceTable extends _i1.Table {
  PrincipalPlaceTable() : super(tableName: 'principal_place');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final place_id = _i1.ColumnInt('place_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        place_id,
      ];
}

@Deprecated('Use PrincipalPlaceTable.t instead.')
PrincipalPlaceTable tPrincipalPlace = PrincipalPlaceTable();
