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

abstract class Principal implements _i1.TableRow, _i1.ProtocolSerialization {
  Principal._({
    this.id,
    required this.period,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.precise,
  });

  factory Principal({
    int? id,
    required String period,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
  }) = _PrincipalImpl;

  factory Principal.fromJson(Map<String, dynamic> jsonSerialization) {
    return Principal(
      id: jsonSerialization['id'] as int?,
      period: jsonSerialization['period'] as String,
      annee: jsonSerialization['annee'] as String,
      month: jsonSerialization['month'] as int,
      day: jsonSerialization['day'] as int,
      point: jsonSerialization['point'] as int,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
    );
  }

  static final t = PrincipalTable();

  static const db = PrincipalRepository._();

  @override
  int? id;

  String period;

  String annee;

  int month;

  int day;

  int point;

  String affair;

  String location;

  String precise;

  @override
  _i1.Table get table => t;

  Principal copyWith({
    int? id,
    String? period,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
    };
  }

  static PrincipalInclude include() {
    return PrincipalInclude._();
  }

  static PrincipalIncludeList includeList({
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalTable>? orderByList,
    PrincipalInclude? include,
  }) {
    return PrincipalIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Principal.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Principal.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalImpl extends Principal {
  _PrincipalImpl({
    int? id,
    required String period,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
  }) : super._(
          id: id,
          period: period,
          annee: annee,
          month: month,
          day: day,
          point: point,
          affair: affair,
          location: location,
          precise: precise,
        );

  @override
  Principal copyWith({
    Object? id = _Undefined,
    String? period,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
  }) {
    return Principal(
      id: id is int? ? id : this.id,
      period: period ?? this.period,
      annee: annee ?? this.annee,
      month: month ?? this.month,
      day: day ?? this.day,
      point: point ?? this.point,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
    );
  }
}

class PrincipalTable extends _i1.Table {
  PrincipalTable({super.tableRelation}) : super(tableName: 'principal') {
    period = _i1.ColumnString(
      'period',
      this,
    );
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
    location = _i1.ColumnString(
      'location',
      this,
    );
    precise = _i1.ColumnString(
      'precise',
      this,
    );
  }

  late final _i1.ColumnString period;

  late final _i1.ColumnString annee;

  late final _i1.ColumnInt month;

  late final _i1.ColumnInt day;

  late final _i1.ColumnInt point;

  late final _i1.ColumnString affair;

  late final _i1.ColumnString location;

  late final _i1.ColumnString precise;

  @override
  List<_i1.Column> get columns => [
        id,
        period,
        annee,
        month,
        day,
        point,
        affair,
        location,
        precise,
      ];
}

class PrincipalInclude extends _i1.IncludeObject {
  PrincipalInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Principal.t;
}

class PrincipalIncludeList extends _i1.IncludeList {
  PrincipalIncludeList._({
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Principal.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Principal.t;
}

class PrincipalRepository {
  const PrincipalRepository._();

  Future<List<Principal>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrincipalTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Principal>(
      where: where?.call(Principal.t),
      orderBy: orderBy?.call(Principal.t),
      orderByList: orderByList?.call(Principal.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Principal?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrincipalTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrincipalTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Principal>(
      where: where?.call(Principal.t),
      orderBy: orderBy?.call(Principal.t),
      orderByList: orderByList?.call(Principal.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Principal?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Principal>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Principal>> insert(
    _i1.Session session,
    List<Principal> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Principal>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Principal> insertRow(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Principal>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Principal>> update(
    _i1.Session session,
    List<Principal> rows, {
    _i1.ColumnSelections<PrincipalTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Principal>(
      rows,
      columns: columns?.call(Principal.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Principal> updateRow(
    _i1.Session session,
    Principal row, {
    _i1.ColumnSelections<PrincipalTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Principal>(
      row,
      columns: columns?.call(Principal.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Principal>> delete(
    _i1.Session session,
    List<Principal> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Principal>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Principal> deleteRow(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Principal>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Principal>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Principal>(
      where: where(Principal.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Principal>(
      where: where?.call(Principal.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
