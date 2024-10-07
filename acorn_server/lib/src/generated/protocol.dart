/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

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
import 'launch_sites.dart' as _i10;
import 'myclass.dart' as _i11;
import 'oceans.dart' as _i12;
import 'organisations.dart' as _i13;
import 'p-user.dart' as _i14;
import 'p_categories.dart' as _i15;
import 'p_catt.dart' as _i16;
import 'p_detail.dart' as _i17;
import 'p_involved.dart' as _i18;
import 'p_orgs.dart' as _i19;
import 'p_patt.dart' as _i20;
import 'p_people.dart' as _i21;
import 'p_terms.dart' as _i22;
import 'patts_involved.dart' as _i23;
import 'pays.dart' as _i24;
import 'people.dart' as _i25;
import 'placeatts.dart' as _i26;
import 'places.dart' as _i27;
import 'principal.dart' as _i28;
import 'principal_sites.dart' as _i29;
import 'seas.dart' as _i30;
import 'space.dart' as _i31;
import 'stars.dart' as _i32;
import 'stars_involved.dart' as _i33;
import 'terms.dart' as _i34;
import 'universe.dart' as _i35;
import 'with_globe.dart' as _i36;
import 'with_map.dart' as _i37;
import 'with_qgis.dart' as _i38;
import 'package:acorn_server/src/generated/c_involved.dart' as _i39;
import 'package:acorn_server/src/generated/categories.dart' as _i40;
import 'package:acorn_server/src/generated/catts_involved.dart' as _i41;
import 'package:acorn_server/src/generated/countryatts.dart' as _i42;
import 'package:acorn_server/src/generated/detail.dart' as _i43;
import 'package:acorn_server/src/generated/japanese.dart' as _i44;
import 'package:acorn_server/src/generated/launch_sites.dart' as _i45;
import 'package:acorn_server/src/generated/oceans.dart' as _i46;
import 'package:acorn_server/src/generated/organisations.dart' as _i47;
import 'package:acorn_server/src/generated/p_categories.dart' as _i48;
import 'package:acorn_server/src/generated/p_catt.dart' as _i49;
import 'package:acorn_server/src/generated/p_detail.dart' as _i50;
import 'package:acorn_server/src/generated/p_involved.dart' as _i51;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i52;
import 'package:acorn_server/src/generated/p_patt.dart' as _i53;
import 'package:acorn_server/src/generated/p_people.dart' as _i54;
import 'package:acorn_server/src/generated/principal_sites.dart' as _i55;
import 'package:acorn_server/src/generated/p_terms.dart' as _i56;
import 'package:acorn_server/src/generated/p-user.dart' as _i57;
import 'package:acorn_server/src/generated/patts_involved.dart' as _i58;
import 'package:acorn_server/src/generated/pays.dart' as _i59;
import 'package:acorn_server/src/generated/people.dart' as _i60;
import 'package:acorn_server/src/generated/placeatts.dart' as _i61;
import 'package:acorn_server/src/generated/places.dart' as _i62;
import 'package:acorn_server/src/generated/principal.dart' as _i63;
import 'package:acorn_server/src/generated/seas.dart' as _i64;
import 'package:acorn_server/src/generated/space.dart' as _i65;
import 'package:acorn_server/src/generated/stars.dart' as _i66;
import 'package:acorn_server/src/generated/stars_involved.dart' as _i67;
import 'package:acorn_server/src/generated/terms.dart' as _i68;
import 'package:acorn_server/src/generated/universe.dart' as _i69;
import 'package:acorn_server/src/generated/with_globe.dart' as _i70;
import 'package:acorn_server/src/generated/with_map.dart' as _i71;
import 'package:acorn_server/src/generated/with_qgis.dart' as _i72;
export 'c_involved.dart';
export 'categories.dart';
export 'catts_involved.dart';
export 'countryatts.dart';
export 'detail.dart';
export 'japanese.dart';
export 'launch_sites.dart';
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
export 'principal_sites.dart';
export 'seas.dart';
export 'space.dart';
export 'stars.dart';
export 'stars_involved.dart';
export 'terms.dart';
export 'universe.dart';
export 'with_globe.dart';
export 'with_map.dart';
export 'with_qgis.dart';

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
      name: 'launch_sites',
      dartName: 'LaunchSites',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'launch_sites_id_seq\'::regclass)',
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
          name: 'site',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'lat',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'lon',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'launch_sites_pkey',
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
      name: 'principal_sites',
      dartName: 'PrincipalSites',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'principal_sites_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'siteId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'principal_sites_pkey',
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
        _i2.ColumnDefinition(
          name: 'area',
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
      name: 'space',
      dartName: 'Space',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'space_id_seq\'::regclass)',
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
        _i2.ColumnDefinition(
          name: 'hecX',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'hecY',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'hecZ',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'julianD',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'gLat',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'gLon',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'lightYear',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'space_pkey',
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
        _i2.ColumnDefinition(
          name: 'area',
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
    _i2.TableDefinition(
      name: 'with_qgis',
      dartName: 'WithQgis',
      schema: 'public',
      module: 'acorn',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'with_qgis_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'principalId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'geo',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'year',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'with_qgis_pkey',
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
    if (t == _i10.LaunchSites) {
      return _i10.LaunchSites.fromJson(data) as T;
    }
    if (t == _i11.MyClass) {
      return _i11.MyClass.fromJson(data) as T;
    }
    if (t == _i12.Oceans) {
      return _i12.Oceans.fromJson(data) as T;
    }
    if (t == _i13.Organisations) {
      return _i13.Organisations.fromJson(data) as T;
    }
    if (t == _i14.PrincipalUser) {
      return _i14.PrincipalUser.fromJson(data) as T;
    }
    if (t == _i15.PrincipalCategories) {
      return _i15.PrincipalCategories.fromJson(data) as T;
    }
    if (t == _i16.PrincipalCatt) {
      return _i16.PrincipalCatt.fromJson(data) as T;
    }
    if (t == _i17.PrincipalDetail) {
      return _i17.PrincipalDetail.fromJson(data) as T;
    }
    if (t == _i18.PlaceInvolved) {
      return _i18.PlaceInvolved.fromJson(data) as T;
    }
    if (t == _i19.PrincipalOrgs) {
      return _i19.PrincipalOrgs.fromJson(data) as T;
    }
    if (t == _i20.PrincipalPatt) {
      return _i20.PrincipalPatt.fromJson(data) as T;
    }
    if (t == _i21.PrincipalPeople) {
      return _i21.PrincipalPeople.fromJson(data) as T;
    }
    if (t == _i22.PrincipalTerms) {
      return _i22.PrincipalTerms.fromJson(data) as T;
    }
    if (t == _i23.PattsInvolved) {
      return _i23.PattsInvolved.fromJson(data) as T;
    }
    if (t == _i24.Pays) {
      return _i24.Pays.fromJson(data) as T;
    }
    if (t == _i25.People) {
      return _i25.People.fromJson(data) as T;
    }
    if (t == _i26.Placeatts) {
      return _i26.Placeatts.fromJson(data) as T;
    }
    if (t == _i27.Places) {
      return _i27.Places.fromJson(data) as T;
    }
    if (t == _i28.Principal) {
      return _i28.Principal.fromJson(data) as T;
    }
    if (t == _i29.PrincipalSites) {
      return _i29.PrincipalSites.fromJson(data) as T;
    }
    if (t == _i30.Seas) {
      return _i30.Seas.fromJson(data) as T;
    }
    if (t == _i31.Space) {
      return _i31.Space.fromJson(data) as T;
    }
    if (t == _i32.Stars) {
      return _i32.Stars.fromJson(data) as T;
    }
    if (t == _i33.StarsInvolved) {
      return _i33.StarsInvolved.fromJson(data) as T;
    }
    if (t == _i34.Terms) {
      return _i34.Terms.fromJson(data) as T;
    }
    if (t == _i35.Universe) {
      return _i35.Universe.fromJson(data) as T;
    }
    if (t == _i36.WithGlobe) {
      return _i36.WithGlobe.fromJson(data) as T;
    }
    if (t == _i37.WithMap) {
      return _i37.WithMap.fromJson(data) as T;
    }
    if (t == _i38.WithQgis) {
      return _i38.WithQgis.fromJson(data) as T;
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
    if (t == _i1.getType<_i10.LaunchSites?>()) {
      return (data != null ? _i10.LaunchSites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.MyClass?>()) {
      return (data != null ? _i11.MyClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.Oceans?>()) {
      return (data != null ? _i12.Oceans.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Organisations?>()) {
      return (data != null ? _i13.Organisations.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.PrincipalUser?>()) {
      return (data != null ? _i14.PrincipalUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.PrincipalCategories?>()) {
      return (data != null ? _i15.PrincipalCategories.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PrincipalCatt?>()) {
      return (data != null ? _i16.PrincipalCatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.PrincipalDetail?>()) {
      return (data != null ? _i17.PrincipalDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.PlaceInvolved?>()) {
      return (data != null ? _i18.PlaceInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.PrincipalOrgs?>()) {
      return (data != null ? _i19.PrincipalOrgs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.PrincipalPatt?>()) {
      return (data != null ? _i20.PrincipalPatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.PrincipalPeople?>()) {
      return (data != null ? _i21.PrincipalPeople.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.PrincipalTerms?>()) {
      return (data != null ? _i22.PrincipalTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.PattsInvolved?>()) {
      return (data != null ? _i23.PattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.Pays?>()) {
      return (data != null ? _i24.Pays.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.People?>()) {
      return (data != null ? _i25.People.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.Placeatts?>()) {
      return (data != null ? _i26.Placeatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.Places?>()) {
      return (data != null ? _i27.Places.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.Principal?>()) {
      return (data != null ? _i28.Principal.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.PrincipalSites?>()) {
      return (data != null ? _i29.PrincipalSites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.Seas?>()) {
      return (data != null ? _i30.Seas.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.Space?>()) {
      return (data != null ? _i31.Space.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.Stars?>()) {
      return (data != null ? _i32.Stars.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.StarsInvolved?>()) {
      return (data != null ? _i33.StarsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.Terms?>()) {
      return (data != null ? _i34.Terms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i35.Universe?>()) {
      return (data != null ? _i35.Universe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i36.WithGlobe?>()) {
      return (data != null ? _i36.WithGlobe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i37.WithMap?>()) {
      return (data != null ? _i37.WithMap.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i38.WithQgis?>()) {
      return (data != null ? _i38.WithQgis.fromJson(data) : null) as T;
    }
    if (t == List<dynamic>) {
      return (data as List).map((e) => deserialize<dynamic>(e)).toList()
          as dynamic;
    }
    if (t == List<_i39.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i39.CountryInvolved>(e))
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
    if (t == List<_i40.Categories>) {
      return (data as List).map((e) => deserialize<_i40.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i41.CattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i41.CattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i42.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i42.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i43.Detail>) {
      return (data as List).map((e) => deserialize<_i43.Detail>(e)).toList()
          as dynamic;
    }
    if (t == List<_i44.Japanese>) {
      return (data as List).map((e) => deserialize<_i44.Japanese>(e)).toList()
          as dynamic;
    }
    if (t == List<_i45.LaunchSites>) {
      return (data as List)
          .map((e) => deserialize<_i45.LaunchSites>(e))
          .toList() as dynamic;
    }
    if (t == List<_i46.Oceans>) {
      return (data as List).map((e) => deserialize<_i46.Oceans>(e)).toList()
          as dynamic;
    }
    if (t == List<_i47.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i47.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i48.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i48.PrincipalCategories>(e))
          .toList() as dynamic;
    }
    if (t == List<_i49.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i49.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i50.PrincipalDetail>) {
      return (data as List)
          .map((e) => deserialize<_i50.PrincipalDetail>(e))
          .toList() as dynamic;
    }
    if (t == List<_i51.PlaceInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i51.PlaceInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i52.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i52.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i53.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i53.PrincipalPatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i54.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i54.PrincipalPeople>(e))
          .toList() as dynamic;
    }
    if (t == List<_i55.PrincipalSites>) {
      return (data as List)
          .map((e) => deserialize<_i55.PrincipalSites>(e))
          .toList() as dynamic;
    }
    if (t == List<_i56.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i56.PrincipalTerms>(e))
          .toList() as dynamic;
    }
    if (t == List<_i57.PrincipalUser>) {
      return (data as List)
          .map((e) => deserialize<_i57.PrincipalUser>(e))
          .toList() as dynamic;
    }
    if (t == List<_i58.PattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i58.PattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i59.Pays>) {
      return (data as List).map((e) => deserialize<_i59.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i60.People>) {
      return (data as List).map((e) => deserialize<_i60.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i61.Placeatts>) {
      return (data as List).map((e) => deserialize<_i61.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i62.Places>) {
      return (data as List).map((e) => deserialize<_i62.Places>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i63.Principal>) {
      return (data as List).map((e) => deserialize<_i63.Principal>(e)).toList()
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
    if (t == List<_i64.Seas>) {
      return (data as List).map((e) => deserialize<_i64.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i65.Space>) {
      return (data as List).map((e) => deserialize<_i65.Space>(e)).toList()
          as dynamic;
    }
    if (t == List<_i66.Stars>) {
      return (data as List).map((e) => deserialize<_i66.Stars>(e)).toList()
          as dynamic;
    }
    if (t == List<_i67.StarsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i67.StarsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i68.Terms>) {
      return (data as List).map((e) => deserialize<_i68.Terms>(e)).toList()
          as dynamic;
    }
    if (t == List<_i69.Universe>) {
      return (data as List).map((e) => deserialize<_i69.Universe>(e)).toList()
          as dynamic;
    }
    if (t == List<_i70.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i70.WithGlobe>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i71.WithMap>) {
      return (data as List).map((e) => deserialize<_i71.WithMap>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i72.WithQgis>) {
      return (data as List).map((e) => deserialize<_i72.WithQgis>(e)).toList()
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
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
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
    if (data is _i10.LaunchSites) {
      return 'LaunchSites';
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
    if (data is _i17.PrincipalDetail) {
      return 'PrincipalDetail';
    }
    if (data is _i18.PlaceInvolved) {
      return 'PlaceInvolved';
    }
    if (data is _i19.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i20.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i21.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i22.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i23.PattsInvolved) {
      return 'PattsInvolved';
    }
    if (data is _i24.Pays) {
      return 'Pays';
    }
    if (data is _i25.People) {
      return 'People';
    }
    if (data is _i26.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i27.Places) {
      return 'Places';
    }
    if (data is _i28.Principal) {
      return 'Principal';
    }
    if (data is _i29.PrincipalSites) {
      return 'PrincipalSites';
    }
    if (data is _i30.Seas) {
      return 'Seas';
    }
    if (data is _i31.Space) {
      return 'Space';
    }
    if (data is _i32.Stars) {
      return 'Stars';
    }
    if (data is _i33.StarsInvolved) {
      return 'StarsInvolved';
    }
    if (data is _i34.Terms) {
      return 'Terms';
    }
    if (data is _i35.Universe) {
      return 'Universe';
    }
    if (data is _i36.WithGlobe) {
      return 'WithGlobe';
    }
    if (data is _i37.WithMap) {
      return 'WithMap';
    }
    if (data is _i38.WithQgis) {
      return 'WithQgis';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
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
    if (data['className'] == 'LaunchSites') {
      return deserialize<_i10.LaunchSites>(data['data']);
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
    if (data['className'] == 'PrincipalDetail') {
      return deserialize<_i17.PrincipalDetail>(data['data']);
    }
    if (data['className'] == 'PlaceInvolved') {
      return deserialize<_i18.PlaceInvolved>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i19.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i20.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i21.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i22.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'PattsInvolved') {
      return deserialize<_i23.PattsInvolved>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i24.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i25.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i26.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i27.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i28.Principal>(data['data']);
    }
    if (data['className'] == 'PrincipalSites') {
      return deserialize<_i29.PrincipalSites>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i30.Seas>(data['data']);
    }
    if (data['className'] == 'Space') {
      return deserialize<_i31.Space>(data['data']);
    }
    if (data['className'] == 'Stars') {
      return deserialize<_i32.Stars>(data['data']);
    }
    if (data['className'] == 'StarsInvolved') {
      return deserialize<_i33.StarsInvolved>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i34.Terms>(data['data']);
    }
    if (data['className'] == 'Universe') {
      return deserialize<_i35.Universe>(data['data']);
    }
    if (data['className'] == 'WithGlobe') {
      return deserialize<_i36.WithGlobe>(data['data']);
    }
    if (data['className'] == 'WithMap') {
      return deserialize<_i37.WithMap>(data['data']);
    }
    if (data['className'] == 'WithQgis') {
      return deserialize<_i38.WithQgis>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
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
      case _i10.LaunchSites:
        return _i10.LaunchSites.t;
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
      case _i17.PrincipalDetail:
        return _i17.PrincipalDetail.t;
      case _i18.PlaceInvolved:
        return _i18.PlaceInvolved.t;
      case _i19.PrincipalOrgs:
        return _i19.PrincipalOrgs.t;
      case _i20.PrincipalPatt:
        return _i20.PrincipalPatt.t;
      case _i21.PrincipalPeople:
        return _i21.PrincipalPeople.t;
      case _i22.PrincipalTerms:
        return _i22.PrincipalTerms.t;
      case _i23.PattsInvolved:
        return _i23.PattsInvolved.t;
      case _i24.Pays:
        return _i24.Pays.t;
      case _i25.People:
        return _i25.People.t;
      case _i26.Placeatts:
        return _i26.Placeatts.t;
      case _i27.Places:
        return _i27.Places.t;
      case _i28.Principal:
        return _i28.Principal.t;
      case _i29.PrincipalSites:
        return _i29.PrincipalSites.t;
      case _i30.Seas:
        return _i30.Seas.t;
      case _i31.Space:
        return _i31.Space.t;
      case _i32.Stars:
        return _i32.Stars.t;
      case _i33.StarsInvolved:
        return _i33.StarsInvolved.t;
      case _i34.Terms:
        return _i34.Terms.t;
      case _i35.Universe:
        return _i35.Universe.t;
      case _i36.WithGlobe:
        return _i36.WithGlobe.t;
      case _i37.WithMap:
        return _i37.WithMap.t;
      case _i38.WithQgis:
        return _i38.WithQgis.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'acorn';
}
