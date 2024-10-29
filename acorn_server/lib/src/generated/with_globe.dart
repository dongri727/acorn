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

abstract class WithGlobe implements _i1.TableRow, _i1.ProtocolSerialization {
  WithGlobe._({
    this.id,
    required this.principalId,
    required this.annee,
    required this.affair,
    required this.location,
    required this.precise,
    required this.xCoordinate,
    required this.yCoordinate,
    required this.zCoordinate,
    required this.coefficient,
  });

  factory WithGlobe({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double xCoordinate,
    required double yCoordinate,
    required double zCoordinate,
    required double coefficient,
  }) = _WithGlobeImpl;

  factory WithGlobe.fromJson(Map<String, dynamic> jsonSerialization) {
    return WithGlobe(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      annee: jsonSerialization['annee'] as String,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      xCoordinate: (jsonSerialization['xCoordinate'] as num).toDouble(),
      yCoordinate: (jsonSerialization['yCoordinate'] as num).toDouble(),
      zCoordinate: (jsonSerialization['zCoordinate'] as num).toDouble(),
      coefficient: (jsonSerialization['coefficient'] as num).toDouble(),
    );
  }

  static final t = WithGlobeTable();

  static const db = WithGlobeRepository._();

  @override
  int? id;

  int principalId;

  String annee;

  String affair;

  String location;

  String precise;

  double xCoordinate;

  double yCoordinate;

  double zCoordinate;

  double coefficient;

  @override
  _i1.Table get table => t;

  WithGlobe copyWith({
    int? id,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? xCoordinate,
    double? yCoordinate,
    double? zCoordinate,
    double? coefficient,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'xCoordinate': xCoordinate,
      'yCoordinate': yCoordinate,
      'zCoordinate': zCoordinate,
      'coefficient': coefficient,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'affair': affair,
      'location': location,
      'precise': precise,
      'xCoordinate': xCoordinate,
      'yCoordinate': yCoordinate,
      'zCoordinate': zCoordinate,
      'coefficient': coefficient,
    };
  }

  static WithGlobeInclude include() {
    return WithGlobeInclude._();
  }

  static WithGlobeIncludeList includeList({
    _i1.WhereExpressionBuilder<WithGlobeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithGlobeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithGlobeTable>? orderByList,
    WithGlobeInclude? include,
  }) {
    return WithGlobeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WithGlobe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(WithGlobe.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WithGlobeImpl extends WithGlobe {
  _WithGlobeImpl({
    int? id,
    required int principalId,
    required String annee,
    required String affair,
    required String location,
    required String precise,
    required double xCoordinate,
    required double yCoordinate,
    required double zCoordinate,
    required double coefficient,
  }) : super._(
          id: id,
          principalId: principalId,
          annee: annee,
          affair: affair,
          location: location,
          precise: precise,
          xCoordinate: xCoordinate,
          yCoordinate: yCoordinate,
          zCoordinate: zCoordinate,
          coefficient: coefficient,
        );

  @override
  WithGlobe copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? annee,
    String? affair,
    String? location,
    String? precise,
    double? xCoordinate,
    double? yCoordinate,
    double? zCoordinate,
    double? coefficient,
  }) {
    return WithGlobe(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      annee: annee ?? this.annee,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      xCoordinate: xCoordinate ?? this.xCoordinate,
      yCoordinate: yCoordinate ?? this.yCoordinate,
      zCoordinate: zCoordinate ?? this.zCoordinate,
      coefficient: coefficient ?? this.coefficient,
    );
  }
}

class WithGlobeTable extends _i1.Table {
  WithGlobeTable({super.tableRelation}) : super(tableName: 'with_globe') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    annee = _i1.ColumnString(
      'annee',
      this,
    );
    affair = _i1.ColumnString(
      'affair',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    precise = _i1.ColumnString(
      'precise',
      this,
    );
    xCoordinate = _i1.ColumnDouble(
      'xCoordinate',
      this,
    );
    yCoordinate = _i1.ColumnDouble(
      'yCoordinate',
      this,
    );
    zCoordinate = _i1.ColumnDouble(
      'zCoordinate',
      this,
    );
    coefficient = _i1.ColumnDouble(
      'coefficient',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString annee;

  late final _i1.ColumnString affair;

  late final _i1.ColumnString location;

  late final _i1.ColumnString precise;

  late final _i1.ColumnDouble xCoordinate;

  late final _i1.ColumnDouble yCoordinate;

  late final _i1.ColumnDouble zCoordinate;

  late final _i1.ColumnDouble coefficient;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        annee,
        affair,
        location,
        precise,
        xCoordinate,
        yCoordinate,
        zCoordinate,
        coefficient,
      ];
}

class WithGlobeInclude extends _i1.IncludeObject {
  WithGlobeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => WithGlobe.t;
}

class WithGlobeIncludeList extends _i1.IncludeList {
  WithGlobeIncludeList._({
    _i1.WhereExpressionBuilder<WithGlobeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WithGlobe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => WithGlobe.t;
}

class WithGlobeRepository {
  const WithGlobeRepository._();

  Future<List<WithGlobe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithGlobeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WithGlobeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithGlobeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<WithGlobe>(
      where: where?.call(WithGlobe.t),
      orderBy: orderBy?.call(WithGlobe.t),
      orderByList: orderByList?.call(WithGlobe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithGlobe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithGlobeTable>? where,
    int? offset,
    _i1.OrderByBuilder<WithGlobeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WithGlobeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<WithGlobe>(
      where: where?.call(WithGlobe.t),
      orderBy: orderBy?.call(WithGlobe.t),
      orderByList: orderByList?.call(WithGlobe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithGlobe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<WithGlobe>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithGlobe>> insert(
    _i1.Session session,
    List<WithGlobe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<WithGlobe>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithGlobe> insertRow(
    _i1.Session session,
    WithGlobe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<WithGlobe>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithGlobe>> update(
    _i1.Session session,
    List<WithGlobe> rows, {
    _i1.ColumnSelections<WithGlobeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<WithGlobe>(
      rows,
      columns: columns?.call(WithGlobe.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithGlobe> updateRow(
    _i1.Session session,
    WithGlobe row, {
    _i1.ColumnSelections<WithGlobeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<WithGlobe>(
      row,
      columns: columns?.call(WithGlobe.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithGlobe>> delete(
    _i1.Session session,
    List<WithGlobe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<WithGlobe>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<WithGlobe> deleteRow(
    _i1.Session session,
    WithGlobe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WithGlobe>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<WithGlobe>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WithGlobeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<WithGlobe>(
      where: where(WithGlobe.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WithGlobeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WithGlobe>(
      where: where?.call(WithGlobe.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
