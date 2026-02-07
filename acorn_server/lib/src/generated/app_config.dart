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

abstract class AppConfig
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  AppConfig._({
    this.id,
    this.minBuildIos,
    this.latestBuildIos,
    this.minBuildAndroid,
    this.latestBuildAndroid,
    this.minBuildWeb,
    this.latestBuildWeb,
    this.messageJa,
    this.messageEn,
    this.storeUrlIos,
    this.storeUrlAndroid,
    this.webUrl,
    this.maintenance,
    this.updatedAt,
  });

  factory AppConfig({
    int? id,
    int? minBuildIos,
    int? latestBuildIos,
    int? minBuildAndroid,
    int? latestBuildAndroid,
    int? minBuildWeb,
    int? latestBuildWeb,
    String? messageJa,
    String? messageEn,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
    DateTime? updatedAt,
  }) = _AppConfigImpl;

  factory AppConfig.fromJson(Map<String, dynamic> jsonSerialization) {
    return AppConfig(
      id: jsonSerialization['id'] as int?,
      minBuildIos: jsonSerialization['minBuildIos'] as int?,
      latestBuildIos: jsonSerialization['latestBuildIos'] as int?,
      minBuildAndroid: jsonSerialization['minBuildAndroid'] as int?,
      latestBuildAndroid: jsonSerialization['latestBuildAndroid'] as int?,
      minBuildWeb: jsonSerialization['minBuildWeb'] as int?,
      latestBuildWeb: jsonSerialization['latestBuildWeb'] as int?,
      messageJa: jsonSerialization['messageJa'] as String?,
      messageEn: jsonSerialization['messageEn'] as String?,
      storeUrlIos: jsonSerialization['storeUrlIos'] as String?,
      storeUrlAndroid: jsonSerialization['storeUrlAndroid'] as String?,
      webUrl: jsonSerialization['webUrl'] as String?,
      maintenance: jsonSerialization['maintenance'] as bool?,
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = AppConfigTable();

  static const db = AppConfigRepository._();

  @override
  int? id;

  int? minBuildIos;

  int? latestBuildIos;

  int? minBuildAndroid;

  int? latestBuildAndroid;

  int? minBuildWeb;

  int? latestBuildWeb;

  String? messageJa;

  String? messageEn;

  String? storeUrlIos;

  String? storeUrlAndroid;

  String? webUrl;

  bool? maintenance;

  DateTime? updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [AppConfig]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AppConfig copyWith({
    int? id,
    int? minBuildIos,
    int? latestBuildIos,
    int? minBuildAndroid,
    int? latestBuildAndroid,
    int? minBuildWeb,
    int? latestBuildWeb,
    String? messageJa,
    String? messageEn,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AppConfig',
      if (id != null) 'id': id,
      if (minBuildIos != null) 'minBuildIos': minBuildIos,
      if (latestBuildIos != null) 'latestBuildIos': latestBuildIos,
      if (minBuildAndroid != null) 'minBuildAndroid': minBuildAndroid,
      if (latestBuildAndroid != null) 'latestBuildAndroid': latestBuildAndroid,
      if (minBuildWeb != null) 'minBuildWeb': minBuildWeb,
      if (latestBuildWeb != null) 'latestBuildWeb': latestBuildWeb,
      if (messageJa != null) 'messageJa': messageJa,
      if (messageEn != null) 'messageEn': messageEn,
      if (storeUrlIos != null) 'storeUrlIos': storeUrlIos,
      if (storeUrlAndroid != null) 'storeUrlAndroid': storeUrlAndroid,
      if (webUrl != null) 'webUrl': webUrl,
      if (maintenance != null) 'maintenance': maintenance,
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'AppConfig',
      if (id != null) 'id': id,
      if (minBuildIos != null) 'minBuildIos': minBuildIos,
      if (latestBuildIos != null) 'latestBuildIos': latestBuildIos,
      if (minBuildAndroid != null) 'minBuildAndroid': minBuildAndroid,
      if (latestBuildAndroid != null) 'latestBuildAndroid': latestBuildAndroid,
      if (minBuildWeb != null) 'minBuildWeb': minBuildWeb,
      if (latestBuildWeb != null) 'latestBuildWeb': latestBuildWeb,
      if (messageJa != null) 'messageJa': messageJa,
      if (messageEn != null) 'messageEn': messageEn,
      if (storeUrlIos != null) 'storeUrlIos': storeUrlIos,
      if (storeUrlAndroid != null) 'storeUrlAndroid': storeUrlAndroid,
      if (webUrl != null) 'webUrl': webUrl,
      if (maintenance != null) 'maintenance': maintenance,
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static AppConfigInclude include() {
    return AppConfigInclude._();
  }

  static AppConfigIncludeList includeList({
    _i1.WhereExpressionBuilder<AppConfigTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppConfigTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppConfigTable>? orderByList,
    AppConfigInclude? include,
  }) {
    return AppConfigIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AppConfig.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AppConfig.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AppConfigImpl extends AppConfig {
  _AppConfigImpl({
    int? id,
    int? minBuildIos,
    int? latestBuildIos,
    int? minBuildAndroid,
    int? latestBuildAndroid,
    int? minBuildWeb,
    int? latestBuildWeb,
    String? messageJa,
    String? messageEn,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         minBuildIos: minBuildIos,
         latestBuildIos: latestBuildIos,
         minBuildAndroid: minBuildAndroid,
         latestBuildAndroid: latestBuildAndroid,
         minBuildWeb: minBuildWeb,
         latestBuildWeb: latestBuildWeb,
         messageJa: messageJa,
         messageEn: messageEn,
         storeUrlIos: storeUrlIos,
         storeUrlAndroid: storeUrlAndroid,
         webUrl: webUrl,
         maintenance: maintenance,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [AppConfig]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AppConfig copyWith({
    Object? id = _Undefined,
    Object? minBuildIos = _Undefined,
    Object? latestBuildIos = _Undefined,
    Object? minBuildAndroid = _Undefined,
    Object? latestBuildAndroid = _Undefined,
    Object? minBuildWeb = _Undefined,
    Object? latestBuildWeb = _Undefined,
    Object? messageJa = _Undefined,
    Object? messageEn = _Undefined,
    Object? storeUrlIos = _Undefined,
    Object? storeUrlAndroid = _Undefined,
    Object? webUrl = _Undefined,
    Object? maintenance = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return AppConfig(
      id: id is int? ? id : this.id,
      minBuildIos: minBuildIos is int? ? minBuildIos : this.minBuildIos,
      latestBuildIos: latestBuildIos is int?
          ? latestBuildIos
          : this.latestBuildIos,
      minBuildAndroid: minBuildAndroid is int?
          ? minBuildAndroid
          : this.minBuildAndroid,
      latestBuildAndroid: latestBuildAndroid is int?
          ? latestBuildAndroid
          : this.latestBuildAndroid,
      minBuildWeb: minBuildWeb is int? ? minBuildWeb : this.minBuildWeb,
      latestBuildWeb: latestBuildWeb is int?
          ? latestBuildWeb
          : this.latestBuildWeb,
      messageJa: messageJa is String? ? messageJa : this.messageJa,
      messageEn: messageEn is String? ? messageEn : this.messageEn,
      storeUrlIos: storeUrlIos is String? ? storeUrlIos : this.storeUrlIos,
      storeUrlAndroid: storeUrlAndroid is String?
          ? storeUrlAndroid
          : this.storeUrlAndroid,
      webUrl: webUrl is String? ? webUrl : this.webUrl,
      maintenance: maintenance is bool? ? maintenance : this.maintenance,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}

class AppConfigUpdateTable extends _i1.UpdateTable<AppConfigTable> {
  AppConfigUpdateTable(super.table);

  _i1.ColumnValue<int, int> minBuildIos(int? value) => _i1.ColumnValue(
    table.minBuildIos,
    value,
  );

  _i1.ColumnValue<int, int> latestBuildIos(int? value) => _i1.ColumnValue(
    table.latestBuildIos,
    value,
  );

  _i1.ColumnValue<int, int> minBuildAndroid(int? value) => _i1.ColumnValue(
    table.minBuildAndroid,
    value,
  );

  _i1.ColumnValue<int, int> latestBuildAndroid(int? value) => _i1.ColumnValue(
    table.latestBuildAndroid,
    value,
  );

  _i1.ColumnValue<int, int> minBuildWeb(int? value) => _i1.ColumnValue(
    table.minBuildWeb,
    value,
  );

  _i1.ColumnValue<int, int> latestBuildWeb(int? value) => _i1.ColumnValue(
    table.latestBuildWeb,
    value,
  );

  _i1.ColumnValue<String, String> messageJa(String? value) => _i1.ColumnValue(
    table.messageJa,
    value,
  );

  _i1.ColumnValue<String, String> messageEn(String? value) => _i1.ColumnValue(
    table.messageEn,
    value,
  );

  _i1.ColumnValue<String, String> storeUrlIos(String? value) => _i1.ColumnValue(
    table.storeUrlIos,
    value,
  );

  _i1.ColumnValue<String, String> storeUrlAndroid(String? value) =>
      _i1.ColumnValue(
        table.storeUrlAndroid,
        value,
      );

  _i1.ColumnValue<String, String> webUrl(String? value) => _i1.ColumnValue(
    table.webUrl,
    value,
  );

  _i1.ColumnValue<bool, bool> maintenance(bool? value) => _i1.ColumnValue(
    table.maintenance,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class AppConfigTable extends _i1.Table<int?> {
  AppConfigTable({super.tableRelation}) : super(tableName: 'app_config') {
    updateTable = AppConfigUpdateTable(this);
    minBuildIos = _i1.ColumnInt(
      'minBuildIos',
      this,
    );
    latestBuildIos = _i1.ColumnInt(
      'latestBuildIos',
      this,
    );
    minBuildAndroid = _i1.ColumnInt(
      'minBuildAndroid',
      this,
    );
    latestBuildAndroid = _i1.ColumnInt(
      'latestBuildAndroid',
      this,
    );
    minBuildWeb = _i1.ColumnInt(
      'minBuildWeb',
      this,
    );
    latestBuildWeb = _i1.ColumnInt(
      'latestBuildWeb',
      this,
    );
    messageJa = _i1.ColumnString(
      'messageJa',
      this,
    );
    messageEn = _i1.ColumnString(
      'messageEn',
      this,
    );
    storeUrlIos = _i1.ColumnString(
      'storeUrlIos',
      this,
    );
    storeUrlAndroid = _i1.ColumnString(
      'storeUrlAndroid',
      this,
    );
    webUrl = _i1.ColumnString(
      'webUrl',
      this,
    );
    maintenance = _i1.ColumnBool(
      'maintenance',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final AppConfigUpdateTable updateTable;

  late final _i1.ColumnInt minBuildIos;

  late final _i1.ColumnInt latestBuildIos;

  late final _i1.ColumnInt minBuildAndroid;

  late final _i1.ColumnInt latestBuildAndroid;

  late final _i1.ColumnInt minBuildWeb;

  late final _i1.ColumnInt latestBuildWeb;

  late final _i1.ColumnString messageJa;

  late final _i1.ColumnString messageEn;

  late final _i1.ColumnString storeUrlIos;

  late final _i1.ColumnString storeUrlAndroid;

  late final _i1.ColumnString webUrl;

  late final _i1.ColumnBool maintenance;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    minBuildIos,
    latestBuildIos,
    minBuildAndroid,
    latestBuildAndroid,
    minBuildWeb,
    latestBuildWeb,
    messageJa,
    messageEn,
    storeUrlIos,
    storeUrlAndroid,
    webUrl,
    maintenance,
    updatedAt,
  ];
}

class AppConfigInclude extends _i1.IncludeObject {
  AppConfigInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => AppConfig.t;
}

class AppConfigIncludeList extends _i1.IncludeList {
  AppConfigIncludeList._({
    _i1.WhereExpressionBuilder<AppConfigTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AppConfig.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => AppConfig.t;
}

class AppConfigRepository {
  const AppConfigRepository._();

  /// Returns a list of [AppConfig]s matching the given query parameters.
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
  Future<List<AppConfig>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppConfigTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppConfigTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppConfigTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AppConfig>(
      where: where?.call(AppConfig.t),
      orderBy: orderBy?.call(AppConfig.t),
      orderByList: orderByList?.call(AppConfig.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [AppConfig] matching the given query parameters.
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
  Future<AppConfig?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppConfigTable>? where,
    int? offset,
    _i1.OrderByBuilder<AppConfigTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppConfigTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<AppConfig>(
      where: where?.call(AppConfig.t),
      orderBy: orderBy?.call(AppConfig.t),
      orderByList: orderByList?.call(AppConfig.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [AppConfig] by its [id] or null if no such row exists.
  Future<AppConfig?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<AppConfig>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [AppConfig]s in the list and returns the inserted rows.
  ///
  /// The returned [AppConfig]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<AppConfig>> insert(
    _i1.Session session,
    List<AppConfig> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<AppConfig>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [AppConfig] and returns the inserted row.
  ///
  /// The returned [AppConfig] will have its `id` field set.
  Future<AppConfig> insertRow(
    _i1.Session session,
    AppConfig row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AppConfig>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [AppConfig]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<AppConfig>> update(
    _i1.Session session,
    List<AppConfig> rows, {
    _i1.ColumnSelections<AppConfigTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AppConfig>(
      rows,
      columns: columns?.call(AppConfig.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AppConfig]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AppConfig> updateRow(
    _i1.Session session,
    AppConfig row, {
    _i1.ColumnSelections<AppConfigTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<AppConfig>(
      row,
      columns: columns?.call(AppConfig.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AppConfig] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<AppConfig?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<AppConfigUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<AppConfig>(
      id,
      columnValues: columnValues(AppConfig.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [AppConfig]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<AppConfig>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<AppConfigUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<AppConfigTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppConfigTable>? orderBy,
    _i1.OrderByListBuilder<AppConfigTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<AppConfig>(
      columnValues: columnValues(AppConfig.t.updateTable),
      where: where(AppConfig.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AppConfig.t),
      orderByList: orderByList?.call(AppConfig.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [AppConfig]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<AppConfig>> delete(
    _i1.Session session,
    List<AppConfig> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AppConfig>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [AppConfig].
  Future<AppConfig> deleteRow(
    _i1.Session session,
    AppConfig row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AppConfig>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<AppConfig>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AppConfigTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AppConfig>(
      where: where(AppConfig.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppConfigTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AppConfig>(
      where: where?.call(AppConfig.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
