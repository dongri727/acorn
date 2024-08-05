/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Stars extends _i1.TableRow implements _i1.ProtocolSerialization {
  Stars._({
    int? id,
    required this.star,
    required this.area,
  }) : super(id);

  factory Stars({
    int? id,
    required String star,
    required String area,
  }) = _StarsImpl;

  factory Stars.fromJson(Map<String, dynamic> jsonSerialization) {
    return Stars(
      id: jsonSerialization['id'] as int?,
      star: jsonSerialization['star'] as String,
      area: jsonSerialization['area'] as String,
    );
  }

  static final t = StarsTable();

  static const db = StarsRepository._();

  String star;

  String area;

  @override
  _i1.Table get table => t;

  Stars copyWith({
    int? id,
    String? star,
    String? area,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'star': star,
      'area': area,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'star': star,
      'area': area,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StarsImpl extends Stars {
  _StarsImpl({
    int? id,
    required String star,
    required String area,
  }) : super._(
          id: id,
          star: star,
          area: area,
        );

  @override
  Stars copyWith({
    Object? id = _Undefined,
    String? star,
    String? area,
  }) {
    return Stars(
      id: id is int? ? id : this.id,
      star: star ?? this.star,
      area: area ?? this.area,
    );
  }
}

class StarsTable extends _i1.Table {
  StarsTable({super.tableRelation}) : super(tableName: 'stars') {
    star = _i1.ColumnString(
      'star',
      this,
    );
    area = _i1.ColumnString(
      'area',
      this,
    );
  }

  late final _i1.ColumnString star;

  late final _i1.ColumnString area;

  @override
  List<_i1.Column> get columns => [
        id,
        star,
        area,
      ];
}

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
    return session.db.find<Stars>(
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
    return session.db.findFirstRow<Stars>(
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
    return session.db.findById<Stars>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Stars>> insert(
    _i1.Session session,
    List<Stars> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Stars>(
      rows,
      transaction: transaction,
    );
  }

  Future<Stars> insertRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Stars>(
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
    return session.db.update<Stars>(
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
    return session.db.updateRow<Stars>(
      row,
      columns: columns?.call(Stars.t),
      transaction: transaction,
    );
  }

  Future<List<Stars>> delete(
    _i1.Session session,
    List<Stars> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Stars>(
      rows,
      transaction: transaction,
    );
  }

  Future<Stars> deleteRow(
    _i1.Session session,
    Stars row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Stars>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Stars>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StarsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Stars>(
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
    return session.db.count<Stars>(
      where: where?.call(Stars.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
