/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Countryatts extends _i1.TableRow {
  Countryatts({
    int? id,
    required this.countryatt,
  }) : super(id);

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

  String countryatt;

  @override
  String get tableName => 'countryatts';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'countryatt': countryatt,
    };
  }

  @override
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

  static Future<List<Countryatts>> find(
    _i1.Session session, {
    CountryattsExpressionBuilder? where,
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

  static Future<Countryatts?> findSingleRow(
    _i1.Session session, {
    CountryattsExpressionBuilder? where,
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

  static Future<Countryatts?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Countryatts>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required CountryattsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Countryatts>(
      where: where(Countryatts.t),
      transaction: transaction,
    );
  }

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

  static Future<int> count(
    _i1.Session session, {
    CountryattsExpressionBuilder? where,
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
}

typedef CountryattsExpressionBuilder = _i1.Expression Function(
    CountryattsTable);

class CountryattsTable extends _i1.Table {
  CountryattsTable() : super(tableName: 'countryatts');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final countryatt = _i1.ColumnString('countryatt');

  @override
  List<_i1.Column> get columns => [
        id,
        countryatt,
      ];
}

@Deprecated('Use CountryattsTable.t instead.')
CountryattsTable tCountryatts = CountryattsTable();
