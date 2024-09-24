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

abstract class PrincipalCatt extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  PrincipalCatt._({
    int? id,
    required this.principalId,
    required this.cattId,
  }) : super(id);

  factory PrincipalCatt({
    int? id,
    required int principalId,
    required int cattId,
  }) = _PrincipalCattImpl;

  factory PrincipalCatt.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalCatt(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      cattId: jsonSerialization['cattId'] as int,
    );
  }

  static final t = PrincipalCattTable();

  static const db = PrincipalCattRepository._();

  int principalId;

  int cattId;

  @override
  _i1.Table get table => t;

  PrincipalCatt copyWith({
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

  static PrincipalCattInclude include() {
    return PrincipalCattInclude._();
  }

  static PrincipalCattIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    PrincipalCattInclude? include,
  }) {
    return PrincipalCattIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalCatt.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalCattImpl extends PrincipalCatt {
  _PrincipalCattImpl({
    int? id,
    required int principalId,
    required int cattId,
  }) : super._(
          id: id,
          principalId: principalId,
          cattId: cattId,
        );

  @override
  PrincipalCatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? cattId,
  }) {
    return PrincipalCatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      cattId: cattId ?? this.cattId,
    );
  }
}

class PrincipalCattTable extends _i1.Table {
  PrincipalCattTable({super.tableRelation})
      : super(tableName: 'principal_catt') {
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

class PrincipalCattInclude extends _i1.IncludeObject {
  PrincipalCattInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalCatt.t;
}

class PrincipalCattIncludeList extends _i1.IncludeList {
  PrincipalCattIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalCatt.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalCatt.t;
}

class PrincipalCattRepository {
  const PrincipalCattRepository._();

  Future<List<PrincipalCatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderByList: orderByList?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalCattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      orderBy: orderBy?.call(PrincipalCatt.t),
      orderByList: orderByList?.call(PrincipalCatt.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalCatt>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCatt>> insert(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalCatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt> insertRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalCatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCatt>> update(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.ColumnSelections<PrincipalCattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalCatt>(
      rows,
      columns: columns?.call(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  Future<PrincipalCatt> updateRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.ColumnSelections<PrincipalCattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalCatt>(
      row,
      columns: columns?.call(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  Future<List<PrincipalCatt>> delete(
    _i1.Session session,
    List<PrincipalCatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalCatt> deleteRow(
    _i1.Session session,
    PrincipalCatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalCatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCatt>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalCatt>(
      where: where(PrincipalCatt.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCattTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalCatt>(
      where: where?.call(PrincipalCatt.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
