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

abstract class Universe implements _i1.TableRow, _i1.ProtocolSerialization {
  Universe._({
    this.id,
    required this.universe,
  });

  factory Universe({
    int? id,
    required String universe,
  }) = _UniverseImpl;

  factory Universe.fromJson(Map<String, dynamic> jsonSerialization) {
    return Universe(
      id: jsonSerialization['id'] as int?,
      universe: jsonSerialization['universe'] as String,
    );
  }

  static final t = UniverseTable();

  static const db = UniverseRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'universe': universe,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Universe>(
      where: where?.call(Universe.t),
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Universe?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? offset,
    _i1.OrderByBuilder<UniverseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UniverseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Universe>(
      where: where?.call(Universe.t),
      orderBy: orderBy?.call(Universe.t),
      orderByList: orderByList?.call(Universe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Universe?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Universe>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Universe>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Universe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Universe>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Universe> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Universe>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Universe>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Universe> rows, {
    _i1.ColumnSelections<UniverseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Universe>(
      rows,
      columns: columns?.call(Universe.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Universe> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Universe row, {
    _i1.ColumnSelections<UniverseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Universe>(
      row,
      columns: columns?.call(Universe.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Universe>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Universe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Universe>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Universe> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Universe row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Universe>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Universe>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<UniverseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Universe>(
      where: where(Universe.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UniverseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Universe>(
      where: where?.call(Universe.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
