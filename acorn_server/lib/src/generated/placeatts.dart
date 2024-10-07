/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Placeatts implements _i1.TableRow, _i1.ProtocolSerialization {
  Placeatts._({
    this.id,
    required this.placeatt,
  });

  factory Placeatts({
    int? id,
    required String placeatt,
  }) = _PlaceattsImpl;

  factory Placeatts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Placeatts(
      id: jsonSerialization['id'] as int?,
      placeatt: jsonSerialization['placeatt'] as String,
    );
  }

  static final t = PlaceattsTable();

  static const db = PlaceattsRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'placeatt': placeatt,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<Placeatts>(
      where: where?.call(Placeatts.t),
      orderBy: orderBy?.call(Placeatts.t),
      orderByList: orderByList?.call(Placeatts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Placeatts?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlaceattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlaceattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<Placeatts>(
      where: where?.call(Placeatts.t),
      orderBy: orderBy?.call(Placeatts.t),
      orderByList: orderByList?.call(Placeatts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Placeatts?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<Placeatts>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Placeatts>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Placeatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Placeatts>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Placeatts> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Placeatts>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Placeatts>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Placeatts> rows, {
    _i1.ColumnSelections<PlaceattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Placeatts>(
      rows,
      columns: columns?.call(Placeatts.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Placeatts> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Placeatts row, {
    _i1.ColumnSelections<PlaceattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Placeatts>(
      row,
      columns: columns?.call(Placeatts.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Placeatts>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Placeatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Placeatts>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Placeatts> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Placeatts row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Placeatts>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Placeatts>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<PlaceattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Placeatts>(
      where: where(Placeatts.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PlaceattsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Placeatts>(
      where: where?.call(Placeatts.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
