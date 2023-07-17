/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class People extends _i1.TableRow {
  People({
    int? id,
    required this.person,
  }) : super(id);

  factory People.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return People(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      person:
          serializationManager.deserialize<String>(jsonSerialization['person']),
    );
  }

  static final t = PeopleTable();

  String person;

  @override
  String get tableName => 'people';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'person': person,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'person': person,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'person': person,
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
      case 'person':
        person = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<People>> find(
    _i1.Session session, {
    PeopleExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<People>(
      where: where != null ? where(People.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<People?> findSingleRow(
    _i1.Session session, {
    PeopleExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<People>(
      where: where != null ? where(People.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<People?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<People>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PeopleExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<People>(
      where: where(People.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PeopleExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<People>(
      where: where != null ? where(People.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PeopleExpressionBuilder = _i1.Expression Function(PeopleTable);

class PeopleTable extends _i1.Table {
  PeopleTable() : super(tableName: 'people');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final person = _i1.ColumnString('person');

  @override
  List<_i1.Column> get columns => [
        id,
        person,
      ];
}

@Deprecated('Use PeopleTable.t instead.')
PeopleTable tPeople = PeopleTable();
