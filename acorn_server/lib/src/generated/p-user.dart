/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class PrincipalUser extends _i1.TableRow {
  PrincipalUser({
    int? id,
    required this.principal_id,
    required this.user_id,
  }) : super(id);

  factory PrincipalUser.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalUser(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      user_id:
          serializationManager.deserialize<int>(jsonSerialization['user_id']),
    );
  }

  static final t = PrincipalUserTable();

  int principal_id;

  int user_id;

  @override
  String get tableName => 'principal_user';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'user_id': user_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'user_id': user_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'user_id': user_id,
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
      case 'user_id':
        user_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<PrincipalUser>> find(
    _i1.Session session, {
    PrincipalUserExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalUser>(
      where: where != null ? where(PrincipalUser.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalUser?> findSingleRow(
    _i1.Session session, {
    PrincipalUserExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalUser>(
      where: where != null ? where(PrincipalUser.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalUser?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalUser>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalUserExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalUser>(
      where: where(PrincipalUser.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    PrincipalUser row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalUserExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalUser>(
      where: where != null ? where(PrincipalUser.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalUserExpressionBuilder = _i1.Expression Function(
    PrincipalUserTable);

class PrincipalUserTable extends _i1.Table {
  PrincipalUserTable() : super(tableName: 'principal_user');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final user_id = _i1.ColumnInt('user_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        user_id,
      ];
}

@Deprecated('Use PrincipalUserTable.t instead.')
PrincipalUserTable tPrincipalUser = PrincipalUserTable();
