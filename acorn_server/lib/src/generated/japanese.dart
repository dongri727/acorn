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

abstract class Japanese implements _i1.TableRow, _i1.ProtocolSerialization {
  Japanese._({
    this.id,
    required this.principalId,
    required this.japaneseName,
  });

  factory Japanese({
    int? id,
    required int principalId,
    required String japaneseName,
  }) = _JapaneseImpl;

  factory Japanese.fromJson(Map<String, dynamic> jsonSerialization) {
    return Japanese(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      japaneseName: jsonSerialization['japaneseName'] as String,
    );
  }

  static final t = JapaneseTable();

  static const db = JapaneseRepository._();

  @override
  int? id;

  int principalId;

  String japaneseName;

  @override
  _i1.Table get table => t;

  Japanese copyWith({
    int? id,
    int? principalId,
    String? japaneseName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'japaneseName': japaneseName,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'principalId': principalId,
      'japaneseName': japaneseName,
    };
  }

  static JapaneseInclude include() {
    return JapaneseInclude._();
  }

  static JapaneseIncludeList includeList({
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    JapaneseInclude? include,
  }) {
    return JapaneseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Japanese.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Japanese.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _JapaneseImpl extends Japanese {
  _JapaneseImpl({
    int? id,
    required int principalId,
    required String japaneseName,
  }) : super._(
          id: id,
          principalId: principalId,
          japaneseName: japaneseName,
        );

  @override
  Japanese copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? japaneseName,
  }) {
    return Japanese(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      japaneseName: japaneseName ?? this.japaneseName,
    );
  }
}

class JapaneseTable extends _i1.Table {
  JapaneseTable({super.tableRelation}) : super(tableName: 'japanese') {
    principalId = _i1.ColumnInt(
      'principalId',
      this,
    );
    japaneseName = _i1.ColumnString(
      'japaneseName',
      this,
    );
  }

  late final _i1.ColumnInt principalId;

  late final _i1.ColumnString japaneseName;

  @override
  List<_i1.Column> get columns => [
        id,
        principalId,
        japaneseName,
      ];
}

class JapaneseInclude extends _i1.IncludeObject {
  JapaneseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Japanese.t;
}

class JapaneseIncludeList extends _i1.IncludeList {
  JapaneseIncludeList._({
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Japanese.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Japanese.t;
}

class JapaneseRepository {
  const JapaneseRepository._();

  Future<List<Japanese>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Japanese>(
      where: where?.call(Japanese.t),
      orderBy: orderBy?.call(Japanese.t),
      orderByList: orderByList?.call(Japanese.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Japanese?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? offset,
    _i1.OrderByBuilder<JapaneseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<JapaneseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Japanese>(
      where: where?.call(Japanese.t),
      orderBy: orderBy?.call(Japanese.t),
      orderByList: orderByList?.call(Japanese.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Japanese?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Japanese>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Japanese>> insert(
    _i1.Session session,
    List<Japanese> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Japanese>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Japanese> insertRow(
    _i1.Session session,
    Japanese row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Japanese>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Japanese>> update(
    _i1.Session session,
    List<Japanese> rows, {
    _i1.ColumnSelections<JapaneseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Japanese>(
      rows,
      columns: columns?.call(Japanese.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Japanese> updateRow(
    _i1.Session session,
    Japanese row, {
    _i1.ColumnSelections<JapaneseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Japanese>(
      row,
      columns: columns?.call(Japanese.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Japanese>> delete(
    _i1.Session session,
    List<Japanese> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Japanese>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<Japanese> deleteRow(
    _i1.Session session,
    Japanese row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Japanese>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<Japanese>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<JapaneseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Japanese>(
      where: where(Japanese.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<JapaneseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Japanese>(
      where: where?.call(Japanese.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
