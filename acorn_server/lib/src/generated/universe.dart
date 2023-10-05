/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Universe extends _i1.TableRow {
  Universe({
    int? id,
    required this.universe,
  }) : super(id);

  factory Universe.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Universe(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      universe: serializationManager
          .deserialize<String>(jsonSerialization['universe']),
    );
  }

  static final t = UniverseTable();

  String universe;

  @override
  String get tableName => 'universe';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'universe': universe,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'universe': universe,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'universe': universe,
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
      case 'universe':
        universe = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Universe>> find(
    _i1.Session session, {
    UniverseExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Universe>(
      where: where != null ? where(Universe.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Universe?> findSingleRow(
    _i1.Session session, {
    UniverseExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Universe>(
      where: where != null ? where(Universe.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Universe?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Universe>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required UniverseExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Universe>(
      where: where(Universe.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    UniverseExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Universe>(
      where: where != null ? where(Universe.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UniverseExpressionBuilder = _i1.Expression Function(UniverseTable);

class UniverseTable extends _i1.Table {
  UniverseTable() : super(tableName: 'universe');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final universe = _i1.ColumnString('universe');

  @override
  List<_i1.Column> get columns => [
        id,
        universe,
      ];
}

@Deprecated('Use UniverseTable.t instead.')
UniverseTable tUniverse = UniverseTable();
