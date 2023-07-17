/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Organisations extends _i1.TableRow {
  Organisations({
    int? id,
    required this.organisation,
  }) : super(id);

  factory Organisations.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Organisations(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      organisation: serializationManager
          .deserialize<String>(jsonSerialization['organisation']),
    );
  }

  static final t = OrganisationsTable();

  String organisation;

  @override
  String get tableName => 'organisations';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'organisation': organisation,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'organisation': organisation,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'organisation': organisation,
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
      case 'organisation':
        organisation = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Organisations>> find(
    _i1.Session session, {
    OrganisationsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Organisations>(
      where: where != null ? where(Organisations.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Organisations?> findSingleRow(
    _i1.Session session, {
    OrganisationsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Organisations>(
      where: where != null ? where(Organisations.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Organisations?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Organisations>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required OrganisationsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Organisations>(
      where: where(Organisations.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    OrganisationsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Organisations>(
      where: where != null ? where(Organisations.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef OrganisationsExpressionBuilder = _i1.Expression Function(
    OrganisationsTable);

class OrganisationsTable extends _i1.Table {
  OrganisationsTable() : super(tableName: 'organisations');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final organisation = _i1.ColumnString('organisation');

  @override
  List<_i1.Column> get columns => [
        id,
        organisation,
      ];
}

@Deprecated('Use OrganisationsTable.t instead.')
OrganisationsTable tOrganisations = OrganisationsTable();
