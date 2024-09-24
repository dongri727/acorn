/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalPeople extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory PrincipalPeople.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalPeople(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      personId: jsonSerialization['personId'] as int,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'personId': personId,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<PrincipalPeople>(
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
    return session.db.findFirstRow<PrincipalPeople>(
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
    return session.db.findById<PrincipalPeople>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPeople>> insert(
    _i1.Session session,
    List<PrincipalPeople> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalPeople>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPeople> insertRow(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalPeople>(
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
    return session.db.update<PrincipalPeople>(
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
    return session.db.updateRow<PrincipalPeople>(
      row,
      columns: columns?.call(PrincipalPeople.t),
      transaction: transaction,
    );
  }

  Future<List<PrincipalPeople>> delete(
    _i1.Session session,
    List<PrincipalPeople> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPeople>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPeople> deleteRow(
    _i1.Session session,
    PrincipalPeople row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalPeople>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPeople>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalPeople>(
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
    return session.db.count<PrincipalPeople>(
      where: where?.call(PrincipalPeople.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
