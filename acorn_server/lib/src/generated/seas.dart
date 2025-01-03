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

abstract class Seas implements _i1.TableRow, _i1.ProtocolSerialization {
  Seas._({
    this.id,
    required this.sea,
    required this.area,
  });

  factory Seas({
    int? id,
    required String sea,
    required String area,
  }) = _SeasImpl;

  factory Seas.fromJson(Map<String, dynamic> jsonSerialization) {
    return Seas(
      id: jsonSerialization['id'] as int?,
      sea: jsonSerialization['sea'] as String,
      area: jsonSerialization['area'] as String,
    );
  }

  static final t = SeasTable();

  static const db = SeasRepository._();

  @override
  int? id;

  String sea;

  String area;

  @override
  _i1.Table get table => t;

  Seas copyWith({
    int? id,
    String? sea,
    String? area,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'sea': sea,
      'area': area,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'sea': sea,
      'area': area,
    };
  }

  static SeasInclude include() {
    return SeasInclude._();
  }

  static SeasIncludeList includeList({
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    SeasInclude? include,
  }) {
    return SeasIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Seas.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Seas.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SeasImpl extends Seas {
  _SeasImpl({
    int? id,
    required String sea,
    required String area,
  }) : super._(
          id: id,
          sea: sea,
          area: area,
        );

  @override
  Seas copyWith({
    Object? id = _Undefined,
    String? sea,
    String? area,
  }) {
    return Seas(
      id: id is int? ? id : this.id,
      sea: sea ?? this.sea,
      area: area ?? this.area,
    );
  }
}

class SeasTable extends _i1.Table {
  SeasTable({super.tableRelation}) : super(tableName: 'seas') {
    sea = _i1.ColumnString(
      'sea',
      this,
    );
    area = _i1.ColumnString(
      'area',
      this,
    );
  }

  late final _i1.ColumnString sea;

  late final _i1.ColumnString area;

  @override
  List<_i1.Column> get columns => [
        id,
        sea,
        area,
      ];
}

class SeasInclude extends _i1.IncludeObject {
  SeasInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Seas.t;
}

class SeasIncludeList extends _i1.IncludeList {
  SeasIncludeList._({
    _i1.WhereExpressionBuilder<SeasTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Seas.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Seas.t;
}

class SeasRepository {
  const SeasRepository._();

  Future<List<Seas>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Seas>(
      where: where?.call(Seas.t),
      orderBy: orderBy?.call(Seas.t),
      orderByList: orderByList?.call(Seas.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Seas?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? offset,
    _i1.OrderByBuilder<SeasTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SeasTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Seas>(
      where: where?.call(Seas.t),
      orderBy: orderBy?.call(Seas.t),
      orderByList: orderByList?.call(Seas.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Seas?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Seas>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Seas>> insert(
    _i1.Session session,
    List<Seas> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Seas>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Seas> insertRow(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Seas>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Seas>> update(
    _i1.Session session,
    List<Seas> rows, {
    _i1.ColumnSelections<SeasTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Seas>(
      rows,
      columns: columns?.call(Seas.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Seas> updateRow(
    _i1.Session session,
    Seas row, {
    _i1.ColumnSelections<SeasTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Seas>(
      row,
      columns: columns?.call(Seas.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Seas>> delete(
    _i1.Session session,
    List<Seas> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Seas>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Seas> deleteRow(
    _i1.Session session,
    Seas row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Seas>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Seas>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SeasTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Seas>(
      where: where(Seas.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SeasTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Seas>(
      where: where?.call(Seas.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
