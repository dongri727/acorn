/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Organisations extends _i1.TableRow {
  Organisations._({
    int? id,
    required this.organisation,
  }) : super(id);

  factory Organisations({
    int? id,
    required String organisation,
  }) = _OrganisationsImpl;

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

  static const db = OrganisationsRepository._();

  String organisation;

  @override
  _i1.Table get table => t;

  Organisations copyWith({
    int? id,
    String? organisation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'organisation': organisation,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Organisations>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Organisations?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
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

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Organisations?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Organisations>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrganisationsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Organisations>(
      where: where(Organisations.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
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

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
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

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
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

  static OrganisationsInclude include() {
    return OrganisationsInclude._();
  }

  static OrganisationsIncludeList includeList({
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationsTable>? orderByList,
    OrganisationsInclude? include,
  }) {
    return OrganisationsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Organisations.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Organisations.t),
      include: include,
    );
  }
}

class _Undefined {}

class _OrganisationsImpl extends Organisations {
  _OrganisationsImpl({
    int? id,
    required String organisation,
  }) : super._(
          id: id,
          organisation: organisation,
        );

  @override
  Organisations copyWith({
    Object? id = _Undefined,
    String? organisation,
  }) {
    return Organisations(
      id: id is int? ? id : this.id,
      organisation: organisation ?? this.organisation,
    );
  }
}

class OrganisationsTable extends _i1.Table {
  OrganisationsTable({super.tableRelation})
      : super(tableName: 'organisations') {
    organisation = _i1.ColumnString(
      'organisation',
      this,
    );
  }

  late final _i1.ColumnString organisation;

  @override
  List<_i1.Column> get columns => [
        id,
        organisation,
      ];
}

@Deprecated('Use OrganisationsTable.t instead.')
OrganisationsTable tOrganisations = OrganisationsTable();

class OrganisationsInclude extends _i1.IncludeObject {
  OrganisationsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Organisations.t;
}

class OrganisationsIncludeList extends _i1.IncludeList {
  OrganisationsIncludeList._({
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Organisations.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Organisations.t;
}

class OrganisationsRepository {
  const OrganisationsRepository._();

  Future<List<Organisations>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrganisationsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Organisations>(
      where: where?.call(Organisations.t),
      orderBy: orderBy?.call(Organisations.t),
      orderByList: orderByList?.call(Organisations.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Organisations?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrganisationsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrganisationsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Organisations>(
      where: where?.call(Organisations.t),
      orderBy: orderBy?.call(Organisations.t),
      orderByList: orderByList?.call(Organisations.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Organisations?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Organisations>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Organisations>> insert(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Organisations>(
      rows,
      transaction: transaction,
    );
  }

  Future<Organisations> insertRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Organisations>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Organisations>> update(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.ColumnSelections<OrganisationsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Organisations>(
      rows,
      columns: columns?.call(Organisations.t),
      transaction: transaction,
    );
  }

  Future<Organisations> updateRow(
    _i1.Session session,
    Organisations row, {
    _i1.ColumnSelections<OrganisationsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Organisations>(
      row,
      columns: columns?.call(Organisations.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Organisations>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Organisations>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrganisationsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Organisations>(
      where: where(Organisations.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Organisations>(
      where: where?.call(Organisations.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
