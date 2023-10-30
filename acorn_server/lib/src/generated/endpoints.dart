/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/att_involved_endpoint.dart' as _i2;
import '../endpoints/c_involved_endpoint.dart' as _i3;
import '../endpoints/categories_endpoint.dart' as _i4;
import '../endpoints/countryatts_endpoint.dart' as _i5;
import '../endpoints/example_endpoint.dart' as _i6;
import '../endpoints/lieux_endpoint.dart' as _i7;
import '../endpoints/localdates_endpoint.dart' as _i8;
import '../endpoints/oceans_endpoint.dart' as _i9;
import '../endpoints/organisations_endpoint.dart' as _i10;
import '../endpoints/p_categories_endpoint.dart' as _i11;
import '../endpoints/p_catt_endpoint.dart' as _i12;
import '../endpoints/p_orgs_endpoint.dart' as _i13;
import '../endpoints/p_patt_endpoint.dart' as _i14;
import '../endpoints/p_people_endpoint.dart' as _i15;
import '../endpoints/p_place_endpoint.dart' as _i16;
import '../endpoints/p_seas_endpoint.dart' as _i17;
import '../endpoints/p_terms_endpoint.dart' as _i18;
import '../endpoints/p_user_endpoint.dart' as _i19;
import '../endpoints/pays_endpoint.dart' as _i20;
import '../endpoints/people_endpoint.dart' as _i21;
import '../endpoints/placeatts_endpoint.dart' as _i22;
import '../endpoints/places_endpoint.dart' as _i23;
import '../endpoints/principal_endpoint.dart' as _i24;
import '../endpoints/seas_endpoint.dart' as _i25;
import '../endpoints/stars_endpoint.dart' as _i26;
import '../endpoints/stars_involved_endpoint.dart' as _i27;
import '../endpoints/term_endpoint.dart' as _i28;
import '../endpoints/universe_endpoint.dart' as _i29;
import 'package:acorn_server/src/generated/att_involved.dart' as _i30;
import 'package:acorn_server/src/generated/c_involved.dart' as _i31;
import 'package:acorn_server/src/generated/categories.dart' as _i32;
import 'package:acorn_server/src/generated/countryatts.dart' as _i33;
import 'package:acorn_server/src/generated/lieux.dart' as _i34;
import 'package:acorn_server/src/generated/localdates.dart' as _i35;
import 'package:acorn_server/src/generated/oceans.dart' as _i36;
import 'package:acorn_server/src/generated/organisations.dart' as _i37;
import 'package:acorn_server/src/generated/p_categories.dart' as _i38;
import 'package:acorn_server/src/generated/p_catt.dart' as _i39;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i40;
import 'package:acorn_server/src/generated/p_patt.dart' as _i41;
import 'package:acorn_server/src/generated/p_people.dart' as _i42;
import 'package:acorn_server/src/generated/p_place.dart' as _i43;
import 'package:acorn_server/src/generated/p_seas.dart' as _i44;
import 'package:acorn_server/src/generated/p_terms.dart' as _i45;
import 'package:acorn_server/src/generated/p-user.dart' as _i46;
import 'package:acorn_server/src/generated/pays.dart' as _i47;
import 'package:acorn_server/src/generated/people.dart' as _i48;
import 'package:acorn_server/src/generated/placeatts.dart' as _i49;
import 'package:acorn_server/src/generated/places.dart' as _i50;
import 'package:acorn_server/src/generated/principal.dart' as _i51;
import 'package:acorn_server/src/generated/seas.dart' as _i52;
import 'package:acorn_server/src/generated/stars.dart' as _i53;
import 'package:acorn_server/src/generated/stars_involved.dart' as _i54;
import 'package:acorn_server/src/generated/terms.dart' as _i55;
import 'package:acorn_server/src/generated/universe.dart' as _i56;
import 'package:serverpod_auth_server/module.dart' as _i57;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'attInvolved': _i2.AttInvolvedEndpoint()
        ..initialize(
          server,
          'attInvolved',
          null,
        ),
      'countryInvolved': _i3.CountryInvolvedEndpoint()
        ..initialize(
          server,
          'countryInvolved',
          null,
        ),
      'categories': _i4.CategoriesEndpoint()
        ..initialize(
          server,
          'categories',
          null,
        ),
      'countryatts': _i5.CountryattsEndpoint()
        ..initialize(
          server,
          'countryatts',
          null,
        ),
      'example': _i6.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'lieux': _i7.LieuxEndpoint()
        ..initialize(
          server,
          'lieux',
          null,
        ),
      'localDates': _i8.LocalDatesEndpoint()
        ..initialize(
          server,
          'localDates',
          null,
        ),
      'oceans': _i9.OceansEndpoint()
        ..initialize(
          server,
          'oceans',
          null,
        ),
      'organisations': _i10.OrganisationsEndpoint()
        ..initialize(
          server,
          'organisations',
          null,
        ),
      'principalCategories': _i11.PrincipalCategoriesEndpoint()
        ..initialize(
          server,
          'principalCategories',
          null,
        ),
      'principalCatt': _i12.PrincipalCattEndpoint()
        ..initialize(
          server,
          'principalCatt',
          null,
        ),
      'principalOrgs': _i13.PrincipalOrgsEndpoint()
        ..initialize(
          server,
          'principalOrgs',
          null,
        ),
      'principalPatt': _i14.PrincipalPattEndpoint()
        ..initialize(
          server,
          'principalPatt',
          null,
        ),
      'principalPeople': _i15.PrincipalPeopleEndpoint()
        ..initialize(
          server,
          'principalPeople',
          null,
        ),
      'principalPlace': _i16.PrincipalPlaceEndpoint()
        ..initialize(
          server,
          'principalPlace',
          null,
        ),
      'principalSeas': _i17.PrincipalSeasEndpoint()
        ..initialize(
          server,
          'principalSeas',
          null,
        ),
      'principalTerms': _i18.PrincipalTermsEndpoint()
        ..initialize(
          server,
          'principalTerms',
          null,
        ),
      'principalUser': _i19.PrincipalUserEndpoint()
        ..initialize(
          server,
          'principalUser',
          null,
        ),
      'pays': _i20.PaysEndpoint()
        ..initialize(
          server,
          'pays',
          null,
        ),
      'people': _i21.PeopleEndpoint()
        ..initialize(
          server,
          'people',
          null,
        ),
      'placeatts': _i22.PlaceattsEndpoint()
        ..initialize(
          server,
          'placeatts',
          null,
        ),
      'places': _i23.PlacesEndpoint()
        ..initialize(
          server,
          'places',
          null,
        ),
      'principal': _i24.PrincipalEndpoint()
        ..initialize(
          server,
          'principal',
          null,
        ),
      'seas': _i25.SeasEndpoint()
        ..initialize(
          server,
          'seas',
          null,
        ),
      'stars': _i26.StarsEndpoint()
        ..initialize(
          server,
          'stars',
          null,
        ),
      'starsInvolved': _i27.StarsInvolvedEndpoint()
        ..initialize(
          server,
          'starsInvolved',
          null,
        ),
      'terms': _i28.TermsEndpoint()
        ..initialize(
          server,
          'terms',
          null,
        ),
      'universe': _i29.UniverseEndpoint()
        ..initialize(
          server,
          'universe',
          null,
        ),
    };
    connectors['attInvolved'] = _i1.EndpointConnector(
      name: 'attInvolved',
      endpoint: endpoints['attInvolved']!,
      methodConnectors: {
        'getAttsInvolved': _i1.MethodConnector(
          name: 'getAttsInvolved',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['attInvolved'] as _i2.AttInvolvedEndpoint)
                  .getAttsInvolved(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addAttsInvolved': _i1.MethodConnector(
          name: 'addAttsInvolved',
          params: {
            'attsInvolved': _i1.ParameterDescription(
              name: 'attsInvolved',
              type: _i1.getType<_i30.AttsInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['attInvolved'] as _i2.AttInvolvedEndpoint)
                  .addAttsInvolved(
            session,
            params['attsInvolved'],
          ),
        ),
      },
    );
    connectors['countryInvolved'] = _i1.EndpointConnector(
      name: 'countryInvolved',
      endpoint: endpoints['countryInvolved']!,
      methodConnectors: {
        'getCInvolved': _i1.MethodConnector(
          name: 'getCInvolved',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryInvolved'] as _i3.CountryInvolvedEndpoint)
                  .getCInvolved(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addCInvolved': _i1.MethodConnector(
          name: 'addCInvolved',
          params: {
            'cInvolved': _i1.ParameterDescription(
              name: 'cInvolved',
              type: _i1.getType<_i31.CountryInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryInvolved'] as _i3.CountryInvolvedEndpoint)
                  .addCInvolved(
            session,
            params['cInvolved'],
          ),
        ),
      },
    );
    connectors['categories'] = _i1.EndpointConnector(
      name: 'categories',
      endpoint: endpoints['categories']!,
      methodConnectors: {
        'getCategories': _i1.MethodConnector(
          name: 'getCategories',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['categories'] as _i4.CategoriesEndpoint).getCategories(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addCategories': _i1.MethodConnector(
          name: 'addCategories',
          params: {
            'categories': _i1.ParameterDescription(
              name: 'categories',
              type: _i1.getType<_i32.Categories>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['categories'] as _i4.CategoriesEndpoint).addCategories(
            session,
            params['categories'],
          ),
        ),
      },
    );
    connectors['countryatts'] = _i1.EndpointConnector(
      name: 'countryatts',
      endpoint: endpoints['countryatts']!,
      methodConnectors: {
        'getCountryATTs': _i1.MethodConnector(
          name: 'getCountryATTs',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .getCountryATTs(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addCountryATTs': _i1.MethodConnector(
          name: 'addCountryATTs',
          params: {
            'countryatts': _i1.ParameterDescription(
              name: 'countryatts',
              type: _i1.getType<_i33.Countryatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .addCountryATTs(
            session,
            params['countryatts'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i6.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['lieux'] = _i1.EndpointConnector(
      name: 'lieux',
      endpoint: endpoints['lieux']!,
      methodConnectors: {
        'getLieux': _i1.MethodConnector(
          name: 'getLieux',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lieux'] as _i7.LieuxEndpoint).getLieux(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addLieux': _i1.MethodConnector(
          name: 'addLieux',
          params: {
            'lieux': _i1.ParameterDescription(
              name: 'lieux',
              type: _i1.getType<_i34.Lieux>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lieux'] as _i7.LieuxEndpoint).addLieux(
            session,
            params['lieux'],
          ),
        ),
      },
    );
    connectors['localDates'] = _i1.EndpointConnector(
      name: 'localDates',
      endpoint: endpoints['localDates']!,
      methodConnectors: {
        'getLocalDates': _i1.MethodConnector(
          name: 'getLocalDates',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['localDates'] as _i8.LocalDatesEndpoint).getLocalDates(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addLocalDates': _i1.MethodConnector(
          name: 'addLocalDates',
          params: {
            'localdates': _i1.ParameterDescription(
              name: 'localdates',
              type: _i1.getType<_i35.LocalDates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['localDates'] as _i8.LocalDatesEndpoint).addLocalDates(
            session,
            params['localdates'],
          ),
        ),
      },
    );
    connectors['oceans'] = _i1.EndpointConnector(
      name: 'oceans',
      endpoint: endpoints['oceans']!,
      methodConnectors: {
        'getOceans': _i1.MethodConnector(
          name: 'getOceans',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['oceans'] as _i9.OceansEndpoint).getOceans(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addOceans': _i1.MethodConnector(
          name: 'addOceans',
          params: {
            'oceans': _i1.ParameterDescription(
              name: 'oceans',
              type: _i1.getType<_i36.Oceans>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['oceans'] as _i9.OceansEndpoint).addOceans(
            session,
            params['oceans'],
          ),
        ),
      },
    );
    connectors['organisations'] = _i1.EndpointConnector(
      name: 'organisations',
      endpoint: endpoints['organisations']!,
      methodConnectors: {
        'getOrganisations': _i1.MethodConnector(
          name: 'getOrganisations',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisations'] as _i10.OrganisationsEndpoint)
                  .getOrganisations(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addOrganisations': _i1.MethodConnector(
          name: 'addOrganisations',
          params: {
            'organisations': _i1.ParameterDescription(
              name: 'organisations',
              type: _i1.getType<_i37.Organisations>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisations'] as _i10.OrganisationsEndpoint)
                  .addOrganisations(
            session,
            params['organisations'],
          ),
        ),
      },
    );
    connectors['principalCategories'] = _i1.EndpointConnector(
      name: 'principalCategories',
      endpoint: endpoints['principalCategories']!,
      methodConnectors: {
        'getPCategories': _i1.MethodConnector(
          name: 'getPCategories',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCategories']
                      as _i11.PrincipalCategoriesEndpoint)
                  .getPCategories(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPCategories': _i1.MethodConnector(
          name: 'addPCategories',
          params: {
            'pCategories': _i1.ParameterDescription(
              name: 'pCategories',
              type: _i1.getType<_i38.PrincipalCategories>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCategories']
                      as _i11.PrincipalCategoriesEndpoint)
                  .addPCategories(
            session,
            params['pCategories'],
          ),
        ),
      },
    );
    connectors['principalCatt'] = _i1.EndpointConnector(
      name: 'principalCatt',
      endpoint: endpoints['principalCatt']!,
      methodConnectors: {
        'getPCatt': _i1.MethodConnector(
          name: 'getPCatt',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCatt'] as _i12.PrincipalCattEndpoint)
                  .getPCatt(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPCatt': _i1.MethodConnector(
          name: 'addPCatt',
          params: {
            'pCatt': _i1.ParameterDescription(
              name: 'pCatt',
              type: _i1.getType<_i39.PrincipalCatt>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCatt'] as _i12.PrincipalCattEndpoint)
                  .addPCatt(
            session,
            params['pCatt'],
          ),
        ),
      },
    );
    connectors['principalOrgs'] = _i1.EndpointConnector(
      name: 'principalOrgs',
      endpoint: endpoints['principalOrgs']!,
      methodConnectors: {
        'getPOrgs': _i1.MethodConnector(
          name: 'getPOrgs',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalOrgs'] as _i13.PrincipalOrgsEndpoint)
                  .getPOrgs(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPOrgs': _i1.MethodConnector(
          name: 'addPOrgs',
          params: {
            'pOrgs': _i1.ParameterDescription(
              name: 'pOrgs',
              type: _i1.getType<_i40.PrincipalOrgs>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalOrgs'] as _i13.PrincipalOrgsEndpoint)
                  .addPOrgs(
            session,
            params['pOrgs'],
          ),
        ),
      },
    );
    connectors['principalPatt'] = _i1.EndpointConnector(
      name: 'principalPatt',
      endpoint: endpoints['principalPatt']!,
      methodConnectors: {
        'getPPatt': _i1.MethodConnector(
          name: 'getPPatt',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPatt'] as _i14.PrincipalPattEndpoint)
                  .getPPatt(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPPatt': _i1.MethodConnector(
          name: 'addPPatt',
          params: {
            'pPatt': _i1.ParameterDescription(
              name: 'pPatt',
              type: _i1.getType<_i41.PrincipalPatt>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPatt'] as _i14.PrincipalPattEndpoint)
                  .addPPatt(
            session,
            params['pPatt'],
          ),
        ),
      },
    );
    connectors['principalPeople'] = _i1.EndpointConnector(
      name: 'principalPeople',
      endpoint: endpoints['principalPeople']!,
      methodConnectors: {
        'getPPeople': _i1.MethodConnector(
          name: 'getPPeople',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPeople'] as _i15.PrincipalPeopleEndpoint)
                  .getPPeople(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPPeople': _i1.MethodConnector(
          name: 'addPPeople',
          params: {
            'principalPeople': _i1.ParameterDescription(
              name: 'principalPeople',
              type: _i1.getType<_i42.PrincipalPeople>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPeople'] as _i15.PrincipalPeopleEndpoint)
                  .addPPeople(
            session,
            params['principalPeople'],
          ),
        ),
      },
    );
    connectors['principalPlace'] = _i1.EndpointConnector(
      name: 'principalPlace',
      endpoint: endpoints['principalPlace']!,
      methodConnectors: {
        'getPrincipalPlace': _i1.MethodConnector(
          name: 'getPrincipalPlace',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPlace'] as _i16.PrincipalPlaceEndpoint)
                  .getPrincipalPlace(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalPlace': _i1.MethodConnector(
          name: 'addPrincipalPlace',
          params: {
            'principalPlace': _i1.ParameterDescription(
              name: 'principalPlace',
              type: _i1.getType<_i43.PrincipalPlace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPlace'] as _i16.PrincipalPlaceEndpoint)
                  .addPrincipalPlace(
            session,
            params['principalPlace'],
          ),
        ),
      },
    );
    connectors['principalSeas'] = _i1.EndpointConnector(
      name: 'principalSeas',
      endpoint: endpoints['principalSeas']!,
      methodConnectors: {
        'getPrincipalSeas': _i1.MethodConnector(
          name: 'getPrincipalSeas',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalSeas'] as _i17.PrincipalSeasEndpoint)
                  .getPrincipalSeas(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalSeas': _i1.MethodConnector(
          name: 'addPrincipalSeas',
          params: {
            'principalSeas': _i1.ParameterDescription(
              name: 'principalSeas',
              type: _i1.getType<_i44.PrincipalSeas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalSeas'] as _i17.PrincipalSeasEndpoint)
                  .addPrincipalSeas(
            session,
            params['principalSeas'],
          ),
        ),
      },
    );
    connectors['principalTerms'] = _i1.EndpointConnector(
      name: 'principalTerms',
      endpoint: endpoints['principalTerms']!,
      methodConnectors: {
        'getPTerms': _i1.MethodConnector(
          name: 'getPTerms',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalTerms'] as _i18.PrincipalTermsEndpoint)
                  .getPTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalTerms': _i1.MethodConnector(
          name: 'addPrincipalTerms',
          params: {
            'pTerms': _i1.ParameterDescription(
              name: 'pTerms',
              type: _i1.getType<_i45.PrincipalTerms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalTerms'] as _i18.PrincipalTermsEndpoint)
                  .addPrincipalTerms(
            session,
            params['pTerms'],
          ),
        ),
      },
    );
    connectors['principalUser'] = _i1.EndpointConnector(
      name: 'principalUser',
      endpoint: endpoints['principalUser']!,
      methodConnectors: {
        'getUser': _i1.MethodConnector(
          name: 'getUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalUser'] as _i19.PrincipalUserEndpoint)
                  .getUser(
            session,
            params['userId'],
          ),
        ),
        'addPrincipalUser': _i1.MethodConnector(
          name: 'addPrincipalUser',
          params: {
            'pUser': _i1.ParameterDescription(
              name: 'pUser',
              type: _i1.getType<_i46.PrincipalUser>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalUser'] as _i19.PrincipalUserEndpoint)
                  .addPrincipalUser(
            session,
            params['pUser'],
          ),
        ),
      },
    );
    connectors['pays'] = _i1.EndpointConnector(
      name: 'pays',
      endpoint: endpoints['pays']!,
      methodConnectors: {
        'getPays': _i1.MethodConnector(
          name: 'getPays',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pays'] as _i20.PaysEndpoint).getPays(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPays': _i1.MethodConnector(
          name: 'addPays',
          params: {
            'pays': _i1.ParameterDescription(
              name: 'pays',
              type: _i1.getType<_i47.Pays>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pays'] as _i20.PaysEndpoint).addPays(
            session,
            params['pays'],
          ),
        ),
      },
    );
    connectors['people'] = _i1.EndpointConnector(
      name: 'people',
      endpoint: endpoints['people']!,
      methodConnectors: {
        'getPeople': _i1.MethodConnector(
          name: 'getPeople',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i21.PeopleEndpoint).getPeople(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPeople': _i1.MethodConnector(
          name: 'addPeople',
          params: {
            'people': _i1.ParameterDescription(
              name: 'people',
              type: _i1.getType<_i48.People>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i21.PeopleEndpoint).addPeople(
            session,
            params['people'],
          ),
        ),
      },
    );
    connectors['placeatts'] = _i1.EndpointConnector(
      name: 'placeatts',
      endpoint: endpoints['placeatts']!,
      methodConnectors: {
        'getPlaceATTs': _i1.MethodConnector(
          name: 'getPlaceATTs',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i22.PlaceattsEndpoint).getPlaceATTs(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaceATTs': _i1.MethodConnector(
          name: 'addPlaceATTs',
          params: {
            'placeatts': _i1.ParameterDescription(
              name: 'placeatts',
              type: _i1.getType<_i49.Placeatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i22.PlaceattsEndpoint).addPlaceATTs(
            session,
            params['placeatts'],
          ),
        ),
      },
    );
    connectors['places'] = _i1.EndpointConnector(
      name: 'places',
      endpoint: endpoints['places']!,
      methodConnectors: {
        'getPlaces': _i1.MethodConnector(
          name: 'getPlaces',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i23.PlacesEndpoint).getPlaces(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaces': _i1.MethodConnector(
          name: 'addPlaces',
          params: {
            'places': _i1.ParameterDescription(
              name: 'places',
              type: _i1.getType<_i50.Places>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i23.PlacesEndpoint).addPlaces(
            session,
            params['places'],
          ),
        ),
      },
    );
    connectors['principal'] = _i1.EndpointConnector(
      name: 'principal',
      endpoint: endpoints['principal']!,
      methodConnectors: {
        'addPrincipal': _i1.MethodConnector(
          name: 'addPrincipal',
          params: {
            'principal': _i1.ParameterDescription(
              name: 'principal',
              type: _i1.getType<_i51.Principal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint).addPrincipal(
            session,
            params['principal'],
          ),
        ),
        'getPrincipal': _i1.MethodConnector(
          name: 'getPrincipal',
          params: {
            'keywords': _i1.ParameterDescription(
              name: 'keywords',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint).getPrincipal(
            session,
            keywords: params['keywords'],
          ),
        ),
        'getPrincipalByPeriod': _i1.MethodConnector(
          name: 'getPrincipalByPeriod',
          params: {
            'keywords': _i1.ParameterDescription(
              name: 'keywords',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByPeriod(
            session,
            keywords: params['keywords'],
          ),
        ),
        'getPrincipalByPrecise': _i1.MethodConnector(
          name: 'getPrincipalByPrecise',
          params: {
            'keywords': _i1.ParameterDescription(
              name: 'keywords',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByPrecise(
            session,
            keywords: params['keywords'],
          ),
        ),
        'getPrincipalByCattId': _i1.MethodConnector(
          name: 'getPrincipalByCattId',
          params: {
            'cattIds': _i1.ParameterDescription(
              name: 'cattIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByCattId(
            session,
            cattIds: params['cattIds'],
          ),
        ),
        'getPrincipalByPattId': _i1.MethodConnector(
          name: 'getPrincipalByPattId',
          params: {
            'pattIds': _i1.ParameterDescription(
              name: 'pattIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByPattId(
            session,
            pattIds: params['pattIds'],
          ),
        ),
        'getPrincipalByPersonId': _i1.MethodConnector(
          name: 'getPrincipalByPersonId',
          params: {
            'personIds': _i1.ParameterDescription(
              name: 'personIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByPersonId(
            session,
            personIds: params['personIds'],
          ),
        ),
        'getPrincipalByCInvolvedId': _i1.MethodConnector(
          name: 'getPrincipalByCInvolvedId',
          params: {
            'cInvolvedIds': _i1.ParameterDescription(
              name: 'cInvolvedIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByCInvolvedId(
            session,
            cInvolvedIds: params['cInvolvedIds'],
          ),
        ),
        'getPrincipalByAttInvolvedId': _i1.MethodConnector(
          name: 'getPrincipalByAttInvolvedId',
          params: {
            'attInvolvedIds': _i1.ParameterDescription(
              name: 'attInvolvedIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByAttInvolvedId(
            session,
            attInvolvedIds: params['attInvolvedIds'],
          ),
        ),
        'getPrincipalByStarsInvolvedId': _i1.MethodConnector(
          name: 'getPrincipalByStarsInvolvedId',
          params: {
            'starInvolvedIds': _i1.ParameterDescription(
              name: 'starInvolvedIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByStarsInvolvedId(
            session,
            starInvolvedIds: params['starInvolvedIds'],
          ),
        ),
        'getPrincipalByOrgsId': _i1.MethodConnector(
          name: 'getPrincipalByOrgsId',
          params: {
            'orgIds': _i1.ParameterDescription(
              name: 'orgIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByOrgsId(
            session,
            orgIds: params['orgIds'],
          ),
        ),
        'getPrincipalByCategoryId': _i1.MethodConnector(
          name: 'getPrincipalByCategoryId',
          params: {
            'categoryIds': _i1.ParameterDescription(
              name: 'categoryIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByCategoryId(
            session,
            categoryIds: params['categoryIds'],
          ),
        ),
        'getPrincipalByTermId': _i1.MethodConnector(
          name: 'getPrincipalByTermId',
          params: {
            'termIds': _i1.ParameterDescription(
              name: 'termIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i24.PrincipalEndpoint)
                  .getPrincipalByTermId(
            session,
            termIds: params['termIds'],
          ),
        ),
      },
    );
    connectors['seas'] = _i1.EndpointConnector(
      name: 'seas',
      endpoint: endpoints['seas']!,
      methodConnectors: {
        'getSeas': _i1.MethodConnector(
          name: 'getSeas',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['seas'] as _i25.SeasEndpoint).getSeas(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addSeas': _i1.MethodConnector(
          name: 'addSeas',
          params: {
            'seas': _i1.ParameterDescription(
              name: 'seas',
              type: _i1.getType<_i52.Seas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['seas'] as _i25.SeasEndpoint).addSeas(
            session,
            params['seas'],
          ),
        ),
      },
    );
    connectors['stars'] = _i1.EndpointConnector(
      name: 'stars',
      endpoint: endpoints['stars']!,
      methodConnectors: {
        'getStars': _i1.MethodConnector(
          name: 'getStars',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stars'] as _i26.StarsEndpoint).getStars(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addStars': _i1.MethodConnector(
          name: 'addStars',
          params: {
            'stars': _i1.ParameterDescription(
              name: 'stars',
              type: _i1.getType<_i53.Stars>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stars'] as _i26.StarsEndpoint).addStars(
            session,
            params['stars'],
          ),
        ),
      },
    );
    connectors['starsInvolved'] = _i1.EndpointConnector(
      name: 'starsInvolved',
      endpoint: endpoints['starsInvolved']!,
      methodConnectors: {
        'getStarsInvolved': _i1.MethodConnector(
          name: 'getStarsInvolved',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['starsInvolved'] as _i27.StarsInvolvedEndpoint)
                  .getStarsInvolved(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addStarsInvolved': _i1.MethodConnector(
          name: 'addStarsInvolved',
          params: {
            'starsInvolved': _i1.ParameterDescription(
              name: 'starsInvolved',
              type: _i1.getType<_i54.StarsInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['starsInvolved'] as _i27.StarsInvolvedEndpoint)
                  .addStarsInvolved(
            session,
            params['starsInvolved'],
          ),
        ),
      },
    );
    connectors['terms'] = _i1.EndpointConnector(
      name: 'terms',
      endpoint: endpoints['terms']!,
      methodConnectors: {
        'getTerms': _i1.MethodConnector(
          name: 'getTerms',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i28.TermsEndpoint).getTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addTerms': _i1.MethodConnector(
          name: 'addTerms',
          params: {
            'terms': _i1.ParameterDescription(
              name: 'terms',
              type: _i1.getType<_i55.Terms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i28.TermsEndpoint).addTerms(
            session,
            params['terms'],
          ),
        ),
      },
    );
    connectors['universe'] = _i1.EndpointConnector(
      name: 'universe',
      endpoint: endpoints['universe']!,
      methodConnectors: {
        'getUniverse': _i1.MethodConnector(
          name: 'getUniverse',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['universe'] as _i29.UniverseEndpoint).getUniverse(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addUniverse': _i1.MethodConnector(
          name: 'addUniverse',
          params: {
            'universe': _i1.ParameterDescription(
              name: 'universe',
              type: _i1.getType<_i56.Universe>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['universe'] as _i29.UniverseEndpoint).addUniverse(
            session,
            params['universe'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i57.Endpoints()..initializeEndpoints(server);
  }
}
