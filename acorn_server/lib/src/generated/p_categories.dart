/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class PrincipalCategories extends _i1.TableRow {
  PrincipalCategories._({
    int? id,
    required this.principalId,
    required this.categoryId,
  }) : super(id);

  factory PrincipalCategories({
    int? id,
    required int principalId,
    required int categoryId,
  }) = _PrincipalCategoriesImpl;

  factory PrincipalCategories.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return PrincipalCategories(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      principalId: serializationManager
          .deserialize<int>(jsonSerialization['principalId']),
      categoryId: serializationManager
          .deserialize<int>(jsonSerialization['categoryId']),
    );
  }

  static final t = PrincipalCategoriesTable();

  static const db = PrincipalCategoriesRepository._();

  int principalId;

  int categoryId;

  @override
  _i1.Table get table => t;

  PrincipalCategories copyWith({
    int? id,
    int? principalId,
    int? categoryId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
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
      case 'categoryId':
        categoryId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<PrincipalCategories>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrincipalCategories>(
      where: where != null ? where(PrincipalCategories.t) : null,
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
  static Future<PrincipalCategories?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<PrincipalCategories>(
      where: where != null ? where(PrincipalCategories.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<PrincipalCategories?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<PrincipalCategories>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCategories>(
      where: where(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    PrincipalCategories row, {
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
    PrincipalCategories row, {
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
    PrincipalCategories row, {
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
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrincipalCategories>(
      where: where != null ? where(PrincipalCategories.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PrincipalCategoriesInclude include() {
    return PrincipalCategoriesInclude._();
  }

  static PrincipalCategoriesIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCategoriesTable>? orderByList,
    PrincipalCategoriesInclude? include,
  }) {
    return PrincipalCategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrincipalCategories.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrincipalCategories.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PrincipalCategoriesImpl extends PrincipalCategories {
  _PrincipalCategoriesImpl({
    int? id,
    required int principalId,
    required int categoryId,
  }) : super._(
          id: id,
          principalId: principalId,
          categoryId: categoryId,
        );

  @override
  PrincipalCategories copyWith({
    Object? id = _Undefined,
    int? principalId,
    int? categoryId,
  }) {
    return PrincipalCategories(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

class PrincipalCategoriesTable extends _i1.Table {
  PrincipalCategoriesTable({super.tableRelation})
      : super(tableName: 'principal_categories') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnInt categoryId;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        categoryId,
      ];
}

@Deprecated('Use PrincipalCategoriesTable.t instead.')
PrincipalCategoriesTable tPrincipalCategories = PrincipalCategoriesTable();

class PrincipalCategoriesInclude extends _i1.IncludeObject {
  PrincipalCategoriesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PrincipalCategories.t;
}

class PrincipalCategoriesIncludeList extends _i1.IncludeList {
  PrincipalCategoriesIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrincipalCategories.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PrincipalCategories.t;
}

class PrincipalCategoriesRepository {
  const PrincipalCategoriesRepository._();

  Future<List<PrincipalCategories>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalCategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCategoriesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      orderBy: orderBy?.call(PrincipalCategories.t),
      orderByList: orderByList?.call(PrincipalCategories.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalCategories?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalCategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalCategoriesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      orderBy: orderBy?.call(PrincipalCategories.t),
      orderByList: orderByList?.call(PrincipalCategories.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PrincipalCategories?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<PrincipalCategories>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCategories>> insert(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<PrincipalCategories>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalCategories> insertRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<PrincipalCategories>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCategories>> update(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.ColumnSelections<PrincipalCategoriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<PrincipalCategories>(
      rows,
      columns: columns?.call(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  Future<PrincipalCategories> updateRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.ColumnSelections<PrincipalCategoriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<PrincipalCategories>(
      row,
      columns: columns?.call(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<PrincipalCategories>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<PrincipalCategories>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<PrincipalCategories>(
      where: where(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalCategoriesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
