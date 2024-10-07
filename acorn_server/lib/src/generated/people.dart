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

abstract class People implements _i1.TableRow, _i1.ProtocolSerialization {
  People._({
    this.id,
    required this.person,
  });

  factory People({
    int? id,
    required String person,
  }) = _PeopleImpl;

  factory People.fromJson(Map<String, dynamic> jsonSerialization) {
    return People(
      id: jsonSerialization['id'] as int?,
      person: jsonSerialization['person'] as String,
    );
  }

  static final t = PeopleTable();

  static const db = PeopleRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'person': person,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<People>(
      where: where?.call(People.t),
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<People?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? offset,
    _i1.OrderByBuilder<PeopleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PeopleTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<People>(
      where: where?.call(People.t),
      orderBy: orderBy?.call(People.t),
      orderByList: orderByList?.call(People.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<People?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<People>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<People>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<People> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<People>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<People> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<People>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<People>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<People> rows, {
    _i1.ColumnSelections<PeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<People>(
      rows,
      columns: columns?.call(People.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<People> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    People row, {
    _i1.ColumnSelections<PeopleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<People>(
      row,
      columns: columns?.call(People.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<People>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<People> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<People>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<People> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    People row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<People>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<People>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<PeopleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<People>(
      where: where(People.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PeopleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<People>(
      where: where?.call(People.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
