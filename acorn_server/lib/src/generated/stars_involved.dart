/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class StarsInvolved extends _i1.TableRow {
  StarsInvolved({
    int? id,
    required this.principal_id,
    required this.star_id,
  }) : super(id);

  factory StarsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StarsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      star_id:
          serializationManager.deserialize<int>(jsonSerialization['star_id']),
    );
  }

  static final t = StarsInvolvedTable();

  int principal_id;

  int star_id;

  @override
  String get tableName => 'stars_involved';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'star_id': star_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'star_id': star_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'star_id': star_id,
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
      case 'star_id':
        star_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<StarsInvolved>> find(
    _i1.Session session, {
    StarsInvolvedExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<StarsInvolved>(
      where: where != null ? where(StarsInvolved.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<StarsInvolved?> findSingleRow(
    _i1.Session session, {
    StarsInvolvedExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<StarsInvolved>(
      where: where != null ? where(StarsInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<StarsInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<StarsInvolved>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required StarsInvolvedExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StarsInvolved>(
      where: where(StarsInvolved.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    StarsInvolvedExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StarsInvolved>(
      where: where != null ? where(StarsInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef StarsInvolvedExpressionBuilder = _i1.Expression Function(
    StarsInvolvedTable);

class StarsInvolvedTable extends _i1.Table {
  StarsInvolvedTable() : super(tableName: 'stars_involved');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final star_id = _i1.ColumnInt('star_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        star_id,
      ];
}

@Deprecated('Use StarsInvolvedTable.t instead.')
StarsInvolvedTable tStarsInvolved = StarsInvolvedTable();
