/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'c_involved.dart' as _i4;
import 'categories.dart' as _i5;
import 'catts_involved.dart' as _i6;
import 'countryatts.dart' as _i7;
import 'detail.dart' as _i8;
import 'japanese.dart' as _i9;
import 'myclass.dart' as _i10;
import 'oceans.dart' as _i11;
import 'organisations.dart' as _i12;
import 'p-user.dart' as _i13;
import 'p_categories.dart' as _i14;
import 'p_catt.dart' as _i15;
import 'p_detail.dart' as _i16;
import 'p_involved.dart' as _i17;
import 'p_orgs.dart' as _i18;
import 'p_patt.dart' as _i19;
import 'p_people.dart' as _i20;
import 'p_terms.dart' as _i21;
import 'patts_involved.dart' as _i22;
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
import 'package:acorn_server/src/generated/c_involved.dart' as _i35;
import 'package:acorn_server/src/generated/categories.dart' as _i36;
import 'package:acorn_server/src/generated/catts_involved.dart' as _i37;
import 'package:acorn_server/src/generated/countryatts.dart' as _i38;
import 'package:acorn_server/src/generated/detail.dart' as _i39;
import 'package:acorn_server/src/generated/japanese.dart' as _i40;
import 'package:acorn_server/src/generated/oceans.dart' as _i41;
import 'package:acorn_server/src/generated/organisations.dart' as _i42;
import 'package:acorn_server/src/generated/p_categories.dart' as _i43;
import 'package:acorn_server/src/generated/p_catt.dart' as _i44;
import 'package:acorn_server/src/generated/p_detail.dart' as _i45;
import 'package:acorn_server/src/generated/p_involved.dart' as _i46;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i47;
import 'package:acorn_server/src/generated/p_patt.dart' as _i48;
import 'package:acorn_server/src/generated/p_people.dart' as _i49;
import 'package:acorn_server/src/generated/p_terms.dart' as _i50;
import 'package:acorn_server/src/generated/p-user.dart' as _i51;
import 'package:acorn_server/src/generated/patts_involved.dart' as _i52;
import 'package:acorn_server/src/generated/pays.dart' as _i53;
import 'package:acorn_server/src/generated/people.dart' as _i54;
import 'package:acorn_server/src/generated/placeatts.dart' as _i55;
import 'package:acorn_server/src/generated/places.dart' as _i56;
import 'package:acorn_server/src/generated/principal.dart' as _i57;
import 'package:acorn_server/src/generated/seas.dart' as _i58;
import 'package:acorn_server/src/generated/stars.dart' as _i59;
import 'package:acorn_server/src/generated/stars_involved.dart' as _i60;
import 'package:acorn_server/src/generated/terms.dart' as _i61;
import 'package:acorn_server/src/generated/universe.dart' as _i62;
import 'package:acorn_server/src/generated/with_globe.dart' as _i63;
import 'package:acorn_server/src/generated/with_map.dart' as _i64;
export 'c_involved.dart';
export 'categories.dart';
export 'catts_involved.dart';
export 'countryatts.dart';
export 'detail.dart';
export 'japanese.dart';
export 'myclass.dart';
export 'oceans.dart';
export 'organisations.dart';
export 'p-user.dart';
export 'p_categories.dart';
export 'p_catt.dart';
export 'p_detail.dart';
export 'p_involved.dart';
export 'p_orgs.dart';
export 'p_patt.dart';
export 'p_people.dart';
export 'p_terms.dart';
export 'patts_involved.dart';
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

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'categories',
      dartName: 'Categories',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
        _i2.ColumnDefinition(
          name: 'detailId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'combien',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
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
      name: 'catts_involved',
      dartName: 'CattsInvolved',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'catts_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'cattId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'catts_involved_pkey',
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
      dartName: 'CountryInvolved',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'country_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'paysId',
          columnType: _i2.ColumnType.bigint,
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
      name: 'countryatts',
      dartName: 'Countryatts',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      name: 'detail',
      dartName: 'Detail',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'detail_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'genre',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'mot',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'detail_pkey',
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
      name: 'japanese',
      dartName: 'Japanese',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'japanese_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'japaneseName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'japanese_pkey',
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
      dartName: 'Oceans',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'Organisations',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      name: 'patts_involved',
      dartName: 'PattsInvolved',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'patts_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'pattId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'patts_involved_pkey',
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
      dartName: 'Pays',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
        _i2.ColumnDefinition(
          name: 'combien',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
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
      dartName: 'People',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      name: 'place_involved',
      dartName: 'PlaceInvolved',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'place_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'placeId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'place_involved_pkey',
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
      dartName: 'Placeatts',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'Places',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'Principal',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'day',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'point',
          columnType: _i2.ColumnType.bigint,
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
      name: 'principal_categories',
      dartName: 'PrincipalCategories',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_categories_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'categoryId',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'PrincipalCatt',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_catt_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'cattId',
          columnType: _i2.ColumnType.bigint,
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
      name: 'principal_detail',
      dartName: 'PrincipalDetail',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_detail_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'detailId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_detail_pkey',
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
      dartName: 'PrincipalOrgs',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_orgs_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'orgId',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'PrincipalPatt',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_patt_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'pattId',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'PrincipalPeople',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_people_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'personId',
          columnType: _i2.ColumnType.bigint,
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
      name: 'principal_terms',
      dartName: 'PrincipalTerms',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_terms_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'termId',
          columnType: _i2.ColumnType.bigint,
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
      name: 'principal_user',
      dartName: 'PrincipalUser',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
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
      name: 'seas',
      dartName: 'Seas',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'Stars',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'StarsInvolved',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'stars_involved_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'starId',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'Terms',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'Universe',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
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
      dartName: 'WithGlobe',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'with_globe_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
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
          name: 'xCoordinate',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'yCoordinate',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'zCoordinate',
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
      dartName: 'WithMap',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'with_map_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
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
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.CountryInvolved) {
      return _i4.CountryInvolved.fromJson(data) as T;
    }
    if (t == _i5.Categories) {
      return _i5.Categories.fromJson(data) as T;
    }
    if (t == _i6.CattsInvolved) {
      return _i6.CattsInvolved.fromJson(data) as T;
    }
    if (t == _i7.Countryatts) {
      return _i7.Countryatts.fromJson(data) as T;
    }
    if (t == _i8.Detail) {
      return _i8.Detail.fromJson(data) as T;
    }
    if (t == _i9.Japanese) {
      return _i9.Japanese.fromJson(data) as T;
    }
    if (t == _i10.MyClass) {
      return _i10.MyClass.fromJson(data) as T;
    }
    if (t == _i11.Oceans) {
      return _i11.Oceans.fromJson(data) as T;
    }
    if (t == _i12.Organisations) {
      return _i12.Organisations.fromJson(data) as T;
    }
    if (t == _i13.PrincipalUser) {
      return _i13.PrincipalUser.fromJson(data) as T;
    }
    if (t == _i14.PrincipalCategories) {
      return _i14.PrincipalCategories.fromJson(data) as T;
    }
    if (t == _i15.PrincipalCatt) {
      return _i15.PrincipalCatt.fromJson(data) as T;
    }
    if (t == _i16.PrincipalDetail) {
      return _i16.PrincipalDetail.fromJson(data) as T;
    }
    if (t == _i17.PlaceInvolved) {
      return _i17.PlaceInvolved.fromJson(data) as T;
    }
    if (t == _i18.PrincipalOrgs) {
      return _i18.PrincipalOrgs.fromJson(data) as T;
    }
    if (t == _i19.PrincipalPatt) {
      return _i19.PrincipalPatt.fromJson(data) as T;
    }
    if (t == _i20.PrincipalPeople) {
      return _i20.PrincipalPeople.fromJson(data) as T;
    }
    if (t == _i21.PrincipalTerms) {
      return _i21.PrincipalTerms.fromJson(data) as T;
    }
    if (t == _i22.PattsInvolved) {
      return _i22.PattsInvolved.fromJson(data) as T;
    }
    if (t == _i23.Pays) {
      return _i23.Pays.fromJson(data) as T;
    }
    if (t == _i24.People) {
      return _i24.People.fromJson(data) as T;
    }
    if (t == _i25.Placeatts) {
      return _i25.Placeatts.fromJson(data) as T;
    }
    if (t == _i26.Places) {
      return _i26.Places.fromJson(data) as T;
    }
    if (t == _i27.Principal) {
      return _i27.Principal.fromJson(data) as T;
    }
    if (t == _i28.Seas) {
      return _i28.Seas.fromJson(data) as T;
    }
    if (t == _i29.Stars) {
      return _i29.Stars.fromJson(data) as T;
    }
    if (t == _i30.StarsInvolved) {
      return _i30.StarsInvolved.fromJson(data) as T;
    }
    if (t == _i31.Terms) {
      return _i31.Terms.fromJson(data) as T;
    }
    if (t == _i32.Universe) {
      return _i32.Universe.fromJson(data) as T;
    }
    if (t == _i33.WithGlobe) {
      return _i33.WithGlobe.fromJson(data) as T;
    }
    if (t == _i34.WithMap) {
      return _i34.WithMap.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.CountryInvolved?>()) {
      return (data != null ? _i4.CountryInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Categories?>()) {
      return (data != null ? _i5.Categories.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.CattsInvolved?>()) {
      return (data != null ? _i6.CattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Countryatts?>()) {
      return (data != null ? _i7.Countryatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Detail?>()) {
      return (data != null ? _i8.Detail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Japanese?>()) {
      return (data != null ? _i9.Japanese.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.MyClass?>()) {
      return (data != null ? _i10.MyClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Oceans?>()) {
      return (data != null ? _i11.Oceans.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Organisations?>()) {
      return (data != null ? _i12.Organisations.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.PrincipalUser?>()) {
      return (data != null ? _i13.PrincipalUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.PrincipalCategories?>()) {
      return (data != null ? _i14.PrincipalCategories.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i15.PrincipalCatt?>()) {
      return (data != null ? _i15.PrincipalCatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.PrincipalDetail?>()) {
      return (data != null ? _i16.PrincipalDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.PlaceInvolved?>()) {
      return (data != null ? _i17.PlaceInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.PrincipalOrgs?>()) {
      return (data != null ? _i18.PrincipalOrgs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.PrincipalPatt?>()) {
      return (data != null ? _i19.PrincipalPatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.PrincipalPeople?>()) {
      return (data != null ? _i20.PrincipalPeople.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.PrincipalTerms?>()) {
      return (data != null ? _i21.PrincipalTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.PattsInvolved?>()) {
      return (data != null ? _i22.PattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.Pays?>()) {
      return (data != null ? _i23.Pays.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.People?>()) {
      return (data != null ? _i24.People.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.Placeatts?>()) {
      return (data != null ? _i25.Placeatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.Places?>()) {
      return (data != null ? _i26.Places.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.Principal?>()) {
      return (data != null ? _i27.Principal.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.Seas?>()) {
      return (data != null ? _i28.Seas.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.Stars?>()) {
      return (data != null ? _i29.Stars.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.StarsInvolved?>()) {
      return (data != null ? _i30.StarsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.Terms?>()) {
      return (data != null ? _i31.Terms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.Universe?>()) {
      return (data != null ? _i32.Universe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.WithGlobe?>()) {
      return (data != null ? _i33.WithGlobe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.WithMap?>()) {
      return (data != null ? _i34.WithMap.fromJson(data) : null) as T;
    }
    if (t == List<dynamic>) {
      return (data as List).map((e) => deserialize<dynamic>(e)).toList()
          as dynamic;
    }
    if (t == List<_i35.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i35.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i36.Categories>) {
      return (data as List).map((e) => deserialize<_i36.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i37.CattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i37.CattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i38.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i38.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i39.Detail>) {
      return (data as List).map((e) => deserialize<_i39.Detail>(e)).toList()
          as dynamic;
    }
    if (t == List<_i40.Japanese>) {
      return (data as List).map((e) => deserialize<_i40.Japanese>(e)).toList()
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
    if (t == List<_i45.PrincipalDetail>) {
      return (data as List)
          .map((e) => deserialize<_i45.PrincipalDetail>(e))
          .toList() as dynamic;
    }
    if (t == List<_i46.PlaceInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i46.PlaceInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i47.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i47.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i48.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i48.PrincipalPatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i49.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i49.PrincipalPeople>(e))
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
    if (t == List<_i52.PattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i52.PattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i53.Pays>) {
      return (data as List).map((e) => deserialize<_i53.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i54.People>) {
      return (data as List).map((e) => deserialize<_i54.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i55.Placeatts>) {
      return (data as List).map((e) => deserialize<_i55.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i56.Places>) {
      return (data as List).map((e) => deserialize<_i56.Places>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i57.Principal>) {
      return (data as List).map((e) => deserialize<_i57.Principal>(e)).toList()
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
    if (t == List<_i58.Seas>) {
      return (data as List).map((e) => deserialize<_i58.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i59.Stars>) {
      return (data as List).map((e) => deserialize<_i59.Stars>(e)).toList()
          as dynamic;
    }
    if (t == List<_i60.StarsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i60.StarsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i61.Terms>) {
      return (data as List).map((e) => deserialize<_i61.Terms>(e)).toList()
          as dynamic;
    }
    if (t == List<_i62.Universe>) {
      return (data as List).map((e) => deserialize<_i62.Universe>(e)).toList()
          as dynamic;
    }
    if (t == List<_i63.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i63.WithGlobe>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i64.WithMap>) {
      return (data as List).map((e) => deserialize<_i64.WithMap>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i5.Categories) {
      return 'Categories';
    }
    if (data is _i6.CattsInvolved) {
      return 'CattsInvolved';
    }
    if (data is _i7.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i8.Detail) {
      return 'Detail';
    }
    if (data is _i9.Japanese) {
      return 'Japanese';
    }
    if (data is _i10.MyClass) {
      return 'MyClass';
    }
    if (data is _i11.Oceans) {
      return 'Oceans';
    }
    if (data is _i12.Organisations) {
      return 'Organisations';
    }
    if (data is _i13.PrincipalUser) {
      return 'PrincipalUser';
    }
    if (data is _i14.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i15.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i16.PrincipalDetail) {
      return 'PrincipalDetail';
    }
    if (data is _i17.PlaceInvolved) {
      return 'PlaceInvolved';
    }
    if (data is _i18.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i19.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i20.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i21.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i22.PattsInvolved) {
      return 'PattsInvolved';
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
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i4.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i5.Categories>(data['data']);
    }
    if (data['className'] == 'CattsInvolved') {
      return deserialize<_i6.CattsInvolved>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i7.Countryatts>(data['data']);
    }
    if (data['className'] == 'Detail') {
      return deserialize<_i8.Detail>(data['data']);
    }
    if (data['className'] == 'Japanese') {
      return deserialize<_i9.Japanese>(data['data']);
    }
    if (data['className'] == 'MyClass') {
      return deserialize<_i10.MyClass>(data['data']);
    }
    if (data['className'] == 'Oceans') {
      return deserialize<_i11.Oceans>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i12.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalUser') {
      return deserialize<_i13.PrincipalUser>(data['data']);
    }
    if (data['className'] == 'PrincipalCategories') {
      return deserialize<_i14.PrincipalCategories>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i15.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalDetail') {
      return deserialize<_i16.PrincipalDetail>(data['data']);
    }
    if (data['className'] == 'PlaceInvolved') {
      return deserialize<_i17.PlaceInvolved>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i18.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i19.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i20.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i21.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'PattsInvolved') {
      return deserialize<_i22.PattsInvolved>(data['data']);
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
      case _i4.CountryInvolved:
        return _i4.CountryInvolved.t;
      case _i5.Categories:
        return _i5.Categories.t;
      case _i6.CattsInvolved:
        return _i6.CattsInvolved.t;
      case _i7.Countryatts:
        return _i7.Countryatts.t;
      case _i8.Detail:
        return _i8.Detail.t;
      case _i9.Japanese:
        return _i9.Japanese.t;
      case _i11.Oceans:
        return _i11.Oceans.t;
      case _i12.Organisations:
        return _i12.Organisations.t;
      case _i13.PrincipalUser:
        return _i13.PrincipalUser.t;
      case _i14.PrincipalCategories:
        return _i14.PrincipalCategories.t;
      case _i15.PrincipalCatt:
        return _i15.PrincipalCatt.t;
      case _i16.PrincipalDetail:
        return _i16.PrincipalDetail.t;
      case _i17.PlaceInvolved:
        return _i17.PlaceInvolved.t;
      case _i18.PrincipalOrgs:
        return _i18.PrincipalOrgs.t;
      case _i19.PrincipalPatt:
        return _i19.PrincipalPatt.t;
      case _i20.PrincipalPeople:
        return _i20.PrincipalPeople.t;
      case _i21.PrincipalTerms:
        return _i21.PrincipalTerms.t;
      case _i22.PattsInvolved:
        return _i22.PattsInvolved.t;
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
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'acorn';
}
