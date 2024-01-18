/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalPlace extends _i1.TableRow {
  PrincipalPlace._({
    int? id,
    required this.principalId,
    required this.placeId,
  }) : super(id);

  factory PrincipalPlace({
    int? id,
    required int principalId,
    required int placeId,
  }) = _PrincipalPlaceImpl;

  factory PrincipalPlace.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalPlace(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      placeId:
          serializationManager.deserialize<int>(jsonSerialization['placeId']),
    );
  }

  static final t = PrincipalPlaceTable();

  static const db = PrincipalPlaceRepository._();

  int principalId;

  int placeId;

  @override
  _i1.Table get table => t;

  PrincipalPlace copyWith({
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
      'id': id,
      'principalId': principalId,
      'placeId': placeId,
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
  static Future<List<PrincipalPlace>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalPlace>(
      where: where != null ? where(PrincipalPlace.t) : null,
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
  static Future<PrincipalPlace?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalPlace>(
      where: where != null ? where(PrincipalPlace.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalPlace?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalPlace>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPlaceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalPlace>(
      where: where(PrincipalPlace.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalPlace row, {
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
    PrincipalPlace row, {
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
    PrincipalPlace row, {
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
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalPlace>(
      where: where != null ? where(PrincipalPlace.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalPlaceInclude include() {
    return PrincipalPlaceInclude._();
  }

  static PrincipalPlaceIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPlaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPlaceTable>? orderByList,
    PrincipalPlaceInclude? include,
  }) {
    return PrincipalPlaceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalPlace.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalPlace.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalPlaceImpl extends PrincipalPlace {
  _PrincipalPlaceImpl({
    int? id,
    required int principalId,
    required int placeId,
  }) : super._(
          id: id,
          principalId: principalId,
          placeId: placeId,
        );

  @override
  PrincipalPlace copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? placeId,
  }) {
    return PrincipalPlace(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      placeId: placeId ?? this.placeId,
    );
  }
}

class PrincipalPlaceTable extends _i1.Table {
  PrincipalPlaceTable({super.tableRelation})
      : super(tableName: 'principal_place') {
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

@Deprecated('Use PrincipalPlaceTable.t instead.')
PrincipalPlaceTable tPrincipalPlace = PrincipalPlaceTable();

class PrincipalPlaceInclude extends _i1.IncludeObject {
  PrincipalPlaceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalPlace.t;
}

class PrincipalPlaceIncludeList extends _i1.IncludeList {
  PrincipalPlaceIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalPlace.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalPlace.t;
}

class PrincipalPlaceRepository {
  const PrincipalPlaceRepository._();

  Future<List<PrincipalPlace>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalPlaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPlaceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalPlace>(
      where: where?.call(PrincipalPlace.t),
      orderBy: orderBy?.call(PrincipalPlace.t),
      orderByList: orderByList?.call(PrincipalPlace.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPlace?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalPlaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalPlaceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalPlace>(
      where: where?.call(PrincipalPlace.t),
      orderBy: orderBy?.call(PrincipalPlace.t),
      orderByList: orderByList?.call(PrincipalPlace.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalPlace?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalPlace>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPlace>> insert(
    _i1.Session session,
    List<PrincipalPlace> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalPlace>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalPlace> insertRow(
    _i1.Session session,
    PrincipalPlace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalPlace>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalPlace>> update(
    _i1.Session session,
    List<PrincipalPlace> rows, {
    _i1.ColumnSelections<PrincipalPlaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalPlace>(
      rows,
      columns: columns?.call(PrincipalPlace.t),
      transaction: transaction,
    );
  }

  Future<PrincipalPlace> updateRow(
    _i1.Session session,
    PrincipalPlace row, {
    _i1.ColumnSelections<PrincipalPlaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalPlace>(
      row,
      columns: columns?.call(PrincipalPlace.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalPlace> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalPlace>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalPlace row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalPlace>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalPlaceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalPlace>(
      where: where(PrincipalPlace.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalPlaceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalPlace>(
      where: where?.call(PrincipalPlace.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
