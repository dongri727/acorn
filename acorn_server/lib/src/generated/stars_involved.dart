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

abstract class StarsInvolved
    implements _i1.TableRow, _i1.ProtocolSerialization {
  StarsInvolved._({
    this.id,
    required this.principalId,
    required this.starId,
  });

  factory StarsInvolved({
    int? id,
    required int principalId,
    required int starId,
  }) = _StarsInvolvedImpl;

  factory StarsInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return StarsInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      starId: jsonSerialization['starId'] as int,
    );
  }

  static final t = StarsInvolvedTable();

  static const db = StarsInvolvedRepository._();

  @override
  int? id;

  int principalId;

  int starId;

  @override
  _i1.Table get table => t;

  StarsInvolved copyWith({
    int? id,
    int? principalId,
    int? starId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'starId': starId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'starId': starId,
    };
  }

  static StarsInvolvedInclude include() {
    return StarsInvolvedInclude._();
  }

  static StarsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    StarsInvolvedInclude? include,
  }) {
    return StarsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StarsInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StarsInvolvedImpl extends StarsInvolved {
  _StarsInvolvedImpl({
    int? id,
    required int principalId,
    required int starId,
  }) : super._(
          id: id,
          principalId: principalId,
          starId: starId,
        );

  @override
  StarsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? starId,
  }) {
    return StarsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      starId: starId ?? this.starId,
    );
  }
}

class StarsInvolvedTable extends _i1.Table {
  StarsInvolvedTable({super.tableRelation})
      : super(tableName: 'stars_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    starId = _i1.ColumnInt(
      'starId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt starId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        starId,
      ];
}

class StarsInvolvedInclude extends _i1.IncludeObject {
  StarsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => StarsInvolved.t;
}

class StarsInvolvedIncludeList extends _i1.IncludeList {
  StarsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StarsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => StarsInvolved.t;
}

class StarsInvolvedRepository {
  const StarsInvolvedRepository._();

  Future<List<StarsInvolved>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<StarsInvolved?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<StarsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      orderBy: orderBy?.call(StarsInvolved.t),
      orderByList: orderByList?.call(StarsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<StarsInvolved?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<StarsInvolved>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<StarsInvolved>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<StarsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<StarsInvolved>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<StarsInvolved> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<StarsInvolved>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<StarsInvolved>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<StarsInvolved> rows, {
    _i1.ColumnSelections<StarsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<StarsInvolved>(
      rows,
      columns: columns?.call(StarsInvolved.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<StarsInvolved> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    StarsInvolved row, {
    _i1.ColumnSelections<StarsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<StarsInvolved>(
      row,
      columns: columns?.call(StarsInvolved.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<StarsInvolved>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<StarsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<StarsInvolved>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<StarsInvolved> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    StarsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<StarsInvolved>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<StarsInvolved>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<StarsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<StarsInvolved>(
      where: where(StarsInvolved.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<StarsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<StarsInvolved>(
      where: where?.call(StarsInvolved.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
