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
import 'p_catt.dart' as _i12;
import 'p_orgs.dart' as _i13;
import 'p_people.dart' as _i14;
import 'p_place.dart' as _i15;
import 'p_seas.dart' as _i16;
import 'pays.dart' as _i17;
import 'people.dart' as _i18;
import 'placeatts.dart' as _i19;
import 'places.dart' as _i20;
import 'principal.dart' as _i21;
import 'seas.dart' as _i22;
import 'terms.dart' as _i23;
import 'package:acorn_server/src/generated/c_involved.dart' as _i24;
import 'package:acorn_server/src/generated/categories.dart' as _i25;
import 'package:acorn_server/src/generated/countryatts.dart' as _i26;
import 'package:acorn_server/src/generated/days.dart' as _i27;
import 'package:acorn_server/src/generated/lieux.dart' as _i28;
import 'package:acorn_server/src/generated/localdates.dart' as _i29;
import 'package:acorn_server/src/generated/months.dart' as _i30;
import 'package:acorn_server/src/generated/organisations.dart' as _i31;
import 'package:acorn_server/src/generated/p_catt.dart' as _i32;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i33;
import 'package:acorn_server/src/generated/p_people.dart' as _i34;
import 'package:acorn_server/src/generated/p_place.dart' as _i35;
import 'package:acorn_server/src/generated/p_seas.dart' as _i36;
import 'package:acorn_server/src/generated/pays.dart' as _i37;
import 'package:acorn_server/src/generated/people.dart' as _i38;
import 'package:acorn_server/src/generated/placeatts.dart' as _i39;
import 'package:acorn_server/src/generated/places.dart' as _i40;
import 'package:acorn_server/src/generated/principal.dart' as _i41;
import 'package:acorn_server/src/generated/seas.dart' as _i42;
import 'package:acorn_server/src/generated/terms.dart' as _i43;
export 'c_involved.dart';
export 'categories.dart';
export 'countryatts.dart';
export 'days.dart';
export 'example.dart';
export 'lieux.dart';
export 'localdates.dart';
export 'months.dart';
export 'organisations.dart';
export 'p_catt.dart';
export 'p_orgs.dart';
export 'p_people.dart';
export 'p_place.dart';
export 'p_seas.dart';
export 'pays.dart';
export 'people.dart';
export 'placeatts.dart';
export 'places.dart';
export 'principal.dart';
export 'seas.dart';
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
      name: 'principal_catt',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_catt_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'catt_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_catt_pkey',
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
      name: 'principal_orgs',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_orgs_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'org_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_orgs_pkey',
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
      name: 'principal_people',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_people_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'person_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_people_pkey',
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
      name: 'principal_seas',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_seas_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'seas_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_seas_pkey',
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
      name: 'seas',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'seas_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'sea',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'seas_pkey',
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
    if (t == _i12.PrincipalCatt) {
      return _i12.PrincipalCatt.fromJson(data, this) as T;
    }
    if (t == _i13.PrincipalOrgs) {
      return _i13.PrincipalOrgs.fromJson(data, this) as T;
    }
    if (t == _i14.PrincipalPeople) {
      return _i14.PrincipalPeople.fromJson(data, this) as T;
    }
    if (t == _i15.PrincipalPlace) {
      return _i15.PrincipalPlace.fromJson(data, this) as T;
    }
    if (t == _i16.PrincipalSeas) {
      return _i16.PrincipalSeas.fromJson(data, this) as T;
    }
    if (t == _i17.Pays) {
      return _i17.Pays.fromJson(data, this) as T;
    }
    if (t == _i18.People) {
      return _i18.People.fromJson(data, this) as T;
    }
    if (t == _i19.Placeatts) {
      return _i19.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i20.Places) {
      return _i20.Places.fromJson(data, this) as T;
    }
    if (t == _i21.Principal) {
      return _i21.Principal.fromJson(data, this) as T;
    }
    if (t == _i22.Seas) {
      return _i22.Seas.fromJson(data, this) as T;
    }
    if (t == _i23.Terms) {
      return _i23.Terms.fromJson(data, this) as T;
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
    if (t == _i1.getType<_i12.PrincipalCatt?>()) {
      return (data != null ? _i12.PrincipalCatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.PrincipalOrgs?>()) {
      return (data != null ? _i13.PrincipalOrgs.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.PrincipalPeople?>()) {
      return (data != null ? _i14.PrincipalPeople.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.PrincipalPlace?>()) {
      return (data != null ? _i15.PrincipalPlace.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PrincipalSeas?>()) {
      return (data != null ? _i16.PrincipalSeas.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.Pays?>()) {
      return (data != null ? _i17.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i18.People?>()) {
      return (data != null ? _i18.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.Placeatts?>()) {
      return (data != null ? _i19.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i20.Places?>()) {
      return (data != null ? _i20.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i21.Principal?>()) {
      return (data != null ? _i21.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.Seas?>()) {
      return (data != null ? _i22.Seas.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.Terms?>()) {
      return (data != null ? _i23.Terms.fromJson(data, this) : null) as T;
    }
    if (t == List<_i24.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i24.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i25.Categories>) {
      return (data as List).map((e) => deserialize<_i25.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i26.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i26.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i27.Days>) {
      return (data as List).map((e) => deserialize<_i27.Days>(e)).toList()
          as dynamic;
    }
    if (t == List<_i28.Lieux>) {
      return (data as List).map((e) => deserialize<_i28.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i29.LocalDates>) {
      return (data as List).map((e) => deserialize<_i29.LocalDates>(e)).toList()
          as dynamic;
    }
    if (t == List<_i30.Months>) {
      return (data as List).map((e) => deserialize<_i30.Months>(e)).toList()
          as dynamic;
    }
    if (t == List<_i31.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i31.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i32.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i32.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i33.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i33.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i34.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i34.PrincipalPeople>(e))
          .toList() as dynamic;
    }
    if (t == List<_i35.PrincipalPlace>) {
      return (data as List)
          .map((e) => deserialize<_i35.PrincipalPlace>(e))
          .toList() as dynamic;
    }
    if (t == List<_i36.PrincipalSeas>) {
      return (data as List)
          .map((e) => deserialize<_i36.PrincipalSeas>(e))
          .toList() as dynamic;
    }
    if (t == List<_i37.Pays>) {
      return (data as List).map((e) => deserialize<_i37.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i38.People>) {
      return (data as List).map((e) => deserialize<_i38.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i39.Placeatts>) {
      return (data as List).map((e) => deserialize<_i39.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i40.Places>) {
      return (data as List).map((e) => deserialize<_i40.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i41.Principal>) {
      return (data as List).map((e) => deserialize<_i41.Principal>(e)).toList()
          as dynamic;
    }
    if (t == List<_i42.Seas>) {
      return (data as List).map((e) => deserialize<_i42.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i43.Terms>) {
      return (data as List).map((e) => deserialize<_i43.Terms>(e)).toList()
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
    if (data is _i12.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i13.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i14.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i15.PrincipalPlace) {
      return 'PrincipalPlace';
    }
    if (data is _i16.PrincipalSeas) {
      return 'PrincipalSeas';
    }
    if (data is _i17.Pays) {
      return 'Pays';
    }
    if (data is _i18.People) {
      return 'People';
    }
    if (data is _i19.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i20.Places) {
      return 'Places';
    }
    if (data is _i21.Principal) {
      return 'Principal';
    }
    if (data is _i22.Seas) {
      return 'Seas';
    }
    if (data is _i23.Terms) {
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
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i12.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i13.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i14.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalPlace') {
      return deserialize<_i15.PrincipalPlace>(data['data']);
    }
    if (data['className'] == 'PrincipalSeas') {
      return deserialize<_i16.PrincipalSeas>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i17.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i18.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i19.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i20.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i21.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i22.Seas>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i23.Terms>(data['data']);
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
      case _i12.PrincipalCatt:
        return _i12.PrincipalCatt.t;
      case _i13.PrincipalOrgs:
        return _i13.PrincipalOrgs.t;
      case _i14.PrincipalPeople:
        return _i14.PrincipalPeople.t;
      case _i15.PrincipalPlace:
        return _i15.PrincipalPlace.t;
      case _i16.PrincipalSeas:
        return _i16.PrincipalSeas.t;
      case _i17.Pays:
        return _i17.Pays.t;
      case _i18.People:
        return _i18.People.t;
      case _i19.Placeatts:
        return _i19.Placeatts.t;
      case _i20.Places:
        return _i20.Places.t;
      case _i21.Principal:
        return _i21.Principal.t;
      case _i22.Seas:
        return _i22.Seas.t;
      case _i23.Terms:
        return _i23.Terms.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
