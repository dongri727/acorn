/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Terms extends _i1.TableRow {
  Terms({
    int? id,
    required this.term,
  }) : super(id);

  factory Terms.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Terms(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      term: serializationManager.deserialize<String>(jsonSerialization['term']),
    );
  }

  static final t = TermsTable();

  String term;

  @override
  String get tableName => 'terms';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'term': term,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'term': term,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'term': term,
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
      case 'term':
        term = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Terms>> find(
    _i1.Session session, {
    TermsExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Terms>(
      where: where != null ? where(Terms.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Terms?> findSingleRow(
    _i1.Session session, {
    TermsExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Terms>(
      where: where != null ? where(Terms.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Terms?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Terms>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TermsExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Terms>(
      where: where(Terms.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Terms row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TermsExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Terms>(
      where: where != null ? where(Terms.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TermsExpressionBuilder = _i1.Expression Function(TermsTable);

class TermsTable extends _i1.Table {
  TermsTable() : super(tableName: 'terms');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final term = _i1.ColumnString('term');

  @override
  List<_i1.Column> get columns => [
        id,
        term,
      ];
}

@Deprecated('Use TermsTable.t instead.')
TermsTable tTerms = TermsTable();
