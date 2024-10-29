/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Detail implements _i1.TableRow, _i1.ProtocolSerialization {
  Detail._({
    this.id,
    required this.genre,
    required this.mot,
  });

  factory Detail({
    int? id,
    required String genre,
    required String mot,
  }) = _DetailImpl;

  factory Detail.fromJson(Map<String, dynamic> jsonSerialization) {
    return Detail(
      id: jsonSerialization['id'] as int?,
      genre: jsonSerialization['genre'] as String,
      mot: jsonSerialization['mot'] as String,
    );
  }

  static final t = DetailTable();

  static const db = DetailRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'genre': genre,
      'mot': mot,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<Detail>(
      where: where?.call(Detail.t),
      orderBy: orderBy?.call(Detail.t),
      orderByList: orderByList?.call(Detail.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
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
    return session.db.findFirstRow<Detail>(
      where: where?.call(Detail.t),
      orderBy: orderBy?.call(Detail.t),
      orderByList: orderByList?.call(Detail.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Detail?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Detail>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Detail>> insert(
    _i1.Session session,
    List<Detail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Detail>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Detail> insertRow(
    _i1.Session session,
    Detail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Detail>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Detail>> update(
    _i1.Session session,
    List<Detail> rows, {
    _i1.ColumnSelections<DetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Detail>(
      rows,
      columns: columns?.call(Detail.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Detail> updateRow(
    _i1.Session session,
    Detail row, {
    _i1.ColumnSelections<DetailTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Detail>(
      row,
      columns: columns?.call(Detail.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Detail>> delete(
    _i1.Session session,
    List<Detail> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Detail>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Detail> deleteRow(
    _i1.Session session,
    Detail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Detail>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Detail>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DetailTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Detail>(
      where: where(Detail.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DetailTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Detail>(
      where: where?.call(Detail.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
