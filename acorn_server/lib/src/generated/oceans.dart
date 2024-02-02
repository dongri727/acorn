/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Oceans extends _i1.TableRow {
  Oceans._({
    int? id,
    required this.ocean,
  }) : super(id);

  factory Oceans({
    int? id,
    required String ocean,
  }) = _OceansImpl;

  factory Oceans.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Oceans(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ocean:
          serializationManager.deserialize<String>(jsonSerialization['ocean']),
    );
  }

  static final t = OceansTable();

  static const db = OceansRepository._();

  String ocean;

  @override
  _i1.Table get table => t;

  Oceans copyWith({
    int? id,
    String? ocean,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ocean': ocean,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'ocean': ocean,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'ocean': ocean,
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
      case 'ocean':
        ocean = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Oceans>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Oceans>(
      where: where != null ? where(Oceans.t) : null,
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
  static Future<Oceans?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Oceans>(
      where: where != null ? where(Oceans.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Oceans?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Oceans>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OceansTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Oceans>(
      where: where(Oceans.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Oceans row, {
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
    Oceans row, {
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
    Oceans row, {
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
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Oceans>(
      where: where != null ? where(Oceans.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static OceansInclude include() {
    return OceansInclude._();
  }

  static OceansIncludeList includeList({
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    OceansInclude? include,
  }) {
    return OceansIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Oceans.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Oceans.t),
      include: include,
    );
  }
}

class _Undefined {}

class _OceansImpl extends Oceans {
  _OceansImpl({
    int? id,
    required String ocean,
  }) : super._(
          id: id,
          ocean: ocean,
        );

  @override
  Oceans copyWith({
    Object? id = _Undefined,
    String? ocean,
  }) {
    return Oceans(
      id: id is int? ? id : this.id,
      ocean: ocean ?? this.ocean,
    );
  }
}

class OceansTable extends _i1.Table {
  OceansTable({super.tableRelation}) : super(tableName: 'oceans') {
    ocean = _i1.ColumnString(
      'ocean',
      this,
    );
  }

  late final _i1.ColumnString ocean;

  @override
  List<_i1.Column> get columns => [
        id,
        ocean,
      ];
}

@Deprecated('Use OceansTable.t instead.')
OceansTable tOceans = OceansTable();

class OceansInclude extends _i1.IncludeObject {
  OceansInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Oceans.t;
}

class OceansIncludeList extends _i1.IncludeList {
  OceansIncludeList._({
    _i1.WhereExpressionBuilder<OceansTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Oceans.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Oceans.t;
}

class OceansRepository {
  const OceansRepository._();

  Future<List<Oceans>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Oceans>(
      where: where?.call(Oceans.t),
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Oceans?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? offset,
    _i1.OrderByBuilder<OceansTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OceansTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Oceans>(
      where: where?.call(Oceans.t),
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Oceans?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Oceans>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Oceans>> insert(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Oceans>(
      rows,
      transaction: transaction,
    );
  }

  Future<Oceans> insertRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Oceans>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Oceans>> update(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.ColumnSelections<OceansTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Oceans>(
      rows,
      columns: columns?.call(Oceans.t),
      transaction: transaction,
    );
  }

  Future<Oceans> updateRow(
    _i1.Session session,
    Oceans row, {
    _i1.ColumnSelections<OceansTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Oceans>(
      row,
      columns: columns?.call(Oceans.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Oceans>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Oceans>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OceansTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Oceans>(
      where: where(Oceans.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Oceans>(
      where: where?.call(Oceans.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
