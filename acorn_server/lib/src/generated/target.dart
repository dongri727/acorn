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

abstract class Target implements _i1.TableRow, _i1.ProtocolSerialization {
  Target._({
    this.id,
    required this.specialite,
    required this.detailId,
  });

  factory Target({
    int? id,
    required String specialite,
    required int detailId,
  }) = _TargetImpl;

  factory Target.fromJson(Map<String, dynamic> jsonSerialization) {
    return Target(
      id: jsonSerialization['id'] as int?,
      specialite: jsonSerialization['specialite'] as String,
      detailId: jsonSerialization['detailId'] as int,
    );
  }

  static final t = TargetTable();

  static const db = TargetRepository._();

  @override
  int? id;

  String specialite;

  int detailId;

  @override
  _i1.Table get table => t;

  Target copyWith({
    int? id,
    String? specialite,
    int? detailId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'specialite': specialite,
      'detailId': detailId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'specialite': specialite,
      'detailId': detailId,
    };
  }

  static TargetInclude include() {
    return TargetInclude._();
  }

  static TargetIncludeList includeList({
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TargetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TargetTable>? orderByList,
    TargetInclude? include,
  }) {
    return TargetIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Target.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Target.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TargetImpl extends Target {
  _TargetImpl({
    int? id,
    required String specialite,
    required int detailId,
  }) : super._(
          id: id,
          specialite: specialite,
          detailId: detailId,
        );

  @override
  Target copyWith({
    Object? id = _Undefined,
    String? specialite,
    int? detailId,
  }) {
    return Target(
      id: id is int? ? id : this.id,
      specialite: specialite ?? this.specialite,
      detailId: detailId ?? this.detailId,
    );
  }
}

class TargetTable extends _i1.Table {
  TargetTable({super.tableRelation}) : super(tableName: 'target') {
    specialite = _i1.ColumnString(
      'specialite',
      this,
    );
    detailId = _i1.ColumnInt(
      'detailId',
      this,
    );
  }

  late final _i1.ColumnString specialite;

  late final _i1.ColumnInt detailId;

  @override
  List<_i1.Column> get columns => [
        id,
        specialite,
        detailId,
      ];
}

class TargetInclude extends _i1.IncludeObject {
  TargetInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Target.t;
}

class TargetIncludeList extends _i1.IncludeList {
  TargetIncludeList._({
    _i1.WhereExpressionBuilder<TargetTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Target.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Target.t;
}

class TargetRepository {
  const TargetRepository._();

  Future<List<Target>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TargetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TargetTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Target>(
      where: where?.call(Target.t),
      orderBy: orderBy?.call(Target.t),
      orderByList: orderByList?.call(Target.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Target?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? offset,
    _i1.OrderByBuilder<TargetTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TargetTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Target>(
      where: where?.call(Target.t),
      orderBy: orderBy?.call(Target.t),
      orderByList: orderByList?.call(Target.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Target?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Target>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Target>> insert(
    _i1.Session session,
    List<Target> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Target>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Target> insertRow(
    _i1.Session session,
    Target row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Target>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Target>> update(
    _i1.Session session,
    List<Target> rows, {
    _i1.ColumnSelections<TargetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Target>(
      rows,
      columns: columns?.call(Target.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Target> updateRow(
    _i1.Session session,
    Target row, {
    _i1.ColumnSelections<TargetTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Target>(
      row,
      columns: columns?.call(Target.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Target>> delete(
    _i1.Session session,
    List<Target> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Target>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Target> deleteRow(
    _i1.Session session,
    Target row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Target>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Target>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TargetTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Target>(
      where: where(Target.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TargetTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Target>(
      where: where?.call(Target.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
