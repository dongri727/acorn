/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Stars extends _i1.TableRow {
  Stars({
    int? id,
    required this.star,
  }) : super(id);

  factory Stars.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Stars(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      star: serializationManager.deserialize<String>(jsonSerialization['star']),
    );
  }

  static final t = StarsTable();

  String star;

  @override
  String get tableName => 'stars';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'star': star,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'star': star,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'star': star,
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
      case 'star':
        star = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Stars>> find(
    _i1.Session session, {
    StarsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Stars>(
      where: where != null ? where(Stars.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Stars?> findSingleRow(
    _i1.Session session, {
    StarsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Stars>(
      where: where != null ? where(Stars.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Stars?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Stars>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required StarsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Stars>(
      where: where(Stars.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    StarsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Stars>(
      where: where != null ? where(Stars.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef StarsExpressionBuilder = _i1.Expression Function(StarsTable);

class StarsTable extends _i1.Table {
  StarsTable() : super(tableName: 'stars');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final star = _i1.ColumnString('star');

  @override
  List<_i1.Column> get columns => [
        id,
        star,
      ];
}

@Deprecated('Use StarsTable.t instead.')
StarsTable tStars = StarsTable();
