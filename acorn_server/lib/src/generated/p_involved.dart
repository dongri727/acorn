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

abstract class PlaceInvolved extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  PlaceInvolved._({
    int? id,
    required this.principalId,
    required this.placeId,
  }) : super(id);

  factory PlaceInvolved({
    int? id,
    required int principalId,
    required int placeId,
  }) = _PlaceInvolvedImpl;

  factory PlaceInvolved.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlaceInvolved(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      placeId: jsonSerialization['placeId'] as int,
    );
  }

  static final t = PlaceInvolvedTable();

  static const db = PlaceInvolvedRepository._();

  int principalId;

  int placeId;

  @override
  _i1.Table get table => t;

  PlaceInvolved copyWith({
    int? id,
    int? principalId,
    int? placeId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  static PlaceInvolvedInclude include() {
    return PlaceInvolvedInclude._();
  }

  static PlaceInvolvedIncludeList includeList({
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceInvolvedTable>? orderByList,
    PlaceInvolvedInclude? include,
  }) {
    return PlaceInvolvedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlaceInvolved.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PlaceInvolved.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlaceInvolvedImpl extends PlaceInvolved {
  _PlaceInvolvedImpl({
    int? id,
    required int principalId,
    required int placeId,
  }) : super._(
          id: id,
          principalId: principalId,
          placeId: placeId,
        );

  @override
  PlaceInvolved copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? placeId,
  }) {
    return PlaceInvolved(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      placeId: placeId ?? this.placeId,
    );
  }
}

class PlaceInvolvedTable extends _i1.Table {
  PlaceInvolvedTable({super.tableRelation})
      : super(tableName: 'place_involved') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    placeId = _i1.ColumnInt(
      'placeId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt placeId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        placeId,
      ];
}

class PlaceInvolvedInclude extends _i1.IncludeObject {
  PlaceInvolvedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PlaceInvolved.t;
}

class PlaceInvolvedIncludeList extends _i1.IncludeList {
  PlaceInvolvedIncludeList._({
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PlaceInvolved.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PlaceInvolved.t;
}

class PlaceInvolvedRepository {
  const PlaceInvolvedRepository._();

  Future<List<PlaceInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      orderBy: orderBy?.call(PlaceInvolved.t),
      orderByList: orderByList?.call(PlaceInvolved.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PlaceInvolved?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlaceInvolvedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceInvolvedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      orderBy: orderBy?.call(PlaceInvolved.t),
      orderByList: orderByList?.call(PlaceInvolved.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PlaceInvolved?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PlaceInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PlaceInvolved>> insert(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PlaceInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<PlaceInvolved> insertRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PlaceInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PlaceInvolved>> update(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.ColumnSelections<PlaceInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PlaceInvolved>(
      rows,
      columns: columns?.call(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  Future<PlaceInvolved> updateRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.ColumnSelections<PlaceInvolvedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PlaceInvolved>(
      row,
      columns: columns?.call(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<PlaceInvolved>> delete(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PlaceInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<PlaceInvolved> deleteRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PlaceInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PlaceInvolved>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PlaceInvolved>(
      where: where(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
