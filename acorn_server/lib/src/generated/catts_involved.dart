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

abstract class CattsInvolved
    implements _i1.TableRow, _i1.ProtocolSerialization {
  CattsInvolved._({
    this.id,
    required this.principalId,
    required this.cattId,
  });

  factory CattsInvolved({
    int? id,
    required int principalId,
    required int cattId,
  }) = _CattsInvolvedImpl;

  factory CattsInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return CattsInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      cattId: jsonSerialization['cattId'] as int,
    );
  }

  static final t = CattsInvolvedTable();

  static const db = CattsInvolvedRepository._();

  @override
  int? id;

  int principalId;

  int cattId;

  @override
  _i1.Table get table => t;

  CattsInvolved copyWith({
    int? id,
    int? principalId,
    int? cattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'cattId': cattId,
    };
  }

  static CattsInvolvedInclude include() {
    return CattsInvolvedInclude._();
  }

  static CattsInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    CattsInvolvedInclude? include,
  }) {
    return CattsInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CattsInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CattsInvolvedImpl extends CattsInvolved {
  _CattsInvolvedImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  @override
  CattsInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return CattsInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}

class CattsInvolvedTable extends _i1.Table {
  CattsInvolvedTable({super.tableRelation})
      : super(tableName: 'catts_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    cattId = _i1.ColumnInt(
      'cattId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt cattId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        cattId,
      ];
}

class CattsInvolvedInclude extends _i1.IncludeObject {
  CattsInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => CattsInvolved.t;
}

class CattsInvolvedIncludeList extends _i1.IncludeList {
  CattsInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CattsInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => CattsInvolved.t;
}

class CattsInvolvedRepository {
  const CattsInvolvedRepository._();

  Future<List<CattsInvolved>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<CattsInvolved?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<CattsInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CattsInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      orderBy: orderBy?.call(CattsInvolved.t),
      orderByList: orderByList?.call(CattsInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<CattsInvolved?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<CattsInvolved>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<CattsInvolved>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<CattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<CattsInvolved>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<CattsInvolved> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    CattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<CattsInvolved>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<CattsInvolved>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<CattsInvolved> rows, {
    _i1.ColumnSelections<CattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<CattsInvolved>(
      rows,
      columns: columns?.call(CattsInvolved.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<CattsInvolved> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    CattsInvolved row, {
    _i1.ColumnSelections<CattsInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<CattsInvolved>(
      row,
      columns: columns?.call(CattsInvolved.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<CattsInvolved>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<CattsInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<CattsInvolved>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<CattsInvolved> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    CattsInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<CattsInvolved>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<CattsInvolved>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<CattsInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<CattsInvolved>(
      where: where(CattsInvolved.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<CattsInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<CattsInvolved>(
      where: where?.call(CattsInvolved.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
