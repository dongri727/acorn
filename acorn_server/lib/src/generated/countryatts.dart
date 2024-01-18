/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Countryatts extends _i1.TableRow {
  Countryatts._({
    int? id,
    required this.countryatt,
  }) : super(id);

  factory Countryatts({
    int? id,
    required String countryatt,
  }) = _CountryattsImpl;

  factory Countryatts.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Countryatts(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      countryatt: serializationManager
          .deserialize<String>(jsonSerialization['countryatt']),
    );
  }

  static final t = CountryattsTable();

  static const db = CountryattsRepository._();

  String countryatt;

  @override
  _i1.Table get table => t;

  Countryatts copyWith({
    int? id,
    String? countryatt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'countryatt': countryatt,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'countryatt': countryatt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'countryatt': countryatt,
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
      case 'countryatt':
        countryatt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Countryatts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Countryatts>(
      where: where != null ? where(Countryatts.t) : null,
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
  static Future<Countryatts?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Countryatts>(
      where: where != null ? where(Countryatts.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Countryatts?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Countryatts>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Countryatts>(
      where: where(Countryatts.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Countryatts row, {
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
    Countryatts row, {
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
    Countryatts row, {
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
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Countryatts>(
      where: where != null ? where(Countryatts.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static CountryattsInclude include() {
    return CountryattsInclude._();
  }

  static CountryattsIncludeList includeList({
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    CountryattsInclude? include,
  }) {
    return CountryattsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Countryatts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Countryatts.t),
      include: include,
    );
  }
}

class _Undefined {}

class _CountryattsImpl extends Countryatts {
  _CountryattsImpl({
    int? id,
    required String countryatt,
  }) : super._(
          id: id,
          countryatt: countryatt,
        );

  @override
  Countryatts copyWith({
    Object? id = _Undefined,
    String? countryatt,
  }) {
    return Countryatts(
      id: id is int? ? id : this.id,
      countryatt: countryatt ?? this.countryatt,
    );
  }
}

class CountryattsTable extends _i1.Table {
  CountryattsTable({super.tableRelation}) : super(tableName: 'countryatts') {
    countryatt = _i1.ColumnString(
      'countryatt',
      this,
    );
  }

  late final _i1.ColumnString countryatt;

  @override
  List<_i1.Column> get columns => [
        id,
        countryatt,
      ];
}

@Deprecated('Use CountryattsTable.t instead.')
CountryattsTable tCountryatts = CountryattsTable();

class CountryattsInclude extends _i1.IncludeObject {
  CountryattsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Countryatts.t;
}

class CountryattsIncludeList extends _i1.IncludeList {
  CountryattsIncludeList._({
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Countryatts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Countryatts.t;
}

class CountryattsRepository {
  const CountryattsRepository._();

  Future<List<Countryatts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Countryatts>(
      where: where?.call(Countryatts.t),
      orderBy: orderBy?.call(Countryatts.t),
      orderByList: orderByList?.call(Countryatts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Countryatts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? offset,
    _i1.OrderByBuilder<CountryattsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CountryattsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Countryatts>(
      where: where?.call(Countryatts.t),
      orderBy: orderBy?.call(Countryatts.t),
      orderByList: orderByList?.call(Countryatts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Countryatts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Countryatts>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Countryatts>> insert(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Countryatts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Countryatts> insertRow(
    _i1.Session session,
    Countryatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Countryatts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Countryatts>> update(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.ColumnSelections<CountryattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Countryatts>(
      rows,
      columns: columns?.call(Countryatts.t),
      transaction: transaction,
    );
  }

  Future<Countryatts> updateRow(
    _i1.Session session,
    Countryatts row, {
    _i1.ColumnSelections<CountryattsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Countryatts>(
      row,
      columns: columns?.call(Countryatts.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Countryatts>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Countryatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Countryatts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Countryatts>(
      where: where(Countryatts.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CountryattsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Countryatts>(
      where: where?.call(Countryatts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
