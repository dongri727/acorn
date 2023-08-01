/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'c_involved.dart' as _i3;
import 'categories.dart' as _i4;
import 'countryatts.dart' as _i5;
import 'days.dart' as _i6;
import 'example.dart' as _i7;
import 'lieux.dart' as _i8;
import 'localdates.dart' as _i9;
import 'months.dart' as _i10;
import 'organisations.dart' as _i11;
import 'p_place.dart' as _i12;
import 'pays.dart' as _i13;
import 'people.dart' as _i14;
import 'placeatts.dart' as _i15;
import 'places.dart' as _i16;
import 'principal.dart' as _i17;
import 'terms.dart' as _i18;
import 'package:acorn_server/src/generated/c_involved.dart' as _i19;
import 'package:acorn_server/src/generated/categories.dart' as _i20;
import 'package:acorn_server/src/generated/countryatts.dart' as _i21;
import 'package:acorn_server/src/generated/days.dart' as _i22;
import 'package:acorn_server/src/generated/lieux.dart' as _i23;
import 'package:acorn_server/src/generated/localdates.dart' as _i24;
import 'package:acorn_server/src/generated/months.dart' as _i25;
import 'package:acorn_server/src/generated/organisations.dart' as _i26;
import 'package:acorn_server/src/generated/p_place.dart' as _i27;
import 'package:acorn_server/src/generated/pays.dart' as _i28;
import 'package:acorn_server/src/generated/people.dart' as _i29;
import 'package:acorn_server/src/generated/placeatts.dart' as _i30;
import 'package:acorn_server/src/generated/places.dart' as _i31;
import 'package:acorn_server/src/generated/principal.dart' as _i32;
import 'package:acorn_server/src/generated/terms.dart' as _i33;
export 'c_involved.dart';
export 'categories.dart';
export 'countryatts.dart';
export 'days.dart';
export 'example.dart';
export 'lieux.dart';
export 'localdates.dart';
export 'months.dart';
export 'organisations.dart';
export 'p_place.dart';
export 'pays.dart';
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
      name: 'country_involved',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'country_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'pays_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'country_involved_pkey',
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
      name: 'days',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'days_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'day',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'days_pkey',
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
      name: 'localdates',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'localdates_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'localdate',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'localdates_pkey',
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
      name: 'months',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'months_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'month',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'months_pkey',
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
      name: 'principal_place',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_place_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'place_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_place_pkey',
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
      name: 'pays',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'pays_id_seq\'::regclass)',
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
          indexName: 'pays_pkey',
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
    if (t == _i3.CountryInvolved) {
      return _i3.CountryInvolved.fromJson(data, this) as T;
    }
    if (t == _i4.Categories) {
      return _i4.Categories.fromJson(data, this) as T;
    }
    if (t == _i5.Countryatts) {
      return _i5.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i6.Days) {
      return _i6.Days.fromJson(data, this) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data, this) as T;
    }
    if (t == _i8.Lieux) {
      return _i8.Lieux.fromJson(data, this) as T;
    }
    if (t == _i9.LocalDates) {
      return _i9.LocalDates.fromJson(data, this) as T;
    }
    if (t == _i10.Months) {
      return _i10.Months.fromJson(data, this) as T;
    }
    if (t == _i11.Organisations) {
      return _i11.Organisations.fromJson(data, this) as T;
    }
    if (t == _i12.PrincipalPlace) {
      return _i12.PrincipalPlace.fromJson(data, this) as T;
    }
    if (t == _i13.Pays) {
      return _i13.Pays.fromJson(data, this) as T;
    }
    if (t == _i14.People) {
      return _i14.People.fromJson(data, this) as T;
    }
    if (t == _i15.Placeatts) {
      return _i15.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i16.Places) {
      return _i16.Places.fromJson(data, this) as T;
    }
    if (t == _i17.Principal) {
      return _i17.Principal.fromJson(data, this) as T;
    }
    if (t == _i18.Terms) {
      return _i18.Terms.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.CountryInvolved?>()) {
      return (data != null ? _i3.CountryInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.Categories?>()) {
      return (data != null ? _i4.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Countryatts?>()) {
      return (data != null ? _i5.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Days?>()) {
      return (data != null ? _i6.Days.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Lieux?>()) {
      return (data != null ? _i8.Lieux.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.LocalDates?>()) {
      return (data != null ? _i9.LocalDates.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Months?>()) {
      return (data != null ? _i10.Months.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Organisations?>()) {
      return (data != null ? _i11.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i12.PrincipalPlace?>()) {
      return (data != null ? _i12.PrincipalPlace.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.Pays?>()) {
      return (data != null ? _i13.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.People?>()) {
      return (data != null ? _i14.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.Placeatts?>()) {
      return (data != null ? _i15.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.Places?>()) {
      return (data != null ? _i16.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.Principal?>()) {
      return (data != null ? _i17.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i18.Terms?>()) {
      return (data != null ? _i18.Terms.fromJson(data, this) : null) as T;
    }
    if (t == List<_i19.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i19.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i20.Categories>) {
      return (data as List).map((e) => deserialize<_i20.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i21.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i21.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i22.Days>) {
      return (data as List).map((e) => deserialize<_i22.Days>(e)).toList()
          as dynamic;
    }
    if (t == List<_i23.Lieux>) {
      return (data as List).map((e) => deserialize<_i23.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i24.LocalDates>) {
      return (data as List).map((e) => deserialize<_i24.LocalDates>(e)).toList()
          as dynamic;
    }
    if (t == List<_i25.Months>) {
      return (data as List).map((e) => deserialize<_i25.Months>(e)).toList()
          as dynamic;
    }
    if (t == List<_i26.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i26.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i27.PrincipalPlace>) {
      return (data as List)
          .map((e) => deserialize<_i27.PrincipalPlace>(e))
          .toList() as dynamic;
    }
    if (t == List<_i28.Pays>) {
      return (data as List).map((e) => deserialize<_i28.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i29.People>) {
      return (data as List).map((e) => deserialize<_i29.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i30.Placeatts>) {
      return (data as List).map((e) => deserialize<_i30.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i31.Places>) {
      return (data as List).map((e) => deserialize<_i31.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i32.Principal>) {
      return (data as List).map((e) => deserialize<_i32.Principal>(e)).toList()
          as dynamic;
    }
    if (t == List<_i33.Terms>) {
      return (data as List).map((e) => deserialize<_i33.Terms>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i4.Categories) {
      return 'Categories';
    }
    if (data is _i5.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i6.Days) {
      return 'Days';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.Lieux) {
      return 'Lieux';
    }
    if (data is _i9.LocalDates) {
      return 'LocalDates';
    }
    if (data is _i10.Months) {
      return 'Months';
    }
    if (data is _i11.Organisations) {
      return 'Organisations';
    }
    if (data is _i12.PrincipalPlace) {
      return 'PrincipalPlace';
    }
    if (data is _i13.Pays) {
      return 'Pays';
    }
    if (data is _i14.People) {
      return 'People';
    }
    if (data is _i15.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i16.Places) {
      return 'Places';
    }
    if (data is _i17.Principal) {
      return 'Principal';
    }
    if (data is _i18.Terms) {
      return 'Terms';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i3.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i4.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i5.Countryatts>(data['data']);
    }
    if (data['className'] == 'Days') {
      return deserialize<_i6.Days>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (data['className'] == 'Lieux') {
      return deserialize<_i8.Lieux>(data['data']);
    }
    if (data['className'] == 'LocalDates') {
      return deserialize<_i9.LocalDates>(data['data']);
    }
    if (data['className'] == 'Months') {
      return deserialize<_i10.Months>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i11.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalPlace') {
      return deserialize<_i12.PrincipalPlace>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i13.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i14.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i15.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i16.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i17.Principal>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i18.Terms>(data['data']);
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
      case _i3.CountryInvolved:
        return _i3.CountryInvolved.t;
      case _i4.Categories:
        return _i4.Categories.t;
      case _i5.Countryatts:
        return _i5.Countryatts.t;
      case _i6.Days:
        return _i6.Days.t;
      case _i8.Lieux:
        return _i8.Lieux.t;
      case _i9.LocalDates:
        return _i9.LocalDates.t;
      case _i10.Months:
        return _i10.Months.t;
      case _i11.Organisations:
        return _i11.Organisations.t;
      case _i12.PrincipalPlace:
        return _i12.PrincipalPlace.t;
      case _i13.Pays:
        return _i13.Pays.t;
      case _i14.People:
        return _i14.People.t;
      case _i15.Placeatts:
        return _i15.Placeatts.t;
      case _i16.Places:
        return _i16.Places.t;
      case _i17.Principal:
        return _i17.Principal.t;
      case _i18.Terms:
        return _i18.Terms.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
