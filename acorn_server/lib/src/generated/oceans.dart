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

abstract class Oceans implements _i1.TableRow, _i1.ProtocolSerialization {
  Oceans._({
    this.id,
    required this.ocean,
  });

  factory Oceans({
    int? id,
    required String ocean,
  }) = _OceansImpl;

  factory Oceans.fromJson(Map<String, dynamic> jsonSerialization) {
    return Oceans(
      id: jsonSerialization['id'] as int?,
      ocean: jsonSerialization['ocean'] as String,
    );
  }

  static final t = OceansTable();

  static const db = OceansRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'ocean': ocean,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<Oceans>(
      where: where?.call(Oceans.t),
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
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
    return session.db.findFirstRow<Oceans>(
      where: where?.call(Oceans.t),
      orderBy: orderBy?.call(Oceans.t),
      orderByList: orderByList?.call(Oceans.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Oceans?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Oceans>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Oceans>> insert(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Oceans>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Oceans> insertRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Oceans>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Oceans>> update(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.ColumnSelections<OceansTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Oceans>(
      rows,
      columns: columns?.call(Oceans.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Oceans> updateRow(
    _i1.Session session,
    Oceans row, {
    _i1.ColumnSelections<OceansTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Oceans>(
      row,
      columns: columns?.call(Oceans.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Oceans>> delete(
    _i1.Session session,
    List<Oceans> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Oceans>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Oceans> deleteRow(
    _i1.Session session,
    Oceans row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Oceans>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Oceans>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OceansTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Oceans>(
      where: where(Oceans.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OceansTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Oceans>(
      where: where?.call(Oceans.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
