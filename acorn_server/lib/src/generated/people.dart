/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class People extends _i1.TableRow {
  People._({
    int? id,
    required this.person,
  }) : super(id);

  factory People({
    int? id,
    required String person,
  }) = _PeopleImpl;

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

  static const db = PeopleRepository._();

  String person;

  @override
  _i1.Table get table => t;

  People copyWith({
    int? id,
    String? person,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'person': person,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<People>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<People?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<People?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<People>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<People>(
      where: where(People.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
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

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
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

  static PeopleInclude include() {
    return PeopleInclude._();
  }

  static PeopleIncludeList includeList({
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    PeopleInclude? include,
  }) {
    return PeopleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(People.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(People.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PeopleImpl extends People {
  _PeopleImpl({
    int? id,
    required String person,
  }) : super._(
          id: id,
          person: person,
        );

  @override
  People copyWith({
    Object? id = _Undefined,
    String? person,
  }) {
    return People(
      id: id is int? ? id : this.id,
      person: person ?? this.person,
    );
  }
}

class PeopleTable extends _i1.Table {
  PeopleTable({super.tableRelation}) : super(tableName: 'people') {
    person = _i1.ColumnString(
      'person',
      this,
    );
  }

  late final _i1.ColumnString person;

  @override
  List<_i1.Column> get columns => [
        id,
        person,
      ];
}

@Deprecated('Use PeopleTable.t instead.')
PeopleTable tPeople = PeopleTable();

class PeopleInclude extends _i1.IncludeObject {
  PeopleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => People.t;
}

class PeopleIncludeList extends _i1.IncludeList {
  PeopleIncludeList._({
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(People.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => People.t;
}

class PeopleRepository {
  const PeopleRepository._();

  Future<List<People>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<People>(
      where: where?.call(People.t),
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<People?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<People>(
      where: where?.call(People.t),
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<People?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<People>(
      id,
      transaction: transaction,
    );
  }

  Future<List<People>> insert(
    _i1.Session session,
    List<People> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<People>(
      rows,
      transaction: transaction,
    );
  }

  Future<People> insertRow(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<People>(
      row,
      transaction: transaction,
    );
  }

  Future<List<People>> update(
    _i1.Session session,
    List<People> rows, {
    _i1.ColumnSelections<PeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<People>(
      rows,
      columns: columns?.call(People.t),
      transaction: transaction,
    );
  }

  Future<People> updateRow(
    _i1.Session session,
    People row, {
    _i1.ColumnSelections<PeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<People>(
      row,
      columns: columns?.call(People.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<People> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<People>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<People>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<People>(
      where: where(People.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<People>(
      where: where?.call(People.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
