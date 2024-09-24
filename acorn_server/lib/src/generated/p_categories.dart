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

abstract class PrincipalCategories extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory PrincipalCategories.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrincipalCategories(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      categoryId: jsonSerialization['categoryId'] as int,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'categoryId': categoryId,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<PrincipalCategories>(
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
    return session.db.findFirstRow<PrincipalCategories>(
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
    return session.db.findById<PrincipalCategories>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCategories>> insert(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrincipalCategories>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalCategories> insertRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrincipalCategories>(
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
    return session.db.update<PrincipalCategories>(
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
    return session.db.updateRow<PrincipalCategories>(
      row,
      columns: columns?.call(PrincipalCategories.t),
      transaction: transaction,
    );
  }

  Future<List<PrincipalCategories>> delete(
    _i1.Session session,
    List<PrincipalCategories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrincipalCategories>(
      rows,
      transaction: transaction,
    );
  }

  Future<PrincipalCategories> deleteRow(
    _i1.Session session,
    PrincipalCategories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrincipalCategories>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PrincipalCategories>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalCategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrincipalCategories>(
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
    return session.db.count<PrincipalCategories>(
      where: where?.call(PrincipalCategories.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
