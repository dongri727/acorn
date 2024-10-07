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

abstract class WithQgis implements _i1.TableRow, _i1.ProtocolSerialization {
  WithQgis._({
    this.id,
    required this.principalId,
    required this.name,
    required this.geo,
    required this.year,
  });

  factory WithQgis({
    int? id,
    required int principalId,
    required String name,
    required String geo,
    required String year,
  }) = _WithQgisImpl;

  factory WithQgis.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithQgis(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      name: jsonSerialization['name'] as String,
      geo: jsonSerialization['geo'] as String,
      year: jsonSerialization['year'] as String,
    );
  }

  static final t = WithQgisTable();

  static const db = WithQgisRepository._();

  @override
  int? id;

  int principalId;

  String name;

  String geo;

  String year;

  @override
  _i1.Table get table => t;

  WithQgis copyWith({
    int? id,
    int? principalId,
    String? name,
    String? geo,
    String? year,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'name': name,
      'geo': geo,
      'year': year,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'name': name,
      'geo': geo,
      'year': year,
    };
  }

  static WithQgisInclude include() {
    return WithQgisInclude._();
  }

  static WithQgisIncludeList includeList({
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithQgisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithQgisTable>? orderByList,
    WithQgisInclude? include,
  }) {
    return WithQgisIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WithQgis.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WithQgis.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WithQgisImpl extends WithQgis {
  _WithQgisImpl({
    int? id,
    required int principalId,
    required String name,
    required String geo,
    required String year,
  }) : super._(
          id: id,
          principalId: principalId,
          name: name,
          geo: geo,
          year: year,
        );

  @override
  WithQgis copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? name,
    String? geo,
    String? year,
  }) {
    return WithQgis(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      name: name ?? this.name,
      geo: geo ?? this.geo,
      year: year ?? this.year,
    );
  }
}

class WithQgisTable extends _i1.Table {
  WithQgisTable({super.tableRelation}) : super(tableName: 'with_qgis') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    geo = _i1.ColumnString(
      'geo',
      this,
    );
    year = _i1.ColumnString(
      'year',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString geo;

  late final _i1.ColumnString year;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        name,
        geo,
        year,
      ];
}

class WithQgisInclude extends _i1.IncludeObject {
  WithQgisInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => WithQgis.t;
}

class WithQgisIncludeList extends _i1.IncludeList {
  WithQgisIncludeList._({
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WithQgis.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => WithQgis.t;
}

class WithQgisRepository {
  const WithQgisRepository._();

  Future<List<WithQgis>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithQgisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithQgisTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<WithQgis>(
      where: where?.call(WithQgis.t),
      orderBy: orderBy?.call(WithQgis.t),
      orderByList: orderByList?.call(WithQgis.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<WithQgis?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? offset,
    _i1.OrderByBuilder<WithQgisTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithQgisTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<WithQgis>(
      where: where?.call(WithQgis.t),
      orderBy: orderBy?.call(WithQgis.t),
      orderByList: orderByList?.call(WithQgis.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<WithQgis?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<WithQgis>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<WithQgis>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<WithQgis> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<WithQgis>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<WithQgis> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    WithQgis row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<WithQgis>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<WithQgis>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<WithQgis> rows, {
    _i1.ColumnSelections<WithQgisTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<WithQgis>(
      rows,
      columns: columns?.call(WithQgis.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<WithQgis> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    WithQgis row, {
    _i1.ColumnSelections<WithQgisTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<WithQgis>(
      row,
      columns: columns?.call(WithQgis.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<WithQgis>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<WithQgis> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<WithQgis>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<WithQgis> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    WithQgis row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<WithQgis>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<WithQgis>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<WithQgisTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<WithQgis>(
      where: where(WithQgis.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<WithQgisTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<WithQgis>(
      where: where?.call(WithQgis.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
