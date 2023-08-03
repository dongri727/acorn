/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class AttsInvolved extends _i1.TableRow {
  AttsInvolved({
    int? id,
    required this.principal_id,
    required this.att_id,
  }) : super(id);

  factory AttsInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return AttsInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      att_id:
          serializationManager.deserialize<int>(jsonSerialization['att_id']),
    );
  }

  static final t = AttsInvolvedTable();

  int principal_id;

  int att_id;

  @override
  String get tableName => 'atts_involved';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'att_id': att_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'att_id': att_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'att_id': att_id,
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
      case 'att_id':
        att_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<AttsInvolved>> find(
    _i1.Session session, {
    AttsInvolvedExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AttsInvolved>(
      where: where != null ? where(AttsInvolved.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<AttsInvolved?> findSingleRow(
    _i1.Session session, {
    AttsInvolvedExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<AttsInvolved>(
      where: where != null ? where(AttsInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<AttsInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<AttsInvolved>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required AttsInvolvedExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AttsInvolved>(
      where: where(AttsInvolved.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    AttsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    AttsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    AttsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    AttsInvolvedExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AttsInvolved>(
      where: where != null ? where(AttsInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef AttsInvolvedExpressionBuilder = _i1.Expression Function(
    AttsInvolvedTable);

class AttsInvolvedTable extends _i1.Table {
  AttsInvolvedTable() : super(tableName: 'atts_involved');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final att_id = _i1.ColumnInt('att_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        att_id,
      ];
}

@Deprecated('Use AttsInvolvedTable.t instead.')
AttsInvolvedTable tAttsInvolved = AttsInvolvedTable();
