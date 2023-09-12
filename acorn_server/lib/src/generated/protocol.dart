/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'att_involved.dart' as _i3;
import 'c_involved.dart' as _i4;
import 'categories.dart' as _i5;
import 'countryatts.dart' as _i6;
import 'days.dart' as _i7;
import 'example.dart' as _i8;
import 'lieux.dart' as _i9;
import 'localdates.dart' as _i10;
import 'months.dart' as _i11;
import 'organisations.dart' as _i12;
import 'p_categories.dart' as _i13;
import 'p_catt.dart' as _i14;
import 'p_orgs.dart' as _i15;
import 'p_patt.dart' as _i16;
import 'p_people.dart' as _i17;
import 'p_place.dart' as _i18;
import 'p_seas.dart' as _i19;
import 'p_terms.dart' as _i20;
import 'pays.dart' as _i21;
import 'people.dart' as _i22;
import 'placeatts.dart' as _i23;
import 'places.dart' as _i24;
import 'principal.dart' as _i25;
import 'seas.dart' as _i26;
import 'terms.dart' as _i27;
import 'protocol.dart' as _i28;
import 'package:acorn_server/src/generated/att_involved.dart' as _i29;
import 'package:acorn_server/src/generated/c_involved.dart' as _i30;
import 'package:acorn_server/src/generated/categories.dart' as _i31;
import 'package:acorn_server/src/generated/countryatts.dart' as _i32;
import 'package:acorn_server/src/generated/days.dart' as _i33;
import 'package:acorn_server/src/generated/lieux.dart' as _i34;
import 'package:acorn_server/src/generated/localdates.dart' as _i35;
import 'package:acorn_server/src/generated/months.dart' as _i36;
import 'package:acorn_server/src/generated/organisations.dart' as _i37;
import 'package:acorn_server/src/generated/p_categories.dart' as _i38;
import 'package:acorn_server/src/generated/p_catt.dart' as _i39;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i40;
import 'package:acorn_server/src/generated/p_patt.dart' as _i41;
import 'package:acorn_server/src/generated/p_people.dart' as _i42;
import 'package:acorn_server/src/generated/p_seas.dart' as _i43;
import 'package:acorn_server/src/generated/p_terms.dart' as _i44;
import 'package:acorn_server/src/generated/pays.dart' as _i45;
import 'package:acorn_server/src/generated/people.dart' as _i46;
import 'package:acorn_server/src/generated/placeatts.dart' as _i47;
import 'package:acorn_server/src/generated/places.dart' as _i48;
import 'package:acorn_server/src/generated/principal.dart' as _i49;
import 'package:acorn_server/src/generated/seas.dart' as _i50;
import 'package:acorn_server/src/generated/terms.dart' as _i51;
export 'att_involved.dart';
export 'c_involved.dart';
export 'categories.dart';
export 'countryatts.dart';
export 'days.dart';
export 'example.dart';
export 'lieux.dart';
export 'localdates.dart';
export 'months.dart';
export 'organisations.dart';
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
export 'terms.dart';

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
          name: 'jour',
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
        _i2.ColumnDefinition(
          name: 'placeId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'cattId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'pattId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'personId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'categoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'principal_fk_0',
          columns: ['placeId'],
          referenceTable: 'places',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'principal_fk_1',
          columns: ['cattId'],
          referenceTable: 'countryatts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'principal_fk_2',
          columns: ['pattId'],
          referenceTable: 'placeatts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'principal_fk_3',
          columns: ['personId'],
          referenceTable: 'people',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'principal_fk_4',
          columns: ['categoryId'],
          referenceTable: 'categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: null,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
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
    if (t == _i3.AttsInvolved) {
      return _i3.AttsInvolved.fromJson(data, this) as T;
    }
    if (t == _i4.CountryInvolved) {
      return _i4.CountryInvolved.fromJson(data, this) as T;
    }
    if (t == _i5.Categories) {
      return _i5.Categories.fromJson(data, this) as T;
    }
    if (t == _i6.Countryatts) {
      return _i6.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i7.Days) {
      return _i7.Days.fromJson(data, this) as T;
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
    if (t == _i11.Months) {
      return _i11.Months.fromJson(data, this) as T;
    }
    if (t == _i12.Organisations) {
      return _i12.Organisations.fromJson(data, this) as T;
    }
    if (t == _i13.PrincipalCategories) {
      return _i13.PrincipalCategories.fromJson(data, this) as T;
    }
    if (t == _i14.PrincipalCatt) {
      return _i14.PrincipalCatt.fromJson(data, this) as T;
    }
    if (t == _i15.PrincipalOrgs) {
      return _i15.PrincipalOrgs.fromJson(data, this) as T;
    }
    if (t == _i16.PrincipalPatt) {
      return _i16.PrincipalPatt.fromJson(data, this) as T;
    }
    if (t == _i17.PrincipalPeople) {
      return _i17.PrincipalPeople.fromJson(data, this) as T;
    }
    if (t == _i18.PrincipalPlace) {
      return _i18.PrincipalPlace.fromJson(data, this) as T;
    }
    if (t == _i19.PrincipalSeas) {
      return _i19.PrincipalSeas.fromJson(data, this) as T;
    }
    if (t == _i20.PrincipalTerms) {
      return _i20.PrincipalTerms.fromJson(data, this) as T;
    }
    if (t == _i21.Pays) {
      return _i21.Pays.fromJson(data, this) as T;
    }
    if (t == _i22.People) {
      return _i22.People.fromJson(data, this) as T;
    }
    if (t == _i23.Placeatts) {
      return _i23.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i24.Places) {
      return _i24.Places.fromJson(data, this) as T;
    }
    if (t == _i25.Principal) {
      return _i25.Principal.fromJson(data, this) as T;
    }
    if (t == _i26.Seas) {
      return _i26.Seas.fromJson(data, this) as T;
    }
    if (t == _i27.Terms) {
      return _i27.Terms.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.AttsInvolved?>()) {
      return (data != null ? _i3.AttsInvolved.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.CountryInvolved?>()) {
      return (data != null ? _i4.CountryInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Categories?>()) {
      return (data != null ? _i5.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Countryatts?>()) {
      return (data != null ? _i6.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Days?>()) {
      return (data != null ? _i7.Days.fromJson(data, this) : null) as T;
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
    if (t == _i1.getType<_i11.Months?>()) {
      return (data != null ? _i11.Months.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Organisations?>()) {
      return (data != null ? _i12.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.PrincipalCategories?>()) {
      return (data != null
          ? _i13.PrincipalCategories.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i14.PrincipalCatt?>()) {
      return (data != null ? _i14.PrincipalCatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.PrincipalOrgs?>()) {
      return (data != null ? _i15.PrincipalOrgs.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PrincipalPatt?>()) {
      return (data != null ? _i16.PrincipalPatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.PrincipalPeople?>()) {
      return (data != null ? _i17.PrincipalPeople.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i18.PrincipalPlace?>()) {
      return (data != null ? _i18.PrincipalPlace.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i19.PrincipalSeas?>()) {
      return (data != null ? _i19.PrincipalSeas.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i20.PrincipalTerms?>()) {
      return (data != null ? _i20.PrincipalTerms.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i21.Pays?>()) {
      return (data != null ? _i21.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.People?>()) {
      return (data != null ? _i22.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.Placeatts?>()) {
      return (data != null ? _i23.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.Places?>()) {
      return (data != null ? _i24.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.Principal?>()) {
      return (data != null ? _i25.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i26.Seas?>()) {
      return (data != null ? _i26.Seas.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i27.Terms?>()) {
      return (data != null ? _i27.Terms.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i28.Pays>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i28.Pays>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i28.Countryatts>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i28.Countryatts>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i28.Organisations>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i28.Organisations>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i28.People>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i28.People>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i28.Categories>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i28.Categories>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i28.Terms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i28.Terms>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i29.AttsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i29.AttsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i30.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i30.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i31.Categories>) {
      return (data as List).map((e) => deserialize<_i31.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i32.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i32.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i33.Days>) {
      return (data as List).map((e) => deserialize<_i33.Days>(e)).toList()
          as dynamic;
    }
    if (t == List<_i34.Lieux>) {
      return (data as List).map((e) => deserialize<_i34.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i35.LocalDates>) {
      return (data as List).map((e) => deserialize<_i35.LocalDates>(e)).toList()
          as dynamic;
    }
    if (t == List<_i36.Months>) {
      return (data as List).map((e) => deserialize<_i36.Months>(e)).toList()
          as dynamic;
    }
    if (t == List<_i37.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i37.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i38.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i38.PrincipalCategories>(e))
          .toList() as dynamic;
    }
    if (t == List<_i39.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i39.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i40.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i40.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i41.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i41.PrincipalPatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i42.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i42.PrincipalPeople>(e))
          .toList() as dynamic;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
          .map((e) => deserialize<Map<String, dynamic>>(e))
          .toList() as dynamic;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<dynamic>(v))) as dynamic;
    }
    if (t == List<_i43.PrincipalSeas>) {
      return (data as List)
          .map((e) => deserialize<_i43.PrincipalSeas>(e))
          .toList() as dynamic;
    }
    if (t == List<_i44.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i44.PrincipalTerms>(e))
          .toList() as dynamic;
    }
    if (t == List<_i45.Pays>) {
      return (data as List).map((e) => deserialize<_i45.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i46.People>) {
      return (data as List).map((e) => deserialize<_i46.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i47.Placeatts>) {
      return (data as List).map((e) => deserialize<_i47.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i48.Places>) {
      return (data as List).map((e) => deserialize<_i48.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i49.Principal>) {
      return (data as List).map((e) => deserialize<_i49.Principal>(e)).toList()
          as dynamic;
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
    if (t == List<_i50.Seas>) {
      return (data as List).map((e) => deserialize<_i50.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i51.Terms>) {
      return (data as List).map((e) => deserialize<_i51.Terms>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.AttsInvolved) {
      return 'AttsInvolved';
    }
    if (data is _i4.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i5.Categories) {
      return 'Categories';
    }
    if (data is _i6.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i7.Days) {
      return 'Days';
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
    if (data is _i11.Months) {
      return 'Months';
    }
    if (data is _i12.Organisations) {
      return 'Organisations';
    }
    if (data is _i13.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i14.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i15.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i16.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i17.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i18.PrincipalPlace) {
      return 'PrincipalPlace';
    }
    if (data is _i19.PrincipalSeas) {
      return 'PrincipalSeas';
    }
    if (data is _i20.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i21.Pays) {
      return 'Pays';
    }
    if (data is _i22.People) {
      return 'People';
    }
    if (data is _i23.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i24.Places) {
      return 'Places';
    }
    if (data is _i25.Principal) {
      return 'Principal';
    }
    if (data is _i26.Seas) {
      return 'Seas';
    }
    if (data is _i27.Terms) {
      return 'Terms';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AttsInvolved') {
      return deserialize<_i3.AttsInvolved>(data['data']);
    }
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i4.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i5.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i6.Countryatts>(data['data']);
    }
    if (data['className'] == 'Days') {
      return deserialize<_i7.Days>(data['data']);
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
    if (data['className'] == 'Months') {
      return deserialize<_i11.Months>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i12.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalCategories') {
      return deserialize<_i13.PrincipalCategories>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i14.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i15.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i16.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i17.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalPlace') {
      return deserialize<_i18.PrincipalPlace>(data['data']);
    }
    if (data['className'] == 'PrincipalSeas') {
      return deserialize<_i19.PrincipalSeas>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i20.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i21.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i22.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i23.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i24.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i25.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i26.Seas>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i27.Terms>(data['data']);
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
      case _i3.AttsInvolved:
        return _i3.AttsInvolved.t;
      case _i4.CountryInvolved:
        return _i4.CountryInvolved.t;
      case _i5.Categories:
        return _i5.Categories.t;
      case _i6.Countryatts:
        return _i6.Countryatts.t;
      case _i7.Days:
        return _i7.Days.t;
      case _i9.Lieux:
        return _i9.Lieux.t;
      case _i10.LocalDates:
        return _i10.LocalDates.t;
      case _i11.Months:
        return _i11.Months.t;
      case _i12.Organisations:
        return _i12.Organisations.t;
      case _i13.PrincipalCategories:
        return _i13.PrincipalCategories.t;
      case _i14.PrincipalCatt:
        return _i14.PrincipalCatt.t;
      case _i15.PrincipalOrgs:
        return _i15.PrincipalOrgs.t;
      case _i16.PrincipalPatt:
        return _i16.PrincipalPatt.t;
      case _i17.PrincipalPeople:
        return _i17.PrincipalPeople.t;
      case _i18.PrincipalPlace:
        return _i18.PrincipalPlace.t;
      case _i19.PrincipalSeas:
        return _i19.PrincipalSeas.t;
      case _i20.PrincipalTerms:
        return _i20.PrincipalTerms.t;
      case _i21.Pays:
        return _i21.Pays.t;
      case _i22.People:
        return _i22.People.t;
      case _i23.Placeatts:
        return _i23.Placeatts.t;
      case _i24.Places:
        return _i24.Places.t;
      case _i25.Principal:
        return _i25.Principal.t;
      case _i26.Seas:
        return _i26.Seas.t;
      case _i27.Terms:
        return _i27.Terms.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
