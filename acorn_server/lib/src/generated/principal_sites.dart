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

abstract class PrincipalSites
    implements _i1.TableRow, _i1.ProtocolSerialization {
  PrincipalSites._({
    this.id,
    required this.principalId,
    required this.siteId,
  });

  factory PrincipalSites({
    int? id,
    required int principalId,
    required int siteId,
  }) = _PrincipalSitesImpl;

  factory PrincipalSites.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalSites(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      siteId: jsonSerialization['siteId'] as int,
    );
  }

  static final t = PrincipalSitesTable();

  static const db = PrincipalSitesRepository._();

  @override
  int? id;

  int principalId;

  int siteId;

  @override
  _i1.Table get table => t;

  PrincipalSites copyWith({
    int? id,
    int? principalId,
    int? siteId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'siteId': siteId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'siteId': siteId,
    };
  }

  static PrincipalSitesInclude include() {
    return PrincipalSitesInclude._();
  }

  static PrincipalSitesIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    PrincipalSitesInclude? include,
  }) {
    return PrincipalSitesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalSites.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalSitesImpl extends PrincipalSites {
  _PrincipalSitesImpl({
    int? id,
    required int principalId,
    required int siteId,
  }) : super._(
          id: id,
          principalId: principalId,
          siteId: siteId,
        );

  @override
  PrincipalSites copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? siteId,
  }) {
    return PrincipalSites(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      siteId: siteId ?? this.siteId,
    );
  }
}

class PrincipalSitesTable extends _i1.Table {
  PrincipalSitesTable({super.tableRelation})
      : super(tableName: 'principal_sites') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    siteId = _i1.ColumnInt(
      'siteId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt siteId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        siteId,
      ];
}

class PrincipalSitesInclude extends _i1.IncludeObject {
  PrincipalSitesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalSites.t;
}

class PrincipalSitesIncludeList extends _i1.IncludeList {
  PrincipalSitesIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalSites.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalSites.t;
}

class PrincipalSitesRepository {
  const PrincipalSitesRepository._();

  Future<List<PrincipalSites>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<PrincipalSites>(
      where: where?.call(PrincipalSites.t),
      orderBy: orderBy?.call(PrincipalSites.t),
      orderByList: orderByList?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<PrincipalSites?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalSitesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalSitesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<PrincipalSites>(
      where: where?.call(PrincipalSites.t),
      orderBy: orderBy?.call(PrincipalSites.t),
      orderByList: orderByList?.call(PrincipalSites.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<PrincipalSites?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<PrincipalSites>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<PrincipalSites>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<PrincipalSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<PrincipalSites>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<PrincipalSites> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    PrincipalSites row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<PrincipalSites>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<PrincipalSites>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<PrincipalSites> rows, {
    _i1.ColumnSelections<PrincipalSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<PrincipalSites>(
      rows,
      columns: columns?.call(PrincipalSites.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<PrincipalSites> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    PrincipalSites row, {
    _i1.ColumnSelections<PrincipalSitesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<PrincipalSites>(
      row,
      columns: columns?.call(PrincipalSites.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<PrincipalSites>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<PrincipalSites> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<PrincipalSites>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<PrincipalSites> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    PrincipalSites row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<PrincipalSites>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<PrincipalSites>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<PrincipalSitesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<PrincipalSites>(
      where: where(PrincipalSites.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PrincipalSitesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<PrincipalSites>(
      where: where?.call(PrincipalSites.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}