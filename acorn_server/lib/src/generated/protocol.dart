/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'att_involved.dart' as _i4;
import 'c_involved.dart' as _i5;
import 'categories.dart' as _i6;
import 'countryatts.dart' as _i7;
import 'example.dart' as _i8;
import 'lieux.dart' as _i9;
import 'localdates.dart' as _i10;
import 'myclass.dart' as _i11;
import 'oceans.dart' as _i12;
import 'organisations.dart' as _i13;
import 'p-user.dart' as _i14;
import 'p_categories.dart' as _i15;
import 'p_catt.dart' as _i16;
import 'p_orgs.dart' as _i17;
import 'p_patt.dart' as _i18;
import 'p_people.dart' as _i19;
import 'p_place.dart' as _i20;
import 'p_seas.dart' as _i21;
import 'p_terms.dart' as _i22;
import 'pays.dart' as _i23;
import 'people.dart' as _i24;
import 'placeatts.dart' as _i25;
import 'places.dart' as _i26;
import 'principal.dart' as _i27;
import 'seas.dart' as _i28;
import 'stars.dart' as _i29;
import 'stars_involved.dart' as _i30;
import 'terms.dart' as _i31;
import 'universe.dart' as _i32;
import 'with_globe.dart' as _i33;
import 'with_map.dart' as _i34;
import 'package:acorn_server/src/generated/att_involved.dart' as _i35;
import 'package:acorn_server/src/generated/c_involved.dart' as _i36;
import 'package:acorn_server/src/generated/categories.dart' as _i37;
import 'package:acorn_server/src/generated/countryatts.dart' as _i38;
import 'package:acorn_server/src/generated/lieux.dart' as _i39;
import 'package:acorn_server/src/generated/localdates.dart' as _i40;
import 'package:acorn_server/src/generated/oceans.dart' as _i41;
import 'package:acorn_server/src/generated/organisations.dart' as _i42;
import 'package:acorn_server/src/generated/p_categories.dart' as _i43;
import 'package:acorn_server/src/generated/p_catt.dart' as _i44;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i45;
import 'package:acorn_server/src/generated/p_patt.dart' as _i46;
import 'package:acorn_server/src/generated/p_people.dart' as _i47;
import 'package:acorn_server/src/generated/p_place.dart' as _i48;
import 'package:acorn_server/src/generated/p_seas.dart' as _i49;
import 'package:acorn_server/src/generated/p_terms.dart' as _i50;
import 'package:acorn_server/src/generated/p-user.dart' as _i51;
import 'package:acorn_server/src/generated/pays.dart' as _i52;
import 'package:acorn_server/src/generated/people.dart' as _i53;
import 'package:acorn_server/src/generated/placeatts.dart' as _i54;
import 'package:acorn_server/src/generated/places.dart' as _i55;
import 'package:acorn_server/src/generated/principal.dart' as _i56;
import 'package:acorn_server/src/generated/seas.dart' as _i57;
import 'package:acorn_server/src/generated/stars.dart' as _i58;
import 'package:acorn_server/src/generated/stars_involved.dart' as _i59;
import 'package:acorn_server/src/generated/terms.dart' as _i60;
import 'package:acorn_server/src/generated/universe.dart' as _i61;
import 'package:acorn_server/src/generated/with_globe.dart' as _i62;
import 'package:acorn_server/src/generated/with_map.dart' as _i63;
export 'att_involved.dart';
export 'c_involved.dart';
export 'categories.dart';
export 'countryatts.dart';
export 'example.dart';
export 'lieux.dart';
export 'localdates.dart';
export 'myclass.dart';
export 'oceans.dart';
export 'organisations.dart';
export 'p-user.dart';
export 'p_categories.dart';
export 'p_catt.dart';
export 'p_orgs.dart';
export 'p_patt.dart';
export 'p_people.dart';
export 'p_place.dart';
export 'p_seas.dart';
export 'p_terms.dart';
export 'pays.dart';
export 'people.dart';
export 'placeatts.dart';
export 'places.dart';
export 'principal.dart';
export 'seas.dart';
export 'stars.dart';
export 'stars_involved.dart';
export 'terms.dart';
export 'universe.dart';
export 'with_globe.dart';
export 'with_map.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final targetDatabaseDefinition = _i2.DatabaseDefinition(tables: [
    _i2.TableDefinition(
      name: 'atts_involved',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'atts_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'att_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'atts_involved_pkey',
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
      name: 'oceans',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'oceans_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'ocean',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'oceans_pkey',
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
      name: 'principal_user',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'user_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_user_pkey',
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
      name: 'principal_categories',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_categories_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'category_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_categories_pkey',
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
      name: 'principal_patt',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_patt_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'patt_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_patt_pkey',
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
      name: 'principal_terms',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_terms_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'term_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_terms_pkey',
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
        _i2.ColumnDefinition(
          name: 'country',
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
          name: 'period',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'annee',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'month',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'day',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'point',
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
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'precise',
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
        ),
        _i2.IndexDefinition(
          indexName: 'location_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'location',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'precise_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'precise',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
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
      name: 'stars',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'stars_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'star',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'stars_pkey',
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
      name: 'stars_involved',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'stars_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'star_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'stars_involved_pkey',
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
    _i2.TableDefinition(
      name: 'universe',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'universe_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'universe',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'universe_pkey',
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
      name: 'with_globe',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'with_globe_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'annee',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'affair',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'precise',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'x_coordinate',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'y_coordinate',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'z_coordinate',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'coefficient',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'with_globe_pkey',
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
      name: 'with_map',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'with_map_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principal_id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'annee',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'affair',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'location',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'precise',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
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
          name: 'logarithm',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'with_map_pkey',
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
    ..._i3.Protocol.targetDatabaseDefinition.tables,
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
    if (t == _i4.AttsInvolved) {
      return _i4.AttsInvolved.fromJson(data, this) as T;
    }
    if (t == _i5.CountryInvolved) {
      return _i5.CountryInvolved.fromJson(data, this) as T;
    }
    if (t == _i6.Categories) {
      return _i6.Categories.fromJson(data, this) as T;
    }
    if (t == _i7.Countryatts) {
      return _i7.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i8.Example) {
      return _i8.Example.fromJson(data, this) as T;
    }
    if (t == _i9.Lieux) {
      return _i9.Lieux.fromJson(data, this) as T;
    }
    if (t == _i10.LocalDates) {
      return _i10.LocalDates.fromJson(data, this) as T;
    }
    if (t == _i11.MyClass) {
      return _i11.MyClass.fromJson(data, this) as T;
    }
    if (t == _i12.Oceans) {
      return _i12.Oceans.fromJson(data, this) as T;
    }
    if (t == _i13.Organisations) {
      return _i13.Organisations.fromJson(data, this) as T;
    }
    if (t == _i14.PrincipalUser) {
      return _i14.PrincipalUser.fromJson(data, this) as T;
    }
    if (t == _i15.PrincipalCategories) {
      return _i15.PrincipalCategories.fromJson(data, this) as T;
    }
    if (t == _i16.PrincipalCatt) {
      return _i16.PrincipalCatt.fromJson(data, this) as T;
    }
    if (t == _i17.PrincipalOrgs) {
      return _i17.PrincipalOrgs.fromJson(data, this) as T;
    }
    if (t == _i18.PrincipalPatt) {
      return _i18.PrincipalPatt.fromJson(data, this) as T;
    }
    if (t == _i19.PrincipalPeople) {
      return _i19.PrincipalPeople.fromJson(data, this) as T;
    }
    if (t == _i20.PrincipalPlace) {
      return _i20.PrincipalPlace.fromJson(data, this) as T;
    }
    if (t == _i21.PrincipalSeas) {
      return _i21.PrincipalSeas.fromJson(data, this) as T;
    }
    if (t == _i22.PrincipalTerms) {
      return _i22.PrincipalTerms.fromJson(data, this) as T;
    }
    if (t == _i23.Pays) {
      return _i23.Pays.fromJson(data, this) as T;
    }
    if (t == _i24.People) {
      return _i24.People.fromJson(data, this) as T;
    }
    if (t == _i25.Placeatts) {
      return _i25.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i26.Places) {
      return _i26.Places.fromJson(data, this) as T;
    }
    if (t == _i27.Principal) {
      return _i27.Principal.fromJson(data, this) as T;
    }
    if (t == _i28.Seas) {
      return _i28.Seas.fromJson(data, this) as T;
    }
    if (t == _i29.Stars) {
      return _i29.Stars.fromJson(data, this) as T;
    }
    if (t == _i30.StarsInvolved) {
      return _i30.StarsInvolved.fromJson(data, this) as T;
    }
    if (t == _i31.Terms) {
      return _i31.Terms.fromJson(data, this) as T;
    }
    if (t == _i32.Universe) {
      return _i32.Universe.fromJson(data, this) as T;
    }
    if (t == _i33.WithGlobe) {
      return _i33.WithGlobe.fromJson(data, this) as T;
    }
    if (t == _i34.WithMap) {
      return _i34.WithMap.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i4.AttsInvolved?>()) {
      return (data != null ? _i4.AttsInvolved.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.CountryInvolved?>()) {
      return (data != null ? _i5.CountryInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Categories?>()) {
      return (data != null ? _i6.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Countryatts?>()) {
      return (data != null ? _i7.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Example?>()) {
      return (data != null ? _i8.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Lieux?>()) {
      return (data != null ? _i9.Lieux.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.LocalDates?>()) {
      return (data != null ? _i10.LocalDates.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.MyClass?>()) {
      return (data != null ? _i11.MyClass.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Oceans?>()) {
      return (data != null ? _i12.Oceans.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.Organisations?>()) {
      return (data != null ? _i13.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.PrincipalUser?>()) {
      return (data != null ? _i14.PrincipalUser.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.PrincipalCategories?>()) {
      return (data != null
          ? _i15.PrincipalCategories.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i16.PrincipalCatt?>()) {
      return (data != null ? _i16.PrincipalCatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.PrincipalOrgs?>()) {
      return (data != null ? _i17.PrincipalOrgs.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i18.PrincipalPatt?>()) {
      return (data != null ? _i18.PrincipalPatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i19.PrincipalPeople?>()) {
      return (data != null ? _i19.PrincipalPeople.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i20.PrincipalPlace?>()) {
      return (data != null ? _i20.PrincipalPlace.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i21.PrincipalSeas?>()) {
      return (data != null ? _i21.PrincipalSeas.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i22.PrincipalTerms?>()) {
      return (data != null ? _i22.PrincipalTerms.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i23.Pays?>()) {
      return (data != null ? _i23.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.People?>()) {
      return (data != null ? _i24.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.Placeatts?>()) {
      return (data != null ? _i25.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i26.Places?>()) {
      return (data != null ? _i26.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i27.Principal?>()) {
      return (data != null ? _i27.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i28.Seas?>()) {
      return (data != null ? _i28.Seas.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i29.Stars?>()) {
      return (data != null ? _i29.Stars.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i30.StarsInvolved?>()) {
      return (data != null ? _i30.StarsInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i31.Terms?>()) {
      return (data != null ? _i31.Terms.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i32.Universe?>()) {
      return (data != null ? _i32.Universe.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i33.WithGlobe?>()) {
      return (data != null ? _i33.WithGlobe.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i34.WithMap?>()) {
      return (data != null ? _i34.WithMap.fromJson(data, this) : null) as T;
    }
    if (t == List<_i35.AttsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i35.AttsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i36.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i36.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i37.Categories>) {
      return (data as List).map((e) => deserialize<_i37.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i38.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i38.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i39.Lieux>) {
      return (data as List).map((e) => deserialize<_i39.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i40.LocalDates>) {
      return (data as List).map((e) => deserialize<_i40.LocalDates>(e)).toList()
          as dynamic;
    }
    if (t == List<_i41.Oceans>) {
      return (data as List).map((e) => deserialize<_i41.Oceans>(e)).toList()
          as dynamic;
    }
    if (t == List<_i42.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i42.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i43.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i43.PrincipalCategories>(e))
          .toList() as dynamic;
    }
    if (t == List<_i44.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i44.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i45.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i45.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i46.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i46.PrincipalPatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i47.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i47.PrincipalPeople>(e))
          .toList() as dynamic;
    }
    if (t == List<_i48.PrincipalPlace>) {
      return (data as List)
          .map((e) => deserialize<_i48.PrincipalPlace>(e))
          .toList() as dynamic;
    }
    if (t == List<dynamic>) {
      return (data as List).map((e) => deserialize<dynamic>(e)).toList()
          as dynamic;
    }
    if (t == List<_i49.PrincipalSeas>) {
      return (data as List)
          .map((e) => deserialize<_i49.PrincipalSeas>(e))
          .toList() as dynamic;
    }
    if (t == List<_i50.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i50.PrincipalTerms>(e))
          .toList() as dynamic;
    }
    if (t == List<_i51.PrincipalUser>) {
      return (data as List)
          .map((e) => deserialize<_i51.PrincipalUser>(e))
          .toList() as dynamic;
    }
    if (t == List<_i52.Pays>) {
      return (data as List).map((e) => deserialize<_i52.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i53.People>) {
      return (data as List).map((e) => deserialize<_i53.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i54.Placeatts>) {
      return (data as List).map((e) => deserialize<_i54.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i55.Places>) {
      return (data as List).map((e) => deserialize<_i55.Places>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i56.Principal>) {
      return (data as List).map((e) => deserialize<_i56.Principal>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i57.Seas>) {
      return (data as List).map((e) => deserialize<_i57.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i58.Stars>) {
      return (data as List).map((e) => deserialize<_i58.Stars>(e)).toList()
          as dynamic;
    }
    if (t == List<_i59.StarsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i59.StarsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i60.Terms>) {
      return (data as List).map((e) => deserialize<_i60.Terms>(e)).toList()
          as dynamic;
    }
    if (t == List<_i61.Universe>) {
      return (data as List).map((e) => deserialize<_i61.Universe>(e)).toList()
          as dynamic;
    }
    if (t == List<_i62.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i62.WithGlobe>(e)).toList()
          as dynamic;
    }
    if (t == List<_i63.WithMap>) {
      return (data as List).map((e) => deserialize<_i63.WithMap>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.AttsInvolved) {
      return 'AttsInvolved';
    }
    if (data is _i5.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i6.Categories) {
      return 'Categories';
    }
    if (data is _i7.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i8.Example) {
      return 'Example';
    }
    if (data is _i9.Lieux) {
      return 'Lieux';
    }
    if (data is _i10.LocalDates) {
      return 'LocalDates';
    }
    if (data is _i11.MyClass) {
      return 'MyClass';
    }
    if (data is _i12.Oceans) {
      return 'Oceans';
    }
    if (data is _i13.Organisations) {
      return 'Organisations';
    }
    if (data is _i14.PrincipalUser) {
      return 'PrincipalUser';
    }
    if (data is _i15.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i16.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i17.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i18.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i19.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i20.PrincipalPlace) {
      return 'PrincipalPlace';
    }
    if (data is _i21.PrincipalSeas) {
      return 'PrincipalSeas';
    }
    if (data is _i22.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i23.Pays) {
      return 'Pays';
    }
    if (data is _i24.People) {
      return 'People';
    }
    if (data is _i25.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i26.Places) {
      return 'Places';
    }
    if (data is _i27.Principal) {
      return 'Principal';
    }
    if (data is _i28.Seas) {
      return 'Seas';
    }
    if (data is _i29.Stars) {
      return 'Stars';
    }
    if (data is _i30.StarsInvolved) {
      return 'StarsInvolved';
    }
    if (data is _i31.Terms) {
      return 'Terms';
    }
    if (data is _i32.Universe) {
      return 'Universe';
    }
    if (data is _i33.WithGlobe) {
      return 'WithGlobe';
    }
    if (data is _i34.WithMap) {
      return 'WithMap';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'AttsInvolved') {
      return deserialize<_i4.AttsInvolved>(data['data']);
    }
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i5.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i6.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i7.Countryatts>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i8.Example>(data['data']);
    }
    if (data['className'] == 'Lieux') {
      return deserialize<_i9.Lieux>(data['data']);
    }
    if (data['className'] == 'LocalDates') {
      return deserialize<_i10.LocalDates>(data['data']);
    }
    if (data['className'] == 'MyClass') {
      return deserialize<_i11.MyClass>(data['data']);
    }
    if (data['className'] == 'Oceans') {
      return deserialize<_i12.Oceans>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i13.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalUser') {
      return deserialize<_i14.PrincipalUser>(data['data']);
    }
    if (data['className'] == 'PrincipalCategories') {
      return deserialize<_i15.PrincipalCategories>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i16.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i17.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i18.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i19.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalPlace') {
      return deserialize<_i20.PrincipalPlace>(data['data']);
    }
    if (data['className'] == 'PrincipalSeas') {
      return deserialize<_i21.PrincipalSeas>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i22.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i23.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i24.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i25.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i26.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i27.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i28.Seas>(data['data']);
    }
    if (data['className'] == 'Stars') {
      return deserialize<_i29.Stars>(data['data']);
    }
    if (data['className'] == 'StarsInvolved') {
      return deserialize<_i30.StarsInvolved>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i31.Terms>(data['data']);
    }
    if (data['className'] == 'Universe') {
      return deserialize<_i32.Universe>(data['data']);
    }
    if (data['className'] == 'WithGlobe') {
      return deserialize<_i33.WithGlobe>(data['data']);
    }
    if (data['className'] == 'WithMap') {
      return deserialize<_i34.WithMap>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.AttsInvolved:
        return _i4.AttsInvolved.t;
      case _i5.CountryInvolved:
        return _i5.CountryInvolved.t;
      case _i6.Categories:
        return _i6.Categories.t;
      case _i7.Countryatts:
        return _i7.Countryatts.t;
      case _i9.Lieux:
        return _i9.Lieux.t;
      case _i10.LocalDates:
        return _i10.LocalDates.t;
      case _i12.Oceans:
        return _i12.Oceans.t;
      case _i13.Organisations:
        return _i13.Organisations.t;
      case _i14.PrincipalUser:
        return _i14.PrincipalUser.t;
      case _i15.PrincipalCategories:
        return _i15.PrincipalCategories.t;
      case _i16.PrincipalCatt:
        return _i16.PrincipalCatt.t;
      case _i17.PrincipalOrgs:
        return _i17.PrincipalOrgs.t;
      case _i18.PrincipalPatt:
        return _i18.PrincipalPatt.t;
      case _i19.PrincipalPeople:
        return _i19.PrincipalPeople.t;
      case _i20.PrincipalPlace:
        return _i20.PrincipalPlace.t;
      case _i21.PrincipalSeas:
        return _i21.PrincipalSeas.t;
      case _i22.PrincipalTerms:
        return _i22.PrincipalTerms.t;
      case _i23.Pays:
        return _i23.Pays.t;
      case _i24.People:
        return _i24.People.t;
      case _i25.Placeatts:
        return _i25.Placeatts.t;
      case _i26.Places:
        return _i26.Places.t;
      case _i27.Principal:
        return _i27.Principal.t;
      case _i28.Seas:
        return _i28.Seas.t;
      case _i29.Stars:
        return _i29.Stars.t;
      case _i30.StarsInvolved:
        return _i30.StarsInvolved.t;
      case _i31.Terms:
        return _i31.Terms.t;
      case _i32.Universe:
        return _i32.Universe.t;
      case _i33.WithGlobe:
        return _i33.WithGlobe.t;
      case _i34.WithMap:
        return _i34.WithMap.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
