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

abstract class Countryatts extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Countryatts._({
    int? id,
    required this.countryatt,
  }) : super(id);

  factory Countryatts({
    int? id,
    required String countryatt,
  }) = _CountryattsImpl;

  factory Countryatts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Countryatts(
      id: jsonSerialization['id'] as int?,
      countryatt: jsonSerialization['countryatt'] as String,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'countryatt': countryatt,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<Countryatts>(
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
    return session.db.findFirstRow<Countryatts>(
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
    return session.db.findById<Countryatts>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Countryatts>> insert(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Countryatts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Countryatts> insertRow(
    _i1.Session session,
    Countryatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Countryatts>(
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
    return session.db.update<Countryatts>(
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
    return session.db.updateRow<Countryatts>(
      row,
      columns: columns?.call(Countryatts.t),
      transaction: transaction,
    );
  }

  Future<List<Countryatts>> delete(
    _i1.Session session,
    List<Countryatts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Countryatts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Countryatts> deleteRow(
    _i1.Session session,
    Countryatts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Countryatts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Countryatts>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CountryattsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Countryatts>(
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
    return session.db.count<Countryatts>(
      where: where?.call(Countryatts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
