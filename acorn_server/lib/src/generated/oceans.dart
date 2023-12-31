/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Oceans extends _i1.TableRow {
  Oceans({
    int? id,
    required this.ocean,
  }) : super(id);

  factory Oceans.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Oceans(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ocean:
          serializationManager.deserialize<String>(jsonSerialization['ocean']),
    );
  }

  static final t = OceansTable();

  String ocean;

  @override
  String get tableName => 'oceans';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ocean': ocean,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'ocean': ocean,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'ocean': ocean,
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
      case 'ocean':
        ocean = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Oceans>> find(
    _i1.Session session, {
    OceansExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Oceans>(
      where: where != null ? where(Oceans.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Oceans?> findSingleRow(
    _i1.Session session, {
    OceansExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Oceans>(
      where: where != null ? where(Oceans.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Oceans?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Oceans>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required OceansExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Oceans>(
      where: where(Oceans.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    OceansExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Oceans>(
      where: where != null ? where(Oceans.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef OceansExpressionBuilder = _i1.Expression Function(OceansTable);

class OceansTable extends _i1.Table {
  OceansTable() : super(tableName: 'oceans');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final ocean = _i1.ColumnString('ocean');

  @override
  List<_i1.Column> get columns => [
        id,
        ocean,
      ];
}

@Deprecated('Use OceansTable.t instead.')
OceansTable tOceans = OceansTable();
