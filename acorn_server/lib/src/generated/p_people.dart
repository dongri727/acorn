/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class PrincipalPeople extends _i1.TableRow {
  PrincipalPeople({
    int? id,
    required this.principal_id,
    required this.person_id,
  }) : super(id);

  factory PrincipalPeople.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalPeople(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principal_id: serializationManager
          .deserialize<int>(jsonSerialization['principal_id']),
      person_id:
          serializationManager.deserialize<int>(jsonSerialization['person_id']),
    );
  }

  static final t = PrincipalPeopleTable();

  int principal_id;

  int person_id;

  @override
  String get tableName => 'principal_people';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'person_id': person_id,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principal_id': principal_id,
      'person_id': person_id,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principal_id': principal_id,
      'person_id': person_id,
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
      case 'person_id':
        person_id = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<PrincipalPeople>> find(
    _i1.Session session, {
    PrincipalPeopleExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPeople>(
      where: where != null ? where(PrincipalPeople.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalPeople?> findSingleRow(
    _i1.Session session, {
    PrincipalPeopleExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalPeople>(
      where: where != null ? where(PrincipalPeople.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<PrincipalPeople?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalPeople>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PrincipalPeopleExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPeople>(
      where: where(PrincipalPeople.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PrincipalPeopleExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPeople>(
      where: where != null ? where(PrincipalPeople.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PrincipalPeopleExpressionBuilder = _i1.Expression Function(
    PrincipalPeopleTable);

class PrincipalPeopleTable extends _i1.Table {
  PrincipalPeopleTable() : super(tableName: 'principal_people');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final principal_id = _i1.ColumnInt('principal_id');

  final person_id = _i1.ColumnInt('person_id');

  @override
  List<_i1.Column> get columns => [
        id,
        principal_id,
        person_id,
      ];
}

@Deprecated('Use PrincipalPeopleTable.t instead.')
PrincipalPeopleTable tPrincipalPeople = PrincipalPeopleTable();
