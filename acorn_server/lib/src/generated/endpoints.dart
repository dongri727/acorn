/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/categories_endpoint.dart' as _i2;
import '../endpoints/countryatts_endpoint.dart' as _i3;
import '../endpoints/example_endpoint.dart' as _i4;
import '../endpoints/lieux_endpoint.dart' as _i5;
import '../endpoints/months_endpoint.dart' as _i6;
import '../endpoints/organisations_endpoint.dart' as _i7;
import '../endpoints/people_endpoint.dart' as _i8;
import '../endpoints/placeatts_endpoint.dart' as _i9;
import '../endpoints/places_endpoint.dart' as _i10;
import '../endpoints/principal_endpoint.dart' as _i11;
import '../endpoints/term_endpoint.dart' as _i12;
import 'package:acorn_server/src/generated/categories.dart' as _i13;
import 'package:acorn_server/src/generated/countryatts.dart' as _i14;
import 'package:acorn_server/src/generated/lieux.dart' as _i15;
import 'package:acorn_server/src/generated/months.dart' as _i16;
import 'package:acorn_server/src/generated/organisations.dart' as _i17;
import 'package:acorn_server/src/generated/people.dart' as _i18;
import 'package:acorn_server/src/generated/placeatts.dart' as _i19;
import 'package:acorn_server/src/generated/places.dart' as _i20;
import 'package:acorn_server/src/generated/principal.dart' as _i21;
import 'package:acorn_server/src/generated/terms.dart' as _i22;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'categories': _i2.CategoriesEndpoint()
        ..initialize(
          server,
          'categories',
          null,
        ),
      'countryatts': _i3.CountryattsEndpoint()
        ..initialize(
          server,
          'countryatts',
          null,
        ),
      'example': _i4.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'lieux': _i5.LieuxEndpoint()
        ..initialize(
          server,
          'lieux',
          null,
        ),
      'months': _i6.MonthsEndpoint()
        ..initialize(
          server,
          'months',
          null,
        ),
      'organisations': _i7.OrganisationsEndpoint()
        ..initialize(
          server,
          'organisations',
          null,
        ),
      'people': _i8.PeopleEndpoint()
        ..initialize(
          server,
          'people',
          null,
        ),
      'placeatts': _i9.PlaceattsEndpoint()
        ..initialize(
          server,
          'placeatts',
          null,
        ),
      'places': _i10.PlacesEndpoint()
        ..initialize(
          server,
          'places',
          null,
        ),
      'principal': _i11.PrincipalEndpoint()
        ..initialize(
          server,
          'principal',
          null,
        ),
      'terms': _i12.TermsEndpoint()
        ..initialize(
          server,
          'terms',
          null,
        ),
    };
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
              (endpoints['categories'] as _i2.CategoriesEndpoint).getCategories(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addCategories': _i1.MethodConnector(
          name: 'addCategories',
          params: {
            'categories': _i1.ParameterDescription(
              name: 'categories',
              type: _i1.getType<_i13.Categories>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['categories'] as _i2.CategoriesEndpoint).addCategories(
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
              (endpoints['countryatts'] as _i3.CountryattsEndpoint)
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
              type: _i1.getType<_i14.Countryatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i3.CountryattsEndpoint)
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
              (endpoints['example'] as _i4.ExampleEndpoint).hello(
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
              (endpoints['lieux'] as _i5.LieuxEndpoint).getLieux(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addLieux': _i1.MethodConnector(
          name: 'addLieux',
          params: {
            'lieux': _i1.ParameterDescription(
              name: 'lieux',
              type: _i1.getType<_i15.Lieux>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['lieux'] as _i5.LieuxEndpoint).addLieux(
            session,
            params['lieux'],
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
              (endpoints['months'] as _i6.MonthsEndpoint).getMonths(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addMonths': _i1.MethodConnector(
          name: 'addMonths',
          params: {
            'months': _i1.ParameterDescription(
              name: 'months',
              type: _i1.getType<_i16.Months>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['months'] as _i6.MonthsEndpoint).addMonths(
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
              (endpoints['organisations'] as _i7.OrganisationsEndpoint)
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
              type: _i1.getType<_i17.Organisations>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisations'] as _i7.OrganisationsEndpoint)
                  .addOrganisations(
            session,
            params['organisations'],
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
              (endpoints['people'] as _i8.PeopleEndpoint).getPeople(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPeople': _i1.MethodConnector(
          name: 'addPeople',
          params: {
            'people': _i1.ParameterDescription(
              name: 'people',
              type: _i1.getType<_i18.People>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i8.PeopleEndpoint).addPeople(
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
              (endpoints['placeatts'] as _i9.PlaceattsEndpoint).getPlaceATTs(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaceATTs': _i1.MethodConnector(
          name: 'addPlaceATTs',
          params: {
            'placeatts': _i1.ParameterDescription(
              name: 'placeatts',
              type: _i1.getType<_i19.Placeatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i9.PlaceattsEndpoint).addPlaceATTs(
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
              (endpoints['places'] as _i10.PlacesEndpoint).getPlaces(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaces': _i1.MethodConnector(
          name: 'addPlaces',
          params: {
            'places': _i1.ParameterDescription(
              name: 'places',
              type: _i1.getType<_i20.Places>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i10.PlacesEndpoint).addPlaces(
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
              type: _i1.getType<_i21.Principal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i11.PrincipalEndpoint).addPrincipal(
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
              (endpoints['principal'] as _i11.PrincipalEndpoint).getPrincipal(
            session,
            keyword: params['keyword'],
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
              (endpoints['terms'] as _i12.TermsEndpoint).getTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addTerms': _i1.MethodConnector(
          name: 'addTerms',
          params: {
            'terms': _i1.ParameterDescription(
              name: 'terms',
              type: _i1.getType<_i22.Terms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i12.TermsEndpoint).addTerms(
            session,
            params['terms'],
          ),
        ),
      },
    );
  }
}
