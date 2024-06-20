/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Categories extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Categories._({
    int? id,
    required this.category,
    required this.detailId,
    required this.combien,
  }) : super(id);

  factory Categories({
    int? id,
    required String category,
    required int detailId,
    required int combien,
  }) = _CategoriesImpl;

  factory Categories.fromJson(Map<String, dynamic> jsonSerialization) {
    return Categories(
      id: jsonSerialization['id'] as int?,
      category: jsonSerialization['category'] as String,
      detailId: jsonSerialization['detailId'] as int,
      combien: jsonSerialization['combien'] as int,
    );
  }

  static final t = CategoriesTable();

  static const db = CategoriesRepository._();

  String category;

  int detailId;

  int combien;

  @override
  _i1.Table get table => t;

  Categories copyWith({
    int? id,
    String? category,
    int? detailId,
    int? combien,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'category': category,
      'detailId': detailId,
      'combien': combien,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'category': category,
      'detailId': detailId,
      'combien': combien,
    };
  }

  static CategoriesInclude include() {
    return CategoriesInclude._();
  }

  static CategoriesIncludeList includeList({
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoriesTable>? orderByList,
    CategoriesInclude? include,
  }) {
    return CategoriesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Categories.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Categories.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CategoriesImpl extends Categories {
  _CategoriesImpl({
    int? id,
    required String category,
    required int detailId,
    required int combien,
  }) : super._(
          id: id,
          category: category,
          detailId: detailId,
          combien: combien,
        );

  @override
  Categories copyWith({
    Object? id = _Undefined,
    String? category,
    int? detailId,
    int? combien,
  }) {
    return Categories(
      id: id is int? ? id : this.id,
      category: category ?? this.category,
      detailId: detailId ?? this.detailId,
      combien: combien ?? this.combien,
    );
  }
}

class CategoriesTable extends _i1.Table {
  CategoriesTable({super.tableRelation}) : super(tableName: 'categories') {
    category = _i1.ColumnString(
      'category',
      this,
    );
    detailId = _i1.ColumnInt(
      'detailId',
      this,
    );
    combien = _i1.ColumnInt(
      'combien',
      this,
    );
  }

  late final _i1.ColumnString category;

  late final _i1.ColumnInt detailId;

  late final _i1.ColumnInt combien;

  @override
  List<_i1.Column> get columns => [
        id,
        category,
        detailId,
        combien,
      ];
}

class CategoriesInclude extends _i1.IncludeObject {
  CategoriesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Categories.t;
}

class CategoriesIncludeList extends _i1.IncludeList {
  CategoriesIncludeList._({
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Categories.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Categories.t;
}

class CategoriesRepository {
  const CategoriesRepository._();

  Future<List<Categories>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoriesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Categories>(
      where: where?.call(Categories.t),
      orderBy: orderBy?.call(Categories.t),
      orderByList: orderByList?.call(Categories.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Categories?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? offset,
    _i1.OrderByBuilder<CategoriesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoriesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Categories>(
      where: where?.call(Categories.t),
      orderBy: orderBy?.call(Categories.t),
      orderByList: orderByList?.call(Categories.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Categories?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Categories>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Categories>> insert(
    _i1.Session session,
    List<Categories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Categories>(
      rows,
      transaction: transaction,
    );
  }

  Future<Categories> insertRow(
    _i1.Session session,
    Categories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Categories>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Categories>> update(
    _i1.Session session,
    List<Categories> rows, {
    _i1.ColumnSelections<CategoriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Categories>(
      rows,
      columns: columns?.call(Categories.t),
      transaction: transaction,
    );
  }

  Future<Categories> updateRow(
    _i1.Session session,
    Categories row, {
    _i1.ColumnSelections<CategoriesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Categories>(
      row,
      columns: columns?.call(Categories.t),
      transaction: transaction,
    );
  }

  Future<List<Categories>> delete(
    _i1.Session session,
    List<Categories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Categories>(
      rows,
      transaction: transaction,
    );
  }

  Future<Categories> deleteRow(
    _i1.Session session,
    Categories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Categories>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Categories>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Categories>(
      where: where(Categories.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Categories>(
      where: where?.call(Categories.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
