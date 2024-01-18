/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Categories extends _i1.TableRow {
  Categories._({
    int? id,
    required this.category,
  }) : super(id);

  factory Categories({
    int? id,
    required String category,
  }) = _CategoriesImpl;

  factory Categories.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Categories(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      category: serializationManager
          .deserialize<String>(jsonSerialization['category']),
    );
  }

  static final t = CategoriesTable();

  static const db = CategoriesRepository._();

  String category;

  @override
  _i1.Table get table => t;

  Categories copyWith({
    int? id,
    String? category,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'category': category,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'category': category,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'category': category,
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
      case 'category':
        category = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Categories>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Categories>(
      where: where != null ? where(Categories.t) : null,
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
  static Future<Categories?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Categories>(
      where: where != null ? where(Categories.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Categories?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Categories>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Categories>(
      where: where(Categories.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Categories row, {
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
    Categories row, {
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
    Categories row, {
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
    _i1.WhereExpressionBuilder<CategoriesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Categories>(
      where: where != null ? where(Categories.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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
}

class _Undefined {}

class _CategoriesImpl extends Categories {
  _CategoriesImpl({
    int? id,
    required String category,
  }) : super._(
          id: id,
          category: category,
        );

  @override
  Categories copyWith({
    Object? id = _Undefined,
    String? category,
  }) {
    return Categories(
      id: id is int? ? id : this.id,
      category: category ?? this.category,
    );
  }
}

class CategoriesTable extends _i1.Table {
  CategoriesTable({super.tableRelation}) : super(tableName: 'categories') {
    category = _i1.ColumnString(
      'category',
      this,
    );
  }

  late final _i1.ColumnString category;

  @override
  List<_i1.Column> get columns => [
        id,
        category,
      ];
}

@Deprecated('Use CategoriesTable.t instead.')
CategoriesTable tCategories = CategoriesTable();

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
    return session.dbNext.find<Categories>(
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
    return session.dbNext.findFirstRow<Categories>(
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
    return session.dbNext.findById<Categories>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Categories>> insert(
    _i1.Session session,
    List<Categories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Categories>(
      rows,
      transaction: transaction,
    );
  }

  Future<Categories> insertRow(
    _i1.Session session,
    Categories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Categories>(
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
    return session.dbNext.update<Categories>(
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
    return session.dbNext.updateRow<Categories>(
      row,
      columns: columns?.call(Categories.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Categories> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Categories>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Categories row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Categories>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CategoriesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Categories>(
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
    return session.dbNext.count<Categories>(
      where: where?.call(Categories.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
