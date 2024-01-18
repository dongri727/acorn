/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Principal extends _i1.TableRow {
  Principal._({
    int? id,
    required this.period,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.precise,
  }) : super(id);

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

  factory Principal.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Principal(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      period:
          serializationManager.deserialize<String>(jsonSerialization['period']),
      annee:
          serializationManager.deserialize<String>(jsonSerialization['annee']),
      month: serializationManager.deserialize<int>(jsonSerialization['month']),
      day: serializationManager.deserialize<int>(jsonSerialization['day']),
      point: serializationManager.deserialize<int>(jsonSerialization['point']),
      affair:
          serializationManager.deserialize<String>(jsonSerialization['affair']),
      location: serializationManager
          .deserialize<String>(jsonSerialization['location']),
      precise: serializationManager
          .deserialize<String>(jsonSerialization['precise']),
    );
  }

  static final t = PrincipalTable();

  static const db = PrincipalRepository._();

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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
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
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
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
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'period':
        period = value;
        return;
      case 'annee':
        annee = value;
        return;
      case 'month':
        month = value;
        return;
      case 'day':
        day = value;
        return;
      case 'point':
        point = value;
        return;
      case 'affair':
        affair = value;
        return;
      case 'location':
        location = value;
        return;
      case 'precise':
        precise = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Principal>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Principal>(
      where: where != null ? where(Principal.t) : null,
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
  static Future<Principal?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Principal>(
      where: where != null ? where(Principal.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Principal?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Principal>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Principal>(
      where: where(Principal.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Principal row, {
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
    Principal row, {
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
    Principal row, {
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
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Principal>(
      where: where != null ? where(Principal.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use PrincipalTable.t instead.')
PrincipalTable tPrincipal = PrincipalTable();

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
    return session.dbNext.find<Principal>(
      where: where?.call(Principal.t),
      orderBy: orderBy?.call(Principal.t),
      orderByList: orderByList?.call(Principal.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
    return session.dbNext.findFirstRow<Principal>(
      where: where?.call(Principal.t),
      orderBy: orderBy?.call(Principal.t),
      orderByList: orderByList?.call(Principal.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Principal?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Principal>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Principal>> insert(
    _i1.Session session,
    List<Principal> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Principal>(
      rows,
      transaction: transaction,
    );
  }

  Future<Principal> insertRow(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Principal>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Principal>> update(
    _i1.Session session,
    List<Principal> rows, {
    _i1.ColumnSelections<PrincipalTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Principal>(
      rows,
      columns: columns?.call(Principal.t),
      transaction: transaction,
    );
  }

  Future<Principal> updateRow(
    _i1.Session session,
    Principal row, {
    _i1.ColumnSelections<PrincipalTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Principal>(
      row,
      columns: columns?.call(Principal.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Principal> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Principal>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Principal row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Principal>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrincipalTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Principal>(
      where: where(Principal.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrincipalTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Principal>(
      where: where?.call(Principal.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
