/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'categories.dart' as _i3;
import 'countryatts.dart' as _i4;
import 'example.dart' as _i5;
import 'lieux.dart' as _i6;
import 'organisations.dart' as _i7;
import 'people.dart' as _i8;
import 'placeatts.dart' as _i9;
import 'places.dart' as _i10;
import 'principal.dart' as _i11;
import 'terms.dart' as _i12;
import 'package:acorn_server/src/generated/categories.dart' as _i13;
import 'package:acorn_server/src/generated/countryatts.dart' as _i14;
import 'package:acorn_server/src/generated/lieux.dart' as _i15;
import 'package:acorn_server/src/generated/organisations.dart' as _i16;
import 'package:acorn_server/src/generated/people.dart' as _i17;
import 'package:acorn_server/src/generated/placeatts.dart' as _i18;
import 'package:acorn_server/src/generated/places.dart' as _i19;
import 'package:acorn_server/src/generated/principal.dart' as _i20;
import 'package:acorn_server/src/generated/terms.dart' as _i21;
export 'categories.dart';
export 'countryatts.dart';
export 'example.dart';
export 'lieux.dart';
export 'organisations.dart';
export 'people.dart';
export 'placeatts.dart';
export 'places.dart';
export 'principal.dart';
export 'terms.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final targetDatabaseDefinition = _i2.DatabaseDefinition(tables: [
    _i2.TableDefinition(
      name: 'categories',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'categories_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'category',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'categories_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'countryatts',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'countryatts_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'countryatt',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'countryatts_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'lieux',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'lieux_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'latitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'longitude',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'three_d_x',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'three_d_y',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'three_d_z',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'lieux_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'organisations',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'organisations_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'organisation',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'organisations_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'people',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'people_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'person',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'people_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'placeatts',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'placeatts_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'placeatt',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'placeatts_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'places',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'places_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'place',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'places_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'principal',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'annee',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'affair',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'pays',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'terms',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'terms_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'term',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'terms_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetDatabaseDefinition.tables,
  ]);

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Categories) {
      return _i3.Categories.fromJson(data, this) as T;
    }
    if (t == _i4.Countryatts) {
      return _i4.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data, this) as T;
    }
    if (t == _i6.Lieux) {
      return _i6.Lieux.fromJson(data, this) as T;
    }
    if (t == _i7.Organisations) {
      return _i7.Organisations.fromJson(data, this) as T;
    }
    if (t == _i8.People) {
      return _i8.People.fromJson(data, this) as T;
    }
    if (t == _i9.Placeatts) {
      return _i9.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i10.Places) {
      return _i10.Places.fromJson(data, this) as T;
    }
    if (t == _i11.Principal) {
      return _i11.Principal.fromJson(data, this) as T;
    }
    if (t == _i12.Terms) {
      return _i12.Terms.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Categories?>()) {
      return (data != null ? _i3.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Countryatts?>()) {
      return (data != null ? _i4.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Lieux?>()) {
      return (data != null ? _i6.Lieux.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Organisations?>()) {
      return (data != null ? _i7.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.People?>()) {
      return (data != null ? _i8.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Placeatts?>()) {
      return (data != null ? _i9.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Places?>()) {
      return (data != null ? _i10.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Principal?>()) {
      return (data != null ? _i11.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Terms?>()) {
      return (data != null ? _i12.Terms.fromJson(data, this) : null) as T;
    }
    if (t == List<_i13.Categories>) {
      return (data as List).map((e) => deserialize<_i13.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i14.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i14.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i15.Lieux>) {
      return (data as List).map((e) => deserialize<_i15.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i16.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i16.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i17.People>) {
      return (data as List).map((e) => deserialize<_i17.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Placeatts>) {
      return (data as List).map((e) => deserialize<_i18.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Places>) {
      return (data as List).map((e) => deserialize<_i19.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.Principal>) {
      return (data as List).map((e) => deserialize<_i20.Principal>(e)).toList()
          as dynamic;
    }
    if (t == List<_i21.Terms>) {
      return (data as List).map((e) => deserialize<_i21.Terms>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.Categories) {
      return 'Categories';
    }
    if (data is _i4.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Lieux) {
      return 'Lieux';
    }
    if (data is _i7.Organisations) {
      return 'Organisations';
    }
    if (data is _i8.People) {
      return 'People';
    }
    if (data is _i9.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i10.Places) {
      return 'Places';
    }
    if (data is _i11.Principal) {
      return 'Principal';
    }
    if (data is _i12.Terms) {
      return 'Terms';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Categories') {
      return deserialize<_i3.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i4.Countryatts>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Lieux') {
      return deserialize<_i6.Lieux>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i7.Organisations>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i8.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i9.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i10.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i11.Principal>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i12.Terms>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.Categories:
        return _i3.Categories.t;
      case _i4.Countryatts:
        return _i4.Countryatts.t;
      case _i6.Lieux:
        return _i6.Lieux.t;
      case _i7.Organisations:
        return _i7.Organisations.t;
      case _i8.People:
        return _i8.People.t;
      case _i9.Placeatts:
        return _i9.Placeatts.t;
      case _i10.Places:
        return _i10.Places.t;
      case _i11.Principal:
        return _i11.Principal.t;
      case _i12.Terms:
        return _i12.Terms.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
