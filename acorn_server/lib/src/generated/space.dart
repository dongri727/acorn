/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Space implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Space._({
    this.id,
    required this.principalId,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.precise,
    required this.hecX,
    required this.hecY,
    required this.hecZ,
    required this.julianD,
    required this.gLat,
    required this.gLon,
    required this.lightYear,
  });

  factory Space({
    int? id,
    required int principalId,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
    required double hecX,
    required double hecY,
    required double hecZ,
    required int julianD,
    required double gLat,
    required double gLon,
    required double lightYear,
  }) = _SpaceImpl;

  factory Space.fromJson(Map<String, dynamic> jsonSerialization) {
    return Space(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      annee: jsonSerialization['annee'] as String,
      month: jsonSerialization['month'] as int,
      day: jsonSerialization['day'] as int,
      point: jsonSerialization['point'] as int,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      hecX: (jsonSerialization['hecX'] as num).toDouble(),
      hecY: (jsonSerialization['hecY'] as num).toDouble(),
      hecZ: (jsonSerialization['hecZ'] as num).toDouble(),
      julianD: jsonSerialization['julianD'] as int,
      gLat: (jsonSerialization['gLat'] as num).toDouble(),
      gLon: (jsonSerialization['gLon'] as num).toDouble(),
      lightYear: (jsonSerialization['lightYear'] as num).toDouble(),
    );
  }

  static final t = SpaceTable();

  static const db = SpaceRepository._();

  @override
  int? id;

  int principalId;

  String annee;

  int month;

  int day;

  int point;

  String affair;

  String location;

  String precise;

  double hecX;

  double hecY;

  double hecZ;

  int julianD;

  double gLat;

  double gLon;

  double lightYear;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Space]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Space copyWith({
    int? id,
    int? principalId,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
    double? hecX,
    double? hecY,
    double? hecZ,
    int? julianD,
    double? gLat,
    double? gLon,
    double? lightYear,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Space',
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
      'hecX': hecX,
      'hecY': hecY,
      'hecZ': hecZ,
      'julianD': julianD,
      'gLat': gLat,
      'gLon': gLon,
      'lightYear': lightYear,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Space',
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
      'hecX': hecX,
      'hecY': hecY,
      'hecZ': hecZ,
      'julianD': julianD,
      'gLat': gLat,
      'gLon': gLon,
      'lightYear': lightYear,
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
    required int principalId,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
    required double hecX,
    required double hecY,
    required double hecZ,
    required int julianD,
    required double gLat,
    required double gLon,
    required double lightYear,
  }) : super._(
         id: id,
         principalId: principalId,
         annee: annee,
         month: month,
         day: day,
         point: point,
         affair: affair,
         location: location,
         precise: precise,
         hecX: hecX,
         hecY: hecY,
         hecZ: hecZ,
         julianD: julianD,
         gLat: gLat,
         gLon: gLon,
         lightYear: lightYear,
       );

  /// Returns a shallow copy of this [Space]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Space copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
    double? hecX,
    double? hecY,
    double? hecZ,
    int? julianD,
    double? gLat,
    double? gLon,
    double? lightYear,
  }) {
    return Space(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      annee: annee ?? this.annee,
      month: month ?? this.month,
      day: day ?? this.day,
      point: point ?? this.point,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      hecX: hecX ?? this.hecX,
      hecY: hecY ?? this.hecY,
      hecZ: hecZ ?? this.hecZ,
      julianD: julianD ?? this.julianD,
      gLat: gLat ?? this.gLat,
      gLon: gLon ?? this.gLon,
      lightYear: lightYear ?? this.lightYear,
    );
  }
}

class SpaceUpdateTable extends _i1.UpdateTable<SpaceTable> {
  SpaceUpdateTable(super.table);

  _i1.ColumnValue<int, int> principalId(int value) => _i1.ColumnValue(
    table.principalId,
    value,
  );

  _i1.ColumnValue<String, String> annee(String value) => _i1.ColumnValue(
    table.annee,
    value,
  );

  _i1.ColumnValue<int, int> month(int value) => _i1.ColumnValue(
    table.month,
    value,
  );

  _i1.ColumnValue<int, int> day(int value) => _i1.ColumnValue(
    table.day,
    value,
  );

  _i1.ColumnValue<int, int> point(int value) => _i1.ColumnValue(
    table.point,
    value,
  );

  _i1.ColumnValue<String, String> affair(String value) => _i1.ColumnValue(
    table.affair,
    value,
  );

  _i1.ColumnValue<String, String> location(String value) => _i1.ColumnValue(
    table.location,
    value,
  );

  _i1.ColumnValue<String, String> precise(String value) => _i1.ColumnValue(
    table.precise,
    value,
  );

  _i1.ColumnValue<double, double> hecX(double value) => _i1.ColumnValue(
    table.hecX,
    value,
  );

  _i1.ColumnValue<double, double> hecY(double value) => _i1.ColumnValue(
    table.hecY,
    value,
  );

  _i1.ColumnValue<double, double> hecZ(double value) => _i1.ColumnValue(
    table.hecZ,
    value,
  );

  _i1.ColumnValue<int, int> julianD(int value) => _i1.ColumnValue(
    table.julianD,
    value,
  );

  _i1.ColumnValue<double, double> gLat(double value) => _i1.ColumnValue(
    table.gLat,
    value,
  );

  _i1.ColumnValue<double, double> gLon(double value) => _i1.ColumnValue(
    table.gLon,
    value,
  );

  _i1.ColumnValue<double, double> lightYear(double value) => _i1.ColumnValue(
    table.lightYear,
    value,
  );
}

class SpaceTable extends _i1.Table<int?> {
  SpaceTable({super.tableRelation}) : super(tableName: 'space') {
    updateTable = SpaceUpdateTable(this);
    principalId = _i1.ColumnInt(
      'principalId',
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
    hecX = _i1.ColumnDouble(
      'hecX',
      this,
    );
    hecY = _i1.ColumnDouble(
      'hecY',
      this,
    );
    hecZ = _i1.ColumnDouble(
      'hecZ',
      this,
    );
    julianD = _i1.ColumnInt(
      'julianD',
      this,
    );
    gLat = _i1.ColumnDouble(
      'gLat',
      this,
    );
    gLon = _i1.ColumnDouble(
      'gLon',
      this,
    );
    lightYear = _i1.ColumnDouble(
      'lightYear',
      this,
    );
  }

  late final SpaceUpdateTable updateTable;

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString annee;

  late final _i1.ColumnInt month;

  late final _i1.ColumnInt day;

  late final _i1.ColumnInt point;

  late final _i1.ColumnString affair;

  late final _i1.ColumnString location;

  late final _i1.ColumnString precise;

  late final _i1.ColumnDouble hecX;

  late final _i1.ColumnDouble hecY;

  late final _i1.ColumnDouble hecZ;

  late final _i1.ColumnInt julianD;

  late final _i1.ColumnDouble gLat;

  late final _i1.ColumnDouble gLon;

  late final _i1.ColumnDouble lightYear;

  @override
  List<_i1.Column> get columns => [
    id,
    principalId,
    annee,
    month,
    day,
    point,
    affair,
    location,
    precise,
    hecX,
    hecY,
    hecZ,
    julianD,
    gLat,
    gLon,
    lightYear,
  ];
}

class SpaceInclude extends _i1.IncludeObject {
  SpaceInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Space.t;
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
  _i1.Table<int?> get table => Space.t;
}

class SpaceRepository {
  const SpaceRepository._();

  /// Returns a list of [Space]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
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

  /// Returns the first matching [Space] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
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

  /// Finds a single [Space] by its [id] or null if no such row exists.
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

  /// Inserts all [Space]s in the list and returns the inserted rows.
  ///
  /// The returned [Space]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
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

  /// Inserts a single [Space] and returns the inserted row.
  ///
  /// The returned [Space] will have its `id` field set.
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

  /// Updates all [Space]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
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

  /// Updates a single [Space]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
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

  /// Updates a single [Space] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Space?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SpaceUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Space>(
      id,
      columnValues: columnValues(Space.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Space]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Space>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SpaceUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SpaceTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SpaceTable>? orderBy,
    _i1.OrderByListBuilder<SpaceTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Space>(
      columnValues: columnValues(Space.t.updateTable),
      where: where(Space.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Space.t),
      orderByList: orderByList?.call(Space.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Space]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
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

  /// Deletes a single [Space].
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

  /// Deletes all rows matching the [where] expression.
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

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
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
