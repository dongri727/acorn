/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Space extends _i1.TableRow implements _i1.ProtocolSerialization {
  Space._({
    int? id,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.distance,
  }) : super(id);

  factory Space({
    int? id,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String distance,
  }) = _SpaceImpl;

  factory Space.fromJson(Map<String, dynamic> jsonSerialization) {
    return Space(
      id: jsonSerialization['id'] as int?,
      annee: jsonSerialization['annee'] as String,
      month: jsonSerialization['month'] as int,
      day: jsonSerialization['day'] as int,
      point: jsonSerialization['point'] as int,
      affair: jsonSerialization['affair'] as String,
      distance: jsonSerialization['distance'] as String,
    );
  }

  static final t = SpaceTable();

  static const db = SpaceRepository._();

  String annee;

  int month;

  int day;

  int point;

  String affair;

  String distance;

  @override
  _i1.Table get table => t;

  Space copyWith({
    int? id,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? distance,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'distance': distance,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'distance': distance,
    };
  }

  static SpaceInclude include() {
    return SpaceInclude._();
  }

  static SpaceIncludeList includeList({
    _i1.WhereExpressionBuilder<SpaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpaceTable>? orderByList,
    SpaceInclude? include,
  }) {
    return SpaceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Space.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Space.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SpaceImpl extends Space {
  _SpaceImpl({
    int? id,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String distance,
  }) : super._(
          id: id,
          annee: annee,
          month: month,
          day: day,
          point: point,
          affair: affair,
          distance: distance,
        );

  @override
  Space copyWith({
    Object? id = _Undefined,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? distance,
  }) {
    return Space(
      id: id is int? ? id : this.id,
      annee: annee ?? this.annee,
      month: month ?? this.month,
      day: day ?? this.day,
      point: point ?? this.point,
      affair: affair ?? this.affair,
      distance: distance ?? this.distance,
    );
  }
}

class SpaceTable extends _i1.Table {
  SpaceTable({super.tableRelation}) : super(tableName: 'space') {
    annee = _i1.ColumnString(
      'annee',
      this,
    );
    month = _i1.ColumnInt(
      'month',
      this,
    );
    day = _i1.ColumnInt(
      'day',
      this,
    );
    point = _i1.ColumnInt(
      'point',
      this,
    );
    affair = _i1.ColumnString(
      'affair',
      this,
    );
    distance = _i1.ColumnString(
      'distance',
      this,
    );
  }

  late final _i1.ColumnString annee;

  late final _i1.ColumnInt month;

  late final _i1.ColumnInt day;

  late final _i1.ColumnInt point;

  late final _i1.ColumnString affair;

  late final _i1.ColumnString distance;

  @override
  List<_i1.Column> get columns => [
        id,
        annee,
        month,
        day,
        point,
        affair,
        distance,
      ];
}

class SpaceInclude extends _i1.IncludeObject {
  SpaceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Space.t;
}

class SpaceIncludeList extends _i1.IncludeList {
  SpaceIncludeList._({
    _i1.WhereExpressionBuilder<SpaceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Space.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Space.t;
}

class SpaceRepository {
  const SpaceRepository._();

  Future<List<Space>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpaceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Space>(
      where: where?.call(Space.t),
      orderBy: orderBy?.call(Space.t),
      orderByList: orderByList?.call(Space.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Space?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpaceTable>? where,
    int? offset,
    _i1.OrderByBuilder<SpaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SpaceTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Space>(
      where: where?.call(Space.t),
      orderBy: orderBy?.call(Space.t),
      orderByList: orderByList?.call(Space.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Space?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Space>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Space>> insert(
    _i1.Session session,
    List<Space> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Space>(
      rows,
      transaction: transaction,
    );
  }

  Future<Space> insertRow(
    _i1.Session session,
    Space row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Space>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Space>> update(
    _i1.Session session,
    List<Space> rows, {
    _i1.ColumnSelections<SpaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Space>(
      rows,
      columns: columns?.call(Space.t),
      transaction: transaction,
    );
  }

  Future<Space> updateRow(
    _i1.Session session,
    Space row, {
    _i1.ColumnSelections<SpaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Space>(
      row,
      columns: columns?.call(Space.t),
      transaction: transaction,
    );
  }

  Future<List<Space>> delete(
    _i1.Session session,
    List<Space> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Space>(
      rows,
      transaction: transaction,
    );
  }

  Future<Space> deleteRow(
    _i1.Session session,
    Space row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Space>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Space>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SpaceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Space>(
      where: where(Space.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SpaceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Space>(
      where: where?.call(Space.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
