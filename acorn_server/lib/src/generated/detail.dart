/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Detail extends _i1.TableRow {
  Detail._({
    int? id,
    required this.genre,
    required this.mot,
  }) : super(id);

  factory Detail({
    int? id,
    required String genre,
    required String mot,
  }) = _DetailImpl;

  factory Detail.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Detail(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      genre:
          serializationManager.deserialize<String>(jsonSerialization['genre']),
      mot: serializationManager.deserialize<String>(jsonSerialization['mot']),
    );
  }

  static final t = DetailTable();

  static const db = DetailRepository._();

  String genre;

  String mot;

  @override
  _i1.Table get table => t;

  Detail copyWith({
    int? id,
    String? genre,
    String? mot,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'genre': genre,
      'mot': mot,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'genre': genre,
      'mot': mot,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'genre': genre,
      'mot': mot,
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
      case 'genre':
        genre = value;
        return;
      case 'mot':
        mot = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Detail>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Detail>(
      where: where != null ? where(Detail.t) : null,
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
  static Future<Detail?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Detail>(
      where: where != null ? where(Detail.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Detail?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Detail>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Detail>(
      where: where(Detail.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Detail row, {
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
    Detail row, {
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
    Detail row, {
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
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Detail>(
      where: where != null ? where(Detail.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static DetailInclude include() {
    return DetailInclude._();
  }

  static DetailIncludeList includeList({
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DetailTable>? orderByList,
    DetailInclude? include,
  }) {
    return DetailIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Detail.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Detail.t),
      include: include,
    );
  }
}

class _Undefined {}

class _DetailImpl extends Detail {
  _DetailImpl({
    int? id,
    required String genre,
    required String mot,
  }) : super._(
          id: id,
          genre: genre,
          mot: mot,
        );

  @override
  Detail copyWith({
    Object? id = _Undefined,
    String? genre,
    String? mot,
  }) {
    return Detail(
      id: id is int? ? id : this.id,
      genre: genre ?? this.genre,
      mot: mot ?? this.mot,
    );
  }
}

class DetailTable extends _i1.Table {
  DetailTable({super.tableRelation}) : super(tableName: 'detail') {
    genre = _i1.ColumnString(
      'genre',
      this,
    );
    mot = _i1.ColumnString(
      'mot',
      this,
    );
  }

  late final _i1.ColumnString genre;

  late final _i1.ColumnString mot;

  @override
  List<_i1.Column> get columns => [
        id,
        genre,
        mot,
      ];
}

@Deprecated('Use DetailTable.t instead.')
DetailTable tDetail = DetailTable();

class DetailInclude extends _i1.IncludeObject {
  DetailInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Detail.t;
}

class DetailIncludeList extends _i1.IncludeList {
  DetailIncludeList._({
    _i1.WhereExpressionBuilder<DetailTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Detail.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Detail.t;
}

class DetailRepository {
  const DetailRepository._();

  Future<List<Detail>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Detail>(
      where: where?.call(Detail.t),
      orderBy: orderBy?.call(Detail.t),
      orderByList: orderByList?.call(Detail.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Detail?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? offset,
    _i1.OrderByBuilder<DetailTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DetailTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Detail>(
      where: where?.call(Detail.t),
      orderBy: orderBy?.call(Detail.t),
      orderByList: orderByList?.call(Detail.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Detail?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Detail>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Detail>> insert(
    _i1.Session session,
    List<Detail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Detail>(
      rows,
      transaction: transaction,
    );
  }

  Future<Detail> insertRow(
    _i1.Session session,
    Detail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Detail>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Detail>> update(
    _i1.Session session,
    List<Detail> rows, {
    _i1.ColumnSelections<DetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Detail>(
      rows,
      columns: columns?.call(Detail.t),
      transaction: transaction,
    );
  }

  Future<Detail> updateRow(
    _i1.Session session,
    Detail row, {
    _i1.ColumnSelections<DetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Detail>(
      row,
      columns: columns?.call(Detail.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Detail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Detail>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Detail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Detail>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Detail>(
      where: where(Detail.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Detail>(
      where: where?.call(Detail.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
