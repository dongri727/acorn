/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Places extends _i1.TableRow {
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

  factory Places.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Places(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      place:
          serializationManager.deserialize<String>(jsonSerialization['place']),
      country: serializationManager
          .deserialize<String>(jsonSerialization['country']),
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
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'place': place,
      'country': country,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'place': place,
      'country': country,
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
      case 'place':
        place = value;
        return;
      case 'country':
        country = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Places>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Places>(
      where: where != null ? where(Places.t) : null,
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
  static Future<Places?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Places>(
      where: where != null ? where(Places.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Places?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Places>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlacesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Places>(
      where: where(Places.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Places row, {
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
    Places row, {
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
    Places row, {
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
    _i1.WhereExpressionBuilder<PlacesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Places>(
      where: where != null ? where(Places.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
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

@Deprecated('Use PlacesTable.t instead.')
PlacesTable tPlaces = PlacesTable();

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
    return session.dbNext.find<Places>(
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
    return session.dbNext.findFirstRow<Places>(
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
    return session.dbNext.findById<Places>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Places>> insert(
    _i1.Session session,
    List<Places> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Places>(
      rows,
      transaction: transaction,
    );
  }

  Future<Places> insertRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Places>(
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
    return session.dbNext.update<Places>(
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
    return session.dbNext.updateRow<Places>(
      row,
      columns: columns?.call(Places.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Places> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Places>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Places row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Places>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlacesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Places>(
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
    return session.dbNext.count<Places>(
      where: where?.call(Places.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
