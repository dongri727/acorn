/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PlaceInvolved extends _i1.TableRow {
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

  factory PlaceInvolved.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PlaceInvolved(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      placeId:
          serializationManager.deserialize<int>(jsonSerialization['placeId']),
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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'placeId': placeId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'principalId':
        principalId = value;
        return;
      case 'placeId':
        placeId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PlaceInvolved>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PlaceInvolved>(
      where: where != null ? where(PlaceInvolved.t) : null,
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
  static Future<PlaceInvolved?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PlaceInvolved>(
      where: where != null ? where(PlaceInvolved.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PlaceInvolved?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PlaceInvolved>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PlaceInvolved>(
      where: where(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PlaceInvolved row, {
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
    PlaceInvolved row, {
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
    PlaceInvolved row, {
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
    _i1.WhereExpressionBuilder<PlaceInvolvedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PlaceInvolved>(
      where: where != null ? where(PlaceInvolved.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use PlaceInvolvedTable.t instead.')
PlaceInvolvedTable tPlaceInvolved = PlaceInvolvedTable();

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
    return session.dbNext.find<PlaceInvolved>(
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
    return session.dbNext.findFirstRow<PlaceInvolved>(
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
    return session.dbNext.findById<PlaceInvolved>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PlaceInvolved>> insert(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PlaceInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<PlaceInvolved> insertRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PlaceInvolved>(
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
    return session.dbNext.update<PlaceInvolved>(
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
    return session.dbNext.updateRow<PlaceInvolved>(
      row,
      columns: columns?.call(PlaceInvolved.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PlaceInvolved> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PlaceInvolved>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PlaceInvolved row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PlaceInvolved>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceInvolvedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PlaceInvolved>(
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
    return session.dbNext.count<PlaceInvolved>(
      where: where?.call(PlaceInvolved.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
