/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalPeople extends _i1.TableRow {
  PrincipalPeople._({
    int? id,
    required this.principalId,
    required this.personId,
  }) : super(id);

  factory PrincipalPeople({
    int? id,
    required int principalId,
    required int personId,
  }) = _PrincipalPeopleImpl;

  factory PrincipalPeople.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalPeople(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      personId:
          serializationManager.deserialize<int>(jsonSerialization['personId']),
    );
  }

  static final t = PrincipalPeopleTable();

  static const db = PrincipalPeopleRepository._();

  int principalId;

  int personId;

  @override
  _i1.Table get table => t;

  PrincipalPeople copyWith({
    int? id,
    int? principalId,
    int? personId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'personId': personId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'personId': personId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
      'personId': personId,
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
      case 'principalId':
        principalId = value;
        return;
      case 'personId':
        personId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalPeople>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<PrincipalPeople?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalPeople?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalPeople>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPeople>(
      where: where(PrincipalPeople.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
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

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
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

  static PrincipalPeopleInclude include() {
    return PrincipalPeopleInclude._();
  }

  static PrincipalPeopleIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPeopleTable>? orderByList,
    PrincipalPeopleInclude? include,
  }) {
    return PrincipalPeopleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalPeople.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalPeople.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalPeopleImpl extends PrincipalPeople {
  _PrincipalPeopleImpl({
    int? id,
    required int principalId,
    required int personId,
  }) : super._(
          id: id,
          principalId: principalId,
          personId: personId,
        );

  @override
  PrincipalPeople copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? personId,
  }) {
    return PrincipalPeople(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      personId: personId ?? this.personId,
    );
  }
}

class PrincipalPeopleTable extends _i1.Table {
  PrincipalPeopleTable({super.tableRelation})
      : super(tableName: 'principal_people') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    personId = _i1.ColumnInt(
      'personId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt personId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        personId,
      ];
}

@Deprecated('Use PrincipalPeopleTable.t instead.')
PrincipalPeopleTable tPrincipalPeople = PrincipalPeopleTable();

class PrincipalPeopleInclude extends _i1.IncludeObject {
  PrincipalPeopleInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalPeople.t;
}

class PrincipalPeopleIncludeList extends _i1.IncludeList {
  PrincipalPeopleIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalPeople.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalPeople.t;
}

class PrincipalPeopleRepository {
  const PrincipalPeopleRepository._();

  Future<List<PrincipalPeople>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalPeople>(
      where: where?.call(PrincipalPeople.t),
      orderBy: orderBy?.call(PrincipalPeople.t),
      orderByList: orderByList?.call(PrincipalPeople.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPeople?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalPeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalPeople>(
      where: where?.call(PrincipalPeople.t),
      orderBy: orderBy?.call(PrincipalPeople.t),
      orderByList: orderByList?.call(PrincipalPeople.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPeople?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalPeople>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPeople>> insert(
    _i1.Session session,
    List<PrincipalPeople> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalPeople>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPeople> insertRow(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalPeople>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPeople>> update(
    _i1.Session session,
    List<PrincipalPeople> rows, {
    _i1.ColumnSelections<PrincipalPeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalPeople>(
      rows,
      columns: columns?.call(PrincipalPeople.t),
      transaction: transaction,
    );
  }

  Future<PrincipalPeople> updateRow(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.ColumnSelections<PrincipalPeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalPeople>(
      row,
      columns: columns?.call(PrincipalPeople.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalPeople> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalPeople>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalPeople>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalPeople>(
      where: where(PrincipalPeople.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPeopleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalPeople>(
      where: where?.call(PrincipalPeople.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
