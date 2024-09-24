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

abstract class PrincipalPatt extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  PrincipalPatt._({
    int? id,
    required this.principalId,
    required this.pattId,
  }) : super(id);

  factory PrincipalPatt({
    int? id,
    required int principalId,
    required int pattId,
  }) = _PrincipalPattImpl;

  factory PrincipalPatt.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalPatt(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      pattId: jsonSerialization['pattId'] as int,
    );
  }

  static final t = PrincipalPattTable();

  static const db = PrincipalPattRepository._();

  int principalId;

  int pattId;

  @override
  _i1.Table get table => t;

  PrincipalPatt copyWith({
    int? id,
    int? principalId,
    int? pattId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'pattId': pattId,
    };
  }

  static PrincipalPattInclude include() {
    return PrincipalPattInclude._();
  }

  static PrincipalPattIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    PrincipalPattInclude? include,
  }) {
    return PrincipalPattIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalPatt.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalPattImpl extends PrincipalPatt {
  _PrincipalPattImpl({
    int? id,
    required int principalId,
    required int pattId,
  }) : super._(
          id: id,
          principalId: principalId,
          pattId: pattId,
        );

  @override
  PrincipalPatt copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? pattId,
  }) {
    return PrincipalPatt(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      pattId: pattId ?? this.pattId,
    );
  }
}

class PrincipalPattTable extends _i1.Table {
  PrincipalPattTable({super.tableRelation})
      : super(tableName: 'principal_patt') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    pattId = _i1.ColumnInt(
      'pattId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt pattId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        pattId,
      ];
}

class PrincipalPattInclude extends _i1.IncludeObject {
  PrincipalPattInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalPatt.t;
}

class PrincipalPattIncludeList extends _i1.IncludeList {
  PrincipalPattIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalPatt.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalPatt.t;
}

class PrincipalPattRepository {
  const PrincipalPattRepository._();

  Future<List<PrincipalPatt>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalPattTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPattTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      orderBy: orderBy?.call(PrincipalPatt.t),
      orderByList: orderByList?.call(PrincipalPatt.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrincipalPatt>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPatt>> insert(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalPatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt> insertRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalPatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPatt>> update(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.ColumnSelections<PrincipalPattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrincipalPatt>(
      rows,
      columns: columns?.call(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  Future<PrincipalPatt> updateRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.ColumnSelections<PrincipalPattTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrincipalPatt>(
      row,
      columns: columns?.call(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  Future<List<PrincipalPatt>> delete(
    _i1.Session session,
    List<PrincipalPatt> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPatt>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPatt> deleteRow(
    _i1.Session session,
    PrincipalPatt row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalPatt>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPatt>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPattTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalPatt>(
      where: where(PrincipalPatt.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPattTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPatt>(
      where: where?.call(PrincipalPatt.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
