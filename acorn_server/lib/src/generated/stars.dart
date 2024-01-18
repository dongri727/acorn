/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Stars extends _i1.TableRow {
  Stars._({
    int? id,
    required this.star,
  }) : super(id);

  factory Stars({
    int? id,
    required String star,
  }) = _StarsImpl;

  factory Stars.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Stars(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      star: serializationManager.deserialize<String>(jsonSerialization['star']),
    );
  }

  static final t = StarsTable();

  static const db = StarsRepository._();

  String star;

  @override
  _i1.Table get table => t;

  Stars copyWith({
    int? id,
    String? star,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'star': star,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'star': star,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'star': star,
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
      case 'star':
        star = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Stars>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Stars>(
      where: where != null ? where(Stars.t) : null,
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
  static Future<Stars?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Stars>(
      where: where != null ? where(Stars.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Stars?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Stars>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Stars>(
      where: where(Stars.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Stars row, {
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
    Stars row, {
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
    Stars row, {
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
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Stars>(
      where: where != null ? where(Stars.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static StarsInclude include() {
    return StarsInclude._();
  }

  static StarsIncludeList includeList({
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    StarsInclude? include,
  }) {
    return StarsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Stars.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Stars.t),
      include: include,
    );
  }
}

class _Undefined {}

class _StarsImpl extends Stars {
  _StarsImpl({
    int? id,
    required String star,
  }) : super._(
          id: id,
          star: star,
        );

  @override
  Stars copyWith({
    Object? id = _Undefined,
    String? star,
  }) {
    return Stars(
      id: id is int? ? id : this.id,
      star: star ?? this.star,
    );
  }
}

class StarsTable extends _i1.Table {
  StarsTable({super.tableRelation}) : super(tableName: 'stars') {
    star = _i1.ColumnString(
      'star',
      this,
    );
  }

  late final _i1.ColumnString star;

  @override
  List<_i1.Column> get columns => [
        id,
        star,
      ];
}

@Deprecated('Use StarsTable.t instead.')
StarsTable tStars = StarsTable();

class StarsInclude extends _i1.IncludeObject {
  StarsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Stars.t;
}

class StarsIncludeList extends _i1.IncludeList {
  StarsIncludeList._({
    _i1.WhereExpressionBuilder<StarsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Stars.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Stars.t;
}

class StarsRepository {
  const StarsRepository._();

  Future<List<Stars>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Stars>(
      where: where?.call(Stars.t),
      orderBy: orderBy?.call(Stars.t),
      orderByList: orderByList?.call(Stars.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Stars?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? offset,
    _i1.OrderByBuilder<StarsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StarsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Stars>(
      where: where?.call(Stars.t),
      orderBy: orderBy?.call(Stars.t),
      orderByList: orderByList?.call(Stars.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Stars?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Stars>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Stars>> insert(
    _i1.Session session,
    List<Stars> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Stars>(
      rows,
      transaction: transaction,
    );
  }

  Future<Stars> insertRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Stars>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Stars>> update(
    _i1.Session session,
    List<Stars> rows, {
    _i1.ColumnSelections<StarsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Stars>(
      rows,
      columns: columns?.call(Stars.t),
      transaction: transaction,
    );
  }

  Future<Stars> updateRow(
    _i1.Session session,
    Stars row, {
    _i1.ColumnSelections<StarsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Stars>(
      row,
      columns: columns?.call(Stars.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Stars> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Stars>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Stars>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Stars>(
      where: where(Stars.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StarsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Stars>(
      where: where?.call(Stars.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
