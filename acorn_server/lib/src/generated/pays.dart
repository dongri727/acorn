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

abstract class Pays implements _i1.TableRow, _i1.ProtocolSerialization {
  Pays._({
    this.id,
    required this.pays,
    required this.combien,
  });

  factory Pays({
    int? id,
    required String pays,
    required int combien,
  }) = _PaysImpl;

  factory Pays.fromJson(Map<String, dynamic> jsonSerialization) {
    return Pays(
      id: jsonSerialization['id'] as int?,
      pays: jsonSerialization['pays'] as String,
      combien: jsonSerialization['combien'] as int,
    );
  }

  static final t = PaysTable();

  static const db = PaysRepository._();

  @override
  int? id;

  String pays;

  int combien;

  @override
  _i1.Table get table => t;

  Pays copyWith({
    int? id,
    String? pays,
    int? combien,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'pays': pays,
      'combien': combien,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'pays': pays,
      'combien': combien,
    };
  }

  static PaysInclude include() {
    return PaysInclude._();
  }

  static PaysIncludeList includeList({
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    PaysInclude? include,
  }) {
    return PaysIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Pays.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Pays.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaysImpl extends Pays {
  _PaysImpl({
    int? id,
    required String pays,
    required int combien,
  }) : super._(
          id: id,
          pays: pays,
          combien: combien,
        );

  @override
  Pays copyWith({
    Object? id = _Undefined,
    String? pays,
    int? combien,
  }) {
    return Pays(
      id: id is int? ? id : this.id,
      pays: pays ?? this.pays,
      combien: combien ?? this.combien,
    );
  }
}

class PaysTable extends _i1.Table {
  PaysTable({super.tableRelation}) : super(tableName: 'pays') {
    pays = _i1.ColumnString(
      'pays',
      this,
    );
    combien = _i1.ColumnInt(
      'combien',
      this,
    );
  }

  late final _i1.ColumnString pays;

  late final _i1.ColumnInt combien;

  @override
  List<_i1.Column> get columns => [
        id,
        pays,
        combien,
      ];
}

class PaysInclude extends _i1.IncludeObject {
  PaysInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Pays.t;
}

class PaysIncludeList extends _i1.IncludeList {
  PaysIncludeList._({
    _i1.WhereExpressionBuilder<PaysTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Pays.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Pays.t;
}

class PaysRepository {
  const PaysRepository._();

  Future<List<Pays>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Pays>(
      where: where?.call(Pays.t),
      orderBy: orderBy?.call(Pays.t),
      orderByList: orderByList?.call(Pays.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Pays?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? offset,
    _i1.OrderByBuilder<PaysTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaysTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Pays>(
      where: where?.call(Pays.t),
      orderBy: orderBy?.call(Pays.t),
      orderByList: orderByList?.call(Pays.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Pays?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Pays>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Pays>> insert(
    _i1.Session session,
    List<Pays> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Pays>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Pays> insertRow(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Pays>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Pays>> update(
    _i1.Session session,
    List<Pays> rows, {
    _i1.ColumnSelections<PaysTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Pays>(
      rows,
      columns: columns?.call(Pays.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Pays> updateRow(
    _i1.Session session,
    Pays row, {
    _i1.ColumnSelections<PaysTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Pays>(
      row,
      columns: columns?.call(Pays.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Pays>> delete(
    _i1.Session session,
    List<Pays> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Pays>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Pays> deleteRow(
    _i1.Session session,
    Pays row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Pays>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Pays>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PaysTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Pays>(
      where: where(Pays.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaysTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Pays>(
      where: where?.call(Pays.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
