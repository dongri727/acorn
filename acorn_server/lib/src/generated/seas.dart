/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Seas extends _i1.TableRow {
  Seas({
    int? id,
    required this.sea,
  }) : super(id);

  factory Seas.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Seas(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sea: serializationManager.deserialize<String>(jsonSerialization['sea']),
    );
  }

  static final t = SeasTable();

  String sea;

  @override
  String get tableName => 'seas';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sea': sea,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'sea': sea,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'sea': sea,
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
      case 'sea':
        sea = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Seas>> find(
    _i1.Session session, {
    SeasExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Seas>(
      where: where != null ? where(Seas.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Seas?> findSingleRow(
    _i1.Session session, {
    SeasExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Seas>(
      where: where != null ? where(Seas.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Seas?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Seas>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SeasExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Seas>(
      where: where(Seas.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SeasExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Seas>(
      where: where != null ? where(Seas.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SeasExpressionBuilder = _i1.Expression Function(SeasTable);

class SeasTable extends _i1.Table {
  SeasTable() : super(tableName: 'seas');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final sea = _i1.ColumnString('sea');

  @override
  List<_i1.Column> get columns => [
        id,
        sea,
      ];
}

@Deprecated('Use SeasTable.t instead.')
SeasTable tSeas = SeasTable();
