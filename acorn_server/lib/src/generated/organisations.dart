/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Organisations
    implements _i1.TableRow, _i1.ProtocolSerialization {
  Organisations._({
    this.id,
    required this.organisation,
  });

  factory Organisations({
    int? id,
    required String organisation,
  }) = _OrganisationsImpl;

  factory Organisations.fromJson(Map<String, dynamic> jsonSerialization) {
    return Organisations(
      id: jsonSerialization['id'] as int?,
      organisation: jsonSerialization['organisation'] as String,
    );
  }

  static final t = OrganisationsTable();

  static const db = OrganisationsRepository._();

  @override
  int? id;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'organisation': organisation,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<Organisations>(
      where: where?.call(Organisations.t),
      orderBy: orderBy?.call(Organisations.t),
      orderByList: orderByList?.call(Organisations.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
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
    return session.db.findFirstRow<Organisations>(
      where: where?.call(Organisations.t),
      orderBy: orderBy?.call(Organisations.t),
      orderByList: orderByList?.call(Organisations.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Organisations?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Organisations>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Organisations>> insert(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Organisations>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Organisations> insertRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Organisations>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Organisations>> update(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.ColumnSelections<OrganisationsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Organisations>(
      rows,
      columns: columns?.call(Organisations.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Organisations> updateRow(
    _i1.Session session,
    Organisations row, {
    _i1.ColumnSelections<OrganisationsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Organisations>(
      row,
      columns: columns?.call(Organisations.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Organisations>> delete(
    _i1.Session session,
    List<Organisations> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Organisations>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Organisations> deleteRow(
    _i1.Session session,
    Organisations row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Organisations>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Organisations>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrganisationsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Organisations>(
      where: where(Organisations.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrganisationsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Organisations>(
      where: where?.call(Organisations.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
