/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Universe extends _i1.TableRow {
  Universe._({
    int? id,
    required this.universe,
  }) : super(id);

  factory Universe({
    int? id,
    required String universe,
  }) = _UniverseImpl;

  factory Universe.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Universe(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      universe: serializationManager
          .deserialize<String>(jsonSerialization['universe']),
    );
  }

  static final t = UniverseTable();

  static const db = UniverseRepository._();

  String universe;

  @override
  _i1.Table get table => t;

  Universe copyWith({
    int? id,
    String? universe,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'universe': universe,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'universe': universe,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'universe': universe,
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
      case 'universe':
        universe = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Universe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Universe>(
      where: where != null ? where(Universe.t) : null,
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
  static Future<Universe?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Universe>(
      where: where != null ? where(Universe.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Universe?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Universe>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UniverseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Universe>(
      where: where(Universe.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Universe row, {
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
    Universe row, {
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
    Universe row, {
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
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Universe>(
      where: where != null ? where(Universe.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UniverseInclude include() {
    return UniverseInclude._();
  }

  static UniverseIncludeList includeList({
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    UniverseInclude? include,
  }) {
    return UniverseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Universe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Universe.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UniverseImpl extends Universe {
  _UniverseImpl({
    int? id,
    required String universe,
  }) : super._(
          id: id,
          universe: universe,
        );

  @override
  Universe copyWith({
    Object? id = _Undefined,
    String? universe,
  }) {
    return Universe(
      id: id is int? ? id : this.id,
      universe: universe ?? this.universe,
    );
  }
}

class UniverseTable extends _i1.Table {
  UniverseTable({super.tableRelation}) : super(tableName: 'universe') {
    universe = _i1.ColumnString(
      'universe',
      this,
    );
  }

  late final _i1.ColumnString universe;

  @override
  List<_i1.Column> get columns => [
        id,
        universe,
      ];
}

@Deprecated('Use UniverseTable.t instead.')
UniverseTable tUniverse = UniverseTable();

class UniverseInclude extends _i1.IncludeObject {
  UniverseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Universe.t;
}

class UniverseIncludeList extends _i1.IncludeList {
  UniverseIncludeList._({
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Universe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Universe.t;
}

class UniverseRepository {
  const UniverseRepository._();

  Future<List<Universe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Universe>(
      where: where?.call(Universe.t),
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Universe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Universe>(
      where: where?.call(Universe.t),
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Universe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Universe>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Universe>> insert(
    _i1.Session session,
    List<Universe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Universe>(
      rows,
      transaction: transaction,
    );
  }

  Future<Universe> insertRow(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Universe>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Universe>> update(
    _i1.Session session,
    List<Universe> rows, {
    _i1.ColumnSelections<UniverseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Universe>(
      rows,
      columns: columns?.call(Universe.t),
      transaction: transaction,
    );
  }

  Future<Universe> updateRow(
    _i1.Session session,
    Universe row, {
    _i1.ColumnSelections<UniverseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Universe>(
      row,
      columns: columns?.call(Universe.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Universe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Universe>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Universe>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UniverseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Universe>(
      where: where(Universe.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Universe>(
      where: where?.call(Universe.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
