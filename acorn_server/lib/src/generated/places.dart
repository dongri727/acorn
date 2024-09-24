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

abstract class Places extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Places._({
    int? id,
    required this.place,
    required this.country,
  }) : super(id);

  factory Places({
    int? id,
    required String place,
    required String country,
  }) = _PlacesImpl;

  factory Places.fromJson(Map<String, dynamic> jsonSerialization) {
    return Places(
      id: jsonSerialization['id'] as int?,
      place: jsonSerialization['place'] as String,
      country: jsonSerialization['country'] as String,
    );
  }

  static final t = PlacesTable();

  static const db = PlacesRepository._();

  String place;

  String country;

  @override
  _i1.Table get table => t;

  Places copyWith({
    int? id,
    String? place,
    String? country,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'place': place,
      'country': country,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'place': place,
      'country': country,
    };
  }

  static PlacesInclude include() {
    return PlacesInclude._();
  }

  static PlacesIncludeList includeList({
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    PlacesInclude? include,
  }) {
    return PlacesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Places.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Places.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlacesImpl extends Places {
  _PlacesImpl({
    int? id,
    required String place,
    required String country,
  }) : super._(
          id: id,
          place: place,
          country: country,
        );

  @override
  Places copyWith({
    Object? id = _Undefined,
    String? place,
    String? country,
  }) {
    return Places(
      id: id is int? ? id : this.id,
      place: place ?? this.place,
      country: country ?? this.country,
    );
  }
}

class PlacesTable extends _i1.Table {
  PlacesTable({super.tableRelation}) : super(tableName: 'places') {
    place = _i1.ColumnString(
      'place',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
  }

  late final _i1.ColumnString place;

  late final _i1.ColumnString country;

  @override
  List<_i1.Column> get columns => [
        id,
        place,
        country,
      ];
}

class PlacesInclude extends _i1.IncludeObject {
  PlacesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Places.t;
}

class PlacesIncludeList extends _i1.IncludeList {
  PlacesIncludeList._({
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Places.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Places.t;
}

class PlacesRepository {
  const PlacesRepository._();

  Future<List<Places>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Places>(
      where: where?.call(Places.t),
      orderBy: orderBy?.call(Places.t),
      orderByList: orderByList?.call(Places.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Places?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlacesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlacesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Places>(
      where: where?.call(Places.t),
      orderBy: orderBy?.call(Places.t),
      orderByList: orderByList?.call(Places.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Places?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Places>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Places>> insert(
    _i1.Session session,
    List<Places> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Places>(
      rows,
      transaction: transaction,
    );
  }

  Future<Places> insertRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Places>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Places>> update(
    _i1.Session session,
    List<Places> rows, {
    _i1.ColumnSelections<PlacesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Places>(
      rows,
      columns: columns?.call(Places.t),
      transaction: transaction,
    );
  }

  Future<Places> updateRow(
    _i1.Session session,
    Places row, {
    _i1.ColumnSelections<PlacesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Places>(
      row,
      columns: columns?.call(Places.t),
      transaction: transaction,
    );
  }

  Future<List<Places>> delete(
    _i1.Session session,
    List<Places> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Places>(
      rows,
      transaction: transaction,
    );
  }

  Future<Places> deleteRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Places>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Places>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlacesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Places>(
      where: where(Places.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Places>(
      where: where?.call(Places.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
