/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/c_involved_endpoint.dart' as _i2;
import '../endpoints/categories_endpoint.dart' as _i3;
import '../endpoints/countryatts_endpoint.dart' as _i4;
import '../endpoints/days_endpoint.dart' as _i5;
import '../endpoints/example_endpoint.dart' as _i6;
import '../endpoints/lieux_endpoint.dart' as _i7;
import '../endpoints/localdates_endpoint.dart' as _i8;
import '../endpoints/months_endpoint.dart' as _i9;
import '../endpoints/organisations_endpoint.dart' as _i10;
import '../endpoints/p_catt_endpoint.dart' as _i11;
import '../endpoints/p_place_endpoint.dart' as _i12;
import '../endpoints/p_seas_endpoint.dart' as _i13;
import '../endpoints/pays_endpoint.dart' as _i14;
import '../endpoints/people_endpoint.dart' as _i15;
import '../endpoints/placeatts_endpoint.dart' as _i16;
import '../endpoints/places_endpoint.dart' as _i17;
import '../endpoints/principal_endpoint.dart' as _i18;
import '../endpoints/seas_endpoint.dart' as _i19;
import '../endpoints/term_endpoint.dart' as _i20;
import 'package:acorn_server/src/generated/c_involved.dart' as _i21;
import 'package:acorn_server/src/generated/categories.dart' as _i22;
import 'package:acorn_server/src/generated/countryatts.dart' as _i23;
import 'package:acorn_server/src/generated/days.dart' as _i24;
import 'package:acorn_server/src/generated/lieux.dart' as _i25;
import 'package:acorn_server/src/generated/localdates.dart' as _i26;
import 'package:acorn_server/src/generated/months.dart' as _i27;
import 'package:acorn_server/src/generated/organisations.dart' as _i28;
import 'package:acorn_server/src/generated/p_catt.dart' as _i29;
import 'package:acorn_server/src/generated/p_place.dart' as _i30;
import 'package:acorn_server/src/generated/p_seas.dart' as _i31;
import 'package:acorn_server/src/generated/pays.dart' as _i32;
import 'package:acorn_server/src/generated/people.dart' as _i33;
import 'package:acorn_server/src/generated/placeatts.dart' as _i34;
import 'package:acorn_server/src/generated/places.dart' as _i35;
import 'package:acorn_server/src/generated/principal.dart' as _i36;
import 'package:acorn_server/src/generated/seas.dart' as _i37;
import 'package:acorn_server/src/generated/terms.dart' as _i38;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'countryInvolved': _i2.CountryInvolvedEndpoint()
        ..initialize(
          server,
          'countryInvolved',
          null,
        ),
      'categories': _i3.CategoriesEndpoint()
        ..initialize(
          server,
          'categories',
          null,
        ),
      'countryatts': _i4.CountryattsEndpoint()
        ..initialize(
          server,
          'countryatts',
          null,
        ),
      'days': _i5.DaysEndpoint()
        ..initialize(
          server,
          'days',
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
      'months': _i9.MonthsEndpoint()
        ..initialize(
          server,
          'months',
          null,
        ),
      'organisations': _i10.OrganisationsEndpoint()
        ..initialize(
          server,
          'organisations',
          null,
        ),
      'principalCatt': _i11.PrincipalCattEndpoint()
        ..initialize(
          server,
          'principalCatt',
          null,
        ),
      'principalPlace': _i12.PrincipalPlaceEndpoint()
        ..initialize(
          server,
          'principalPlace',
          null,
        ),
      'principalSeas': _i13.PrincipalSeasEndpoint()
        ..initialize(
          server,
          'principalSeas',
          null,
        ),
      'pays': _i14.PaysEndpoint()
        ..initialize(
          server,
          'pays',
          null,
        ),
      'people': _i15.PeopleEndpoint()
        ..initialize(
          server,
          'people',
          null,
        ),
      'placeatts': _i16.PlaceattsEndpoint()
        ..initialize(
          server,
          'placeatts',
          null,
        ),
      'places': _i17.PlacesEndpoint()
        ..initialize(
          server,
          'places',
          null,
        ),
      'principal': _i18.PrincipalEndpoint()
        ..initialize(
          server,
          'principal',
          null,
        ),
      'seas': _i19.SeasEndpoint()
        ..initialize(
          server,
          'seas',
          null,
        ),
      'terms': _i20.TermsEndpoint()
        ..initialize(
          server,
          'terms',
          null,
        ),
    };
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
              (endpoints['countryInvolved'] as _i2.CountryInvolvedEndpoint)
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
              type: _i1.getType<_i21.CountryInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryInvolved'] as _i2.CountryInvolvedEndpoint)
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
              (endpoints['categories'] as _i3.CategoriesEndpoint).getCategories(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addCategories': _i1.MethodConnector(
          name: 'addCategories',
          params: {
            'categories': _i1.ParameterDescription(
              name: 'categories',
              type: _i1.getType<_i22.Categories>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['categories'] as _i3.CategoriesEndpoint).addCategories(
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
              (endpoints['countryatts'] as _i4.CountryattsEndpoint)
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
              type: _i1.getType<_i23.Countryatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i4.CountryattsEndpoint)
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
              (endpoints['days'] as _i5.DaysEndpoint).getDays(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addDays': _i1.MethodConnector(
          name: 'addDays',
          params: {
            'days': _i1.ParameterDescription(
              name: 'days',
              type: _i1.getType<_i24.Days>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['days'] as _i5.DaysEndpoint).addDays(
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
              type: _i1.getType<_i25.Lieux>(),
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
              type: _i1.getType<_i26.LocalDates>(),
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
              (endpoints['months'] as _i9.MonthsEndpoint).getMonths(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addMonths': _i1.MethodConnector(
          name: 'addMonths',
          params: {
            'months': _i1.ParameterDescription(
              name: 'months',
              type: _i1.getType<_i27.Months>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['months'] as _i9.MonthsEndpoint).addMonths(
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
              type: _i1.getType<_i28.Organisations>(),
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
              (endpoints['principalCatt'] as _i11.PrincipalCattEndpoint)
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
              type: _i1.getType<_i29.PrincipalCatt>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCatt'] as _i11.PrincipalCattEndpoint)
                  .addPCatt(
            session,
            params['pCatt'],
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
              (endpoints['principalPlace'] as _i12.PrincipalPlaceEndpoint)
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
              type: _i1.getType<_i30.PrincipalPlace>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalPlace'] as _i12.PrincipalPlaceEndpoint)
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
              (endpoints['principalSeas'] as _i13.PrincipalSeasEndpoint)
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
              type: _i1.getType<_i31.PrincipalSeas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalSeas'] as _i13.PrincipalSeasEndpoint)
                  .addPrincipalSeas(
            session,
            params['principalSeas'],
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
              (endpoints['pays'] as _i14.PaysEndpoint).getPays(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPays': _i1.MethodConnector(
          name: 'addPays',
          params: {
            'pays': _i1.ParameterDescription(
              name: 'pays',
              type: _i1.getType<_i32.Pays>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pays'] as _i14.PaysEndpoint).addPays(
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
              (endpoints['people'] as _i15.PeopleEndpoint).getPeople(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPeople': _i1.MethodConnector(
          name: 'addPeople',
          params: {
            'people': _i1.ParameterDescription(
              name: 'people',
              type: _i1.getType<_i33.People>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i15.PeopleEndpoint).addPeople(
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
              (endpoints['placeatts'] as _i16.PlaceattsEndpoint).getPlaceATTs(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaceATTs': _i1.MethodConnector(
          name: 'addPlaceATTs',
          params: {
            'placeatts': _i1.ParameterDescription(
              name: 'placeatts',
              type: _i1.getType<_i34.Placeatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i16.PlaceattsEndpoint).addPlaceATTs(
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
              (endpoints['places'] as _i17.PlacesEndpoint).getPlaces(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaces': _i1.MethodConnector(
          name: 'addPlaces',
          params: {
            'places': _i1.ParameterDescription(
              name: 'places',
              type: _i1.getType<_i35.Places>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i17.PlacesEndpoint).addPlaces(
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
              type: _i1.getType<_i36.Principal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i18.PrincipalEndpoint).addPrincipal(
            session,
            params['principal'],
          ),
        ),
        'getPrincipal': _i1.MethodConnector(
          name: 'getPrincipal',
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
              (endpoints['principal'] as _i18.PrincipalEndpoint).getPrincipal(
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
              (endpoints['seas'] as _i19.SeasEndpoint).getSeas(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addSeas': _i1.MethodConnector(
          name: 'addSeas',
          params: {
            'seas': _i1.ParameterDescription(
              name: 'seas',
              type: _i1.getType<_i37.Seas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['seas'] as _i19.SeasEndpoint).addSeas(
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
              (endpoints['terms'] as _i20.TermsEndpoint).getTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addTerms': _i1.MethodConnector(
          name: 'addTerms',
          params: {
            'terms': _i1.ParameterDescription(
              name: 'terms',
              type: _i1.getType<_i38.Terms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i20.TermsEndpoint).addTerms(
            session,
            params['terms'],
          ),
        ),
      },
    );
  }
}
