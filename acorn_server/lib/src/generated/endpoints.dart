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
import '../endpoints/days_endpoint.dart' as _i6;
import '../endpoints/example_endpoint.dart' as _i7;
import '../endpoints/lieux_endpoint.dart' as _i8;
import '../endpoints/localdates_endpoint.dart' as _i9;
import '../endpoints/months_endpoint.dart' as _i10;
import '../endpoints/organisations_endpoint.dart' as _i11;
import '../endpoints/p_categories_endpoint.dart' as _i12;
import '../endpoints/p_catt_endpoint.dart' as _i13;
import '../endpoints/p_orgs_endpoint.dart' as _i14;
import '../endpoints/p_patt_endpoint.dart' as _i15;
import '../endpoints/p_people_endpoint.dart' as _i16;
import '../endpoints/p_place_endpoint.dart' as _i17;
import '../endpoints/p_seas_endpoint.dart' as _i18;
import '../endpoints/p_terms_endpoint.dart' as _i19;
import '../endpoints/pays_endpoint.dart' as _i20;
import '../endpoints/people_endpoint.dart' as _i21;
import '../endpoints/placeatts_endpoint.dart' as _i22;
import '../endpoints/places_endpoint.dart' as _i23;
import '../endpoints/principal_endpoint.dart' as _i24;
import '../endpoints/seas_endpoint.dart' as _i25;
import '../endpoints/term_endpoint.dart' as _i26;
import 'package:acorn_server/src/generated/att_involved.dart' as _i27;
import 'package:acorn_server/src/generated/c_involved.dart' as _i28;
import 'package:acorn_server/src/generated/categories.dart' as _i29;
import 'package:acorn_server/src/generated/countryatts.dart' as _i30;
import 'package:acorn_server/src/generated/days.dart' as _i31;
import 'package:acorn_server/src/generated/lieux.dart' as _i32;
import 'package:acorn_server/src/generated/localdates.dart' as _i33;
import 'package:acorn_server/src/generated/months.dart' as _i34;
import 'package:acorn_server/src/generated/organisations.dart' as _i35;
import 'package:acorn_server/src/generated/p_categories.dart' as _i36;
import 'package:acorn_server/src/generated/p_catt.dart' as _i37;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i38;
import 'package:acorn_server/src/generated/p_patt.dart' as _i39;
import 'package:acorn_server/src/generated/p_people.dart' as _i40;
import 'package:acorn_server/src/generated/p_place.dart' as _i41;
import 'package:acorn_server/src/generated/p_seas.dart' as _i42;
import 'package:acorn_server/src/generated/p_terms.dart' as _i43;
import 'package:acorn_server/src/generated/pays.dart' as _i44;
import 'package:acorn_server/src/generated/people.dart' as _i45;
import 'package:acorn_server/src/generated/placeatts.dart' as _i46;
import 'package:acorn_server/src/generated/places.dart' as _i47;
import 'package:acorn_server/src/generated/principal.dart' as _i48;
import 'package:acorn_server/src/generated/seas.dart' as _i49;
import 'package:acorn_server/src/generated/terms.dart' as _i50;

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
      'days': _i6.DaysEndpoint()
        ..initialize(
          server,
          'days',
          null,
        ),
      'example': _i7.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'lieux': _i8.LieuxEndpoint()
        ..initialize(
          server,
          'lieux',
          null,
        ),
      'localDates': _i9.LocalDatesEndpoint()
        ..initialize(
          server,
          'localDates',
          null,
        ),
      'months': _i10.MonthsEndpoint()
        ..initialize(
          server,
          'months',
          null,
        ),
      'organisations': _i11.OrganisationsEndpoint()
        ..initialize(
          server,
          'organisations',
          null,
        ),
      'principalCategories': _i12.PrincipalCategoriesEndpoint()
        ..initialize(
          server,
          'principalCategories',
          null,
        ),
      'principalCatt': _i13.PrincipalCattEndpoint()
        ..initialize(
          server,
          'principalCatt',
          null,
        ),
      'principalOrgs': _i14.PrincipalOrgsEndpoint()
        ..initialize(
          server,
          'principalOrgs',
          null,
        ),
      'principalPatt': _i15.PrincipalPattEndpoint()
        ..initialize(
          server,
          'principalPatt',
          null,
        ),
      'principalPeople': _i16.PrincipalPeopleEndpoint()
        ..initialize(
          server,
          'principalPeople',
          null,
        ),
      'principalPlace': _i17.PrincipalPlaceEndpoint()
        ..initialize(
          server,
          'principalPlace',
          null,
        ),
      'principalSeas': _i18.PrincipalSeasEndpoint()
        ..initialize(
          server,
          'principalSeas',
          null,
        ),
      'principalTerms': _i19.PrincipalTermsEndpoint()
        ..initialize(
          server,
          'principalTerms',
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
      'terms': _i26.TermsEndpoint()
        ..initialize(
          server,
          'terms',
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
              type: _i1.getType<_i27.AttsInvolved>(),
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
        'getCountryInvolved': _i1.MethodConnector(
          name: 'getCountryInvolved',
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
                  .getCountryInvolved(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addCountryInvolved': _i1.MethodConnector(
          name: 'addCountryInvolved',
          params: {
            'countryInvolved': _i1.ParameterDescription(
              name: 'countryInvolved',
              type: _i1.getType<_i28.CountryInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryInvolved'] as _i3.CountryInvolvedEndpoint)
                  .addCountryInvolved(
            session,
            params['countryInvolved'],
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
              type: _i1.getType<_i29.Categories>(),
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
              type: _i1.getType<_i30.Countryatts>(),
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
    connectors['days'] = _i1.EndpointConnector(
      name: 'days',
      endpoint: endpoints['days']!,
      methodConnectors: {
        'getDays': _i1.MethodConnector(
          name: 'getDays',
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
              (endpoints['days'] as _i6.DaysEndpoint).getDays(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addDays': _i1.MethodConnector(
          name: 'addDays',
          params: {
            'days': _i1.ParameterDescription(
              name: 'days',
              type: _i1.getType<_i31.Days>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['days'] as _i6.DaysEndpoint).addDays(
            session,
            params['days'],
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
              (endpoints['example'] as _i7.ExampleEndpoint).hello(
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
              (endpoints['lieux'] as _i8.LieuxEndpoint).getLieux(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addLieux': _i1.MethodConnector(
          name: 'addLieux',
          params: {
            'lieux': _i1.ParameterDescription(
              name: 'lieux',
              type: _i1.getType<_i32.Lieux>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lieux'] as _i8.LieuxEndpoint).addLieux(
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
              (endpoints['localDates'] as _i9.LocalDatesEndpoint).getLocalDates(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addLocalDates': _i1.MethodConnector(
          name: 'addLocalDates',
          params: {
            'localdates': _i1.ParameterDescription(
              name: 'localdates',
              type: _i1.getType<_i33.LocalDates>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['localDates'] as _i9.LocalDatesEndpoint).addLocalDates(
            session,
            params['localdates'],
          ),
        ),
      },
    );
    connectors['months'] = _i1.EndpointConnector(
      name: 'months',
      endpoint: endpoints['months']!,
      methodConnectors: {
        'getMonths': _i1.MethodConnector(
          name: 'getMonths',
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
              (endpoints['months'] as _i10.MonthsEndpoint).getMonths(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addMonths': _i1.MethodConnector(
          name: 'addMonths',
          params: {
            'months': _i1.ParameterDescription(
              name: 'months',
              type: _i1.getType<_i34.Months>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['months'] as _i10.MonthsEndpoint).addMonths(
            session,
            params['months'],
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
              (endpoints['organisations'] as _i11.OrganisationsEndpoint)
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
              type: _i1.getType<_i35.Organisations>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisations'] as _i11.OrganisationsEndpoint)
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
        'getPrincipalCategories': _i1.MethodConnector(
          name: 'getPrincipalCategories',
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
                      as _i12.PrincipalCategoriesEndpoint)
                  .getPrincipalCategories(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalCategories': _i1.MethodConnector(
          name: 'addPrincipalCategories',
          params: {
            'principalCategories': _i1.ParameterDescription(
              name: 'principalCategories',
              type: _i1.getType<_i36.PrincipalCategories>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCategories']
                      as _i12.PrincipalCategoriesEndpoint)
                  .addPrincipalCategories(
            session,
            params['principalCategories'],
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
              (endpoints['principalCatt'] as _i13.PrincipalCattEndpoint)
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
              type: _i1.getType<_i37.PrincipalCatt>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCatt'] as _i13.PrincipalCattEndpoint)
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
        'getPrincipalOrganisations': _i1.MethodConnector(
          name: 'getPrincipalOrganisations',
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
              (endpoints['principalOrgs'] as _i14.PrincipalOrgsEndpoint)
                  .getPrincipalOrganisations(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalOrgs': _i1.MethodConnector(
          name: 'addPrincipalOrgs',
          params: {
            'principalOrgs': _i1.ParameterDescription(
              name: 'principalOrgs',
              type: _i1.getType<_i38.PrincipalOrgs>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalOrgs'] as _i14.PrincipalOrgsEndpoint)
                  .addPrincipalOrgs(
            session,
            params['principalOrgs'],
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
              (endpoints['principalPatt'] as _i15.PrincipalPattEndpoint)
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
              type: _i1.getType<_i39.PrincipalPatt>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPatt'] as _i15.PrincipalPattEndpoint)
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
        'getPrincipalPeople': _i1.MethodConnector(
          name: 'getPrincipalPeople',
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
              (endpoints['principalPeople'] as _i16.PrincipalPeopleEndpoint)
                  .getPrincipalPeople(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalPeople': _i1.MethodConnector(
          name: 'addPrincipalPeople',
          params: {
            'principalPeople': _i1.ParameterDescription(
              name: 'principalPeople',
              type: _i1.getType<_i40.PrincipalPeople>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPeople'] as _i16.PrincipalPeopleEndpoint)
                  .addPrincipalPeople(
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
              (endpoints['principalPlace'] as _i17.PrincipalPlaceEndpoint)
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
              type: _i1.getType<_i41.PrincipalPlace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPlace'] as _i17.PrincipalPlaceEndpoint)
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
              (endpoints['principalSeas'] as _i18.PrincipalSeasEndpoint)
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
              type: _i1.getType<_i42.PrincipalSeas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalSeas'] as _i18.PrincipalSeasEndpoint)
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
        'getPrincipalTerms': _i1.MethodConnector(
          name: 'getPrincipalTerms',
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
              (endpoints['principalTerms'] as _i19.PrincipalTermsEndpoint)
                  .getPrincipalTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPrincipalTerms': _i1.MethodConnector(
          name: 'addPrincipalTerms',
          params: {
            'principalTerms': _i1.ParameterDescription(
              name: 'principalTerms',
              type: _i1.getType<_i43.PrincipalTerms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalTerms'] as _i19.PrincipalTermsEndpoint)
                  .addPrincipalTerms(
            session,
            params['principalTerms'],
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
              type: _i1.getType<_i44.Pays>(),
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
              type: _i1.getType<_i45.People>(),
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
              type: _i1.getType<_i46.Placeatts>(),
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
              type: _i1.getType<_i47.Places>(),
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
              type: _i1.getType<_i48.Principal>(),
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
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
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
            keyword: params['keyword'],
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
              type: _i1.getType<_i49.Seas>(),
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
              (endpoints['terms'] as _i26.TermsEndpoint).getTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addTerms': _i1.MethodConnector(
          name: 'addTerms',
          params: {
            'terms': _i1.ParameterDescription(
              name: 'terms',
              type: _i1.getType<_i50.Terms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i26.TermsEndpoint).addTerms(
            session,
            params['terms'],
          ),
        ),
      },
    );
  }
}
