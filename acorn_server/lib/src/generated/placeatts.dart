/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Placeatts extends _i1.TableRow {
  Placeatts._({
    int? id,
    required this.placeatt,
  }) : super(id);

  factory Placeatts({
    int? id,
    required String placeatt,
  }) = _PlaceattsImpl;

  factory Placeatts.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Placeatts(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      placeatt: serializationManager
          .deserialize<String>(jsonSerialization['placeatt']),
    );
  }

  static final t = PlaceattsTable();

  static const db = PlaceattsRepository._();

  String placeatt;

  @override
  _i1.Table get table => t;

  Placeatts copyWith({
    int? id,
    String? placeatt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'placeatt': placeatt,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'placeatt': placeatt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'placeatt': placeatt,
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
      case 'placeatt':
        placeatt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Placeatts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Placeatts>(
      where: where != null ? where(Placeatts.t) : null,
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
  static Future<Placeatts?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Placeatts>(
      where: where != null ? where(Placeatts.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Placeatts?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Placeatts>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Placeatts>(
      where: where(Placeatts.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Placeatts row, {
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
    Placeatts row, {
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
    Placeatts row, {
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
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Placeatts>(
      where: where != null ? where(Placeatts.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PlaceattsInclude include() {
    return PlaceattsInclude._();
  }

  static PlaceattsIncludeList includeList({
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    PlaceattsInclude? include,
  }) {
    return PlaceattsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Placeatts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Placeatts.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PlaceattsImpl extends Placeatts {
  _PlaceattsImpl({
    int? id,
    required String placeatt,
  }) : super._(
          id: id,
          placeatt: placeatt,
        );

  @override
  Placeatts copyWith({
    Object? id = _Undefined,
    String? placeatt,
  }) {
    return Placeatts(
      id: id is int? ? id : this.id,
      placeatt: placeatt ?? this.placeatt,
    );
  }
}

class PlaceattsTable extends _i1.Table {
  PlaceattsTable({super.tableRelation}) : super(tableName: 'placeatts') {
    placeatt = _i1.ColumnString(
      'placeatt',
      this,
    );
  }

  late final _i1.ColumnString placeatt;

  @override
  List<_i1.Column> get columns => [
        id,
        placeatt,
      ];
}

@Deprecated('Use PlaceattsTable.t instead.')
PlaceattsTable tPlaceatts = PlaceattsTable();

class PlaceattsInclude extends _i1.IncludeObject {
  PlaceattsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Placeatts.t;
}

class PlaceattsIncludeList extends _i1.IncludeList {
  PlaceattsIncludeList._({
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Placeatts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Placeatts.t;
}

class PlaceattsRepository {
  const PlaceattsRepository._();

  Future<List<Placeatts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Placeatts>(
      where: where?.call(Placeatts.t),
      orderBy: orderBy?.call(Placeatts.t),
      orderByList: orderByList?.call(Placeatts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Placeatts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Placeatts>(
      where: where?.call(Placeatts.t),
      orderBy: orderBy?.call(Placeatts.t),
      orderByList: orderByList?.call(Placeatts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Placeatts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Placeatts>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Placeatts>> insert(
    _i1.Session session,
    List<Placeatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Placeatts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Placeatts> insertRow(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Placeatts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Placeatts>> update(
    _i1.Session session,
    List<Placeatts> rows, {
    _i1.ColumnSelections<PlaceattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Placeatts>(
      rows,
      columns: columns?.call(Placeatts.t),
      transaction: transaction,
    );
  }

  Future<Placeatts> updateRow(
    _i1.Session session,
    Placeatts row, {
    _i1.ColumnSelections<PlaceattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Placeatts>(
      row,
      columns: columns?.call(Placeatts.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Placeatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Placeatts>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Placeatts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlaceattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Placeatts>(
      where: where(Placeatts.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Placeatts>(
      where: where?.call(Placeatts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
