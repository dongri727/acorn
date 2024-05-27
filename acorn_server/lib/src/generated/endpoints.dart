/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/c_involved_endpoint.dart' as _i2;
import '../endpoints/categories_endpoint.dart' as _i3;
import '../endpoints/catts_involved_endpoint.dart' as _i4;
import '../endpoints/countryatts_endpoint.dart' as _i5;
import '../endpoints/detail_endpoint.dart' as _i6;
import '../endpoints/oceans_endpoint.dart' as _i7;
import '../endpoints/organisations_endpoint.dart' as _i8;
import '../endpoints/p_categories_endpoint.dart' as _i9;
import '../endpoints/p_catt_endpoint.dart' as _i10;
import '../endpoints/p_detail_endpoint.dart' as _i11;
import '../endpoints/p_involved_endpoint.dart' as _i12;
import '../endpoints/p_orgs_endpoint.dart' as _i13;
import '../endpoints/p_patt_endpoint.dart' as _i14;
import '../endpoints/p_people_endpoint.dart' as _i15;
import '../endpoints/p_terms_endpoint.dart' as _i16;
import '../endpoints/p_user_endpoint.dart' as _i17;
import '../endpoints/patt_involved_endpoint.dart' as _i18;
import '../endpoints/pays_endpoint.dart' as _i19;
import '../endpoints/people_endpoint.dart' as _i20;
import '../endpoints/placeatts_endpoint.dart' as _i21;
import '../endpoints/places_endpoint.dart' as _i22;
import '../endpoints/principal_endpoint.dart' as _i23;
import '../endpoints/seas_endpoint.dart' as _i24;
import '../endpoints/stars_endpoint.dart' as _i25;
import '../endpoints/stars_involved_endpoint.dart' as _i26;
import '../endpoints/term_endpoint.dart' as _i27;
import '../endpoints/universe_endpoint.dart' as _i28;
import '../endpoints/with_globe_endpoint.dart' as _i29;
import '../endpoints/with_map_endpoint.dart' as _i30;
import 'package:acorn_server/src/generated/c_involved.dart' as _i31;
import 'package:acorn_server/src/generated/categories.dart' as _i32;
import 'package:acorn_server/src/generated/catts_involved.dart' as _i33;
import 'package:acorn_server/src/generated/countryatts.dart' as _i34;
import 'package:acorn_server/src/generated/detail.dart' as _i35;
import 'package:acorn_server/src/generated/oceans.dart' as _i36;
import 'package:acorn_server/src/generated/organisations.dart' as _i37;
import 'package:acorn_server/src/generated/p_categories.dart' as _i38;
import 'package:acorn_server/src/generated/p_catt.dart' as _i39;
import 'package:acorn_server/src/generated/p_detail.dart' as _i40;
import 'package:acorn_server/src/generated/p_involved.dart' as _i41;
import 'package:acorn_server/src/generated/p_orgs.dart' as _i42;
import 'package:acorn_server/src/generated/p_patt.dart' as _i43;
import 'package:acorn_server/src/generated/p_people.dart' as _i44;
import 'package:acorn_server/src/generated/p_terms.dart' as _i45;
import 'package:acorn_server/src/generated/p-user.dart' as _i46;
import 'package:acorn_server/src/generated/patts_involved.dart' as _i47;
import 'package:acorn_server/src/generated/pays.dart' as _i48;
import 'package:acorn_server/src/generated/people.dart' as _i49;
import 'package:acorn_server/src/generated/placeatts.dart' as _i50;
import 'package:acorn_server/src/generated/places.dart' as _i51;
import 'package:acorn_server/src/generated/principal.dart' as _i52;
import 'package:acorn_server/src/generated/seas.dart' as _i53;
import 'package:acorn_server/src/generated/stars.dart' as _i54;
import 'package:acorn_server/src/generated/stars_involved.dart' as _i55;
import 'package:acorn_server/src/generated/terms.dart' as _i56;
import 'package:acorn_server/src/generated/universe.dart' as _i57;
import 'package:acorn_server/src/generated/with_globe.dart' as _i58;
import 'package:acorn_server/src/generated/with_map.dart' as _i59;
import 'package:serverpod_auth_server/module.dart' as _i60;

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
      'cattsInvolved': _i4.CattsInvolvedEndpoint()
        ..initialize(
          server,
          'cattsInvolved',
          null,
        ),
      'countryatts': _i5.CountryattsEndpoint()
        ..initialize(
          server,
          'countryatts',
          null,
        ),
      'detail': _i6.DetailEndpoint()
        ..initialize(
          server,
          'detail',
          null,
        ),
      'oceans': _i7.OceansEndpoint()
        ..initialize(
          server,
          'oceans',
          null,
        ),
      'organisations': _i8.OrganisationsEndpoint()
        ..initialize(
          server,
          'organisations',
          null,
        ),
      'principalCategories': _i9.PrincipalCategoriesEndpoint()
        ..initialize(
          server,
          'principalCategories',
          null,
        ),
      'principalCatt': _i10.PrincipalCattEndpoint()
        ..initialize(
          server,
          'principalCatt',
          null,
        ),
      'principalDetail': _i11.PrincipalDetailEndpoint()
        ..initialize(
          server,
          'principalDetail',
          null,
        ),
      'placeInvolved': _i12.PlaceInvolvedEndpoint()
        ..initialize(
          server,
          'placeInvolved',
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
      'principalTerms': _i16.PrincipalTermsEndpoint()
        ..initialize(
          server,
          'principalTerms',
          null,
        ),
      'principalUser': _i17.PrincipalUserEndpoint()
        ..initialize(
          server,
          'principalUser',
          null,
        ),
      'pattInvolved': _i18.PattInvolvedEndpoint()
        ..initialize(
          server,
          'pattInvolved',
          null,
        ),
      'pays': _i19.PaysEndpoint()
        ..initialize(
          server,
          'pays',
          null,
        ),
      'people': _i20.PeopleEndpoint()
        ..initialize(
          server,
          'people',
          null,
        ),
      'placeatts': _i21.PlaceattsEndpoint()
        ..initialize(
          server,
          'placeatts',
          null,
        ),
      'places': _i22.PlacesEndpoint()
        ..initialize(
          server,
          'places',
          null,
        ),
      'principal': _i23.PrincipalEndpoint()
        ..initialize(
          server,
          'principal',
          null,
        ),
      'seas': _i24.SeasEndpoint()
        ..initialize(
          server,
          'seas',
          null,
        ),
      'stars': _i25.StarsEndpoint()
        ..initialize(
          server,
          'stars',
          null,
        ),
      'starsInvolved': _i26.StarsInvolvedEndpoint()
        ..initialize(
          server,
          'starsInvolved',
          null,
        ),
      'terms': _i27.TermsEndpoint()
        ..initialize(
          server,
          'terms',
          null,
        ),
      'universe': _i28.UniverseEndpoint()
        ..initialize(
          server,
          'universe',
          null,
        ),
      'withGlobe': _i29.WithGlobeEndpoint()
        ..initialize(
          server,
          'withGlobe',
          null,
        ),
      'withMap': _i30.WithMapEndpoint()
        ..initialize(
          server,
          'withMap',
          null,
        ),
    };
    connectors['countryInvolved'] = _i1.EndpointConnector(
      name: 'countryInvolved',
      endpoint: endpoints['countryInvolved']!,
      methodConnectors: {
        'getCInvolved': _i1.MethodConnector(
          name: 'getCInvolved',
          params: {
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryInvolved'] as _i2.CountryInvolvedEndpoint)
                  .getCInvolved(
            session,
            keynumber: params['keynumber'],
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
              (endpoints['countryInvolved'] as _i2.CountryInvolvedEndpoint)
                  .addCInvolved(
            session,
            params['cInvolved'],
          ),
        ),
        'getPrincipalIdsByCInvolvedIds': _i1.MethodConnector(
          name: 'getPrincipalIdsByCInvolvedIds',
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
              (endpoints['countryInvolved'] as _i2.CountryInvolvedEndpoint)
                  .getPrincipalIdsByCInvolvedIds(
            session,
            cInvolvedIds: params['cInvolvedIds'],
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
              type: _i1.getType<_i32.Categories>(),
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
        'addAndReturnCategories': _i1.MethodConnector(
          name: 'addAndReturnCategories',
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
              (endpoints['categories'] as _i3.CategoriesEndpoint)
                  .addAndReturnCategories(
            session,
            params['categories'],
          ),
        ),
        'getCategoriesByPrincipalId': _i1.MethodConnector(
          name: 'getCategoriesByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['categories'] as _i3.CategoriesEndpoint)
                  .getCategoriesByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getCategoriesByIds': _i1.MethodConnector(
          name: 'getCategoriesByIds',
          params: {
            'categoryIds': _i1.ParameterDescription(
              name: 'categoryIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['categories'] as _i3.CategoriesEndpoint)
                  .getCategoriesByIds(
            session,
            params['categoryIds'],
          ),
        ),
      },
    );
    connectors['cattsInvolved'] = _i1.EndpointConnector(
      name: 'cattsInvolved',
      endpoint: endpoints['cattsInvolved']!,
      methodConnectors: {
        'getCattsInvolved': _i1.MethodConnector(
          name: 'getCattsInvolved',
          params: {
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cattsInvolved'] as _i4.CattsInvolvedEndpoint)
                  .getCattsInvolved(
            session,
            keynumber: params['keynumber'],
          ),
        ),
        'addCattsInvolved': _i1.MethodConnector(
          name: 'addCattsInvolved',
          params: {
            'cattsInvolved': _i1.ParameterDescription(
              name: 'cattsInvolved',
              type: _i1.getType<_i33.CattsInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['cattsInvolved'] as _i4.CattsInvolvedEndpoint)
                  .addCattsInvolved(
            session,
            params['cattsInvolved'],
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
              type: _i1.getType<_i34.Countryatts>(),
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
        'addAndReturnCatts': _i1.MethodConnector(
          name: 'addAndReturnCatts',
          params: {
            'countryatts': _i1.ParameterDescription(
              name: 'countryatts',
              type: _i1.getType<_i34.Countryatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .addAndReturnCatts(
            session,
            params['countryatts'],
          ),
        ),
        'addListAndGetCatts': _i1.MethodConnector(
          name: 'addListAndGetCatts',
          params: {
            'newCatts': _i1.ParameterDescription(
              name: 'newCatts',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .addListAndGetCatts(
            session,
            params['newCatts'],
          ),
        ),
        'getCattsInvByPrincipalId': _i1.MethodConnector(
          name: 'getCattsInvByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .getCattsInvByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getCattsByPrincipalId': _i1.MethodConnector(
          name: 'getCattsByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .getCattsByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getCountryattsByIds': _i1.MethodConnector(
          name: 'getCountryattsByIds',
          params: {
            'cattIds': _i1.ParameterDescription(
              name: 'cattIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['countryatts'] as _i5.CountryattsEndpoint)
                  .getCountryattsByIds(
            session,
            params['cattIds'],
          ),
        ),
      },
    );
    connectors['detail'] = _i1.EndpointConnector(
      name: 'detail',
      endpoint: endpoints['detail']!,
      methodConnectors: {
        'addDetail': _i1.MethodConnector(
          name: 'addDetail',
          params: {
            'detail': _i1.ParameterDescription(
              name: 'detail',
              type: _i1.getType<_i35.Detail>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['detail'] as _i6.DetailEndpoint).addDetail(
            session,
            params['detail'],
          ),
        ),
        'getDetail': _i1.MethodConnector(
          name: 'getDetail',
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
              (endpoints['detail'] as _i6.DetailEndpoint).getDetail(
            session,
            keyword: params['keyword'],
          ),
        ),
        'getDetailByGenre': _i1.MethodConnector(
          name: 'getDetailByGenre',
          params: {
            'genre': _i1.ParameterDescription(
              name: 'genre',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['detail'] as _i6.DetailEndpoint).getDetailByGenre(
            session,
            genre: params['genre'],
          ),
        ),
        'addAndReturnDetailByGenre': _i1.MethodConnector(
          name: 'addAndReturnDetailByGenre',
          params: {
            'detail': _i1.ParameterDescription(
              name: 'detail',
              type: _i1.getType<_i35.Detail>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['detail'] as _i6.DetailEndpoint)
                  .addAndReturnDetailByGenre(
            session,
            params['detail'],
          ),
        ),
        'getDetailByPrincipalId': _i1.MethodConnector(
          name: 'getDetailByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['detail'] as _i6.DetailEndpoint)
                  .getDetailByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getDetailByIds': _i1.MethodConnector(
          name: 'getDetailByIds',
          params: {
            'detailIds': _i1.ParameterDescription(
              name: 'detailIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['detail'] as _i6.DetailEndpoint).getDetailByIds(
            session,
            params['detailIds'],
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
              (endpoints['oceans'] as _i7.OceansEndpoint).getOceans(
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
              (endpoints['oceans'] as _i7.OceansEndpoint).addOceans(
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
              (endpoints['organisations'] as _i8.OrganisationsEndpoint)
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
              (endpoints['organisations'] as _i8.OrganisationsEndpoint)
                  .addOrganisations(
            session,
            params['organisations'],
          ),
        ),
        'addAndReturnOrgs': _i1.MethodConnector(
          name: 'addAndReturnOrgs',
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
              (endpoints['organisations'] as _i8.OrganisationsEndpoint)
                  .addAndReturnOrgs(
            session,
            params['organisations'],
          ),
        ),
        'getOrgsByPrincipalId': _i1.MethodConnector(
          name: 'getOrgsByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisations'] as _i8.OrganisationsEndpoint)
                  .getOrgsByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getOrganisationsByIds': _i1.MethodConnector(
          name: 'getOrganisationsByIds',
          params: {
            'orgIds': _i1.ParameterDescription(
              name: 'orgIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['organisations'] as _i8.OrganisationsEndpoint)
                  .getOrganisationsByIds(
            session,
            params['orgIds'],
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
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCategories']
                      as _i9.PrincipalCategoriesEndpoint)
                  .getPCategories(
            session,
            keynumber: params['keynumber'],
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
                      as _i9.PrincipalCategoriesEndpoint)
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
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalCatt'] as _i10.PrincipalCattEndpoint)
                  .getPCatt(
            session,
            keynumber: params['keynumber'],
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
              (endpoints['principalCatt'] as _i10.PrincipalCattEndpoint)
                  .addPCatt(
            session,
            params['pCatt'],
          ),
        ),
      },
    );
    connectors['principalDetail'] = _i1.EndpointConnector(
      name: 'principalDetail',
      endpoint: endpoints['principalDetail']!,
      methodConnectors: {
        'addPDetail': _i1.MethodConnector(
          name: 'addPDetail',
          params: {
            'pDetail': _i1.ParameterDescription(
              name: 'pDetail',
              type: _i1.getType<_i40.PrincipalDetail>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalDetail'] as _i11.PrincipalDetailEndpoint)
                  .addPDetail(
            session,
            params['pDetail'],
          ),
        ),
        'getPDetail': _i1.MethodConnector(
          name: 'getPDetail',
          params: {
            'pricipalId': _i1.ParameterDescription(
              name: 'pricipalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalDetail'] as _i11.PrincipalDetailEndpoint)
                  .getPDetail(
            session,
            pricipalId: params['pricipalId'],
          ),
        ),
      },
    );
    connectors['placeInvolved'] = _i1.EndpointConnector(
      name: 'placeInvolved',
      endpoint: endpoints['placeInvolved']!,
      methodConnectors: {
        'getPInvolved': _i1.MethodConnector(
          name: 'getPInvolved',
          params: {
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeInvolved'] as _i12.PlaceInvolvedEndpoint)
                  .getPInvolved(
            session,
            keynumber: params['keynumber'],
          ),
        ),
        'addPInvolved': _i1.MethodConnector(
          name: 'addPInvolved',
          params: {
            'pInvolved': _i1.ParameterDescription(
              name: 'pInvolved',
              type: _i1.getType<_i41.PlaceInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeInvolved'] as _i12.PlaceInvolvedEndpoint)
                  .addPInvolved(
            session,
            params['pInvolved'],
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
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
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
            keynumber: params['keynumber'],
          ),
        ),
        'addPOrgs': _i1.MethodConnector(
          name: 'addPOrgs',
          params: {
            'pOrgs': _i1.ParameterDescription(
              name: 'pOrgs',
              type: _i1.getType<_i42.PrincipalOrgs>(),
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
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
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
            keynumber: params['keynumber'],
          ),
        ),
        'addPPatt': _i1.MethodConnector(
          name: 'addPPatt',
          params: {
            'pPatt': _i1.ParameterDescription(
              name: 'pPatt',
              type: _i1.getType<_i43.PrincipalPatt>(),
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
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
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
            keynumber: params['keynumber'],
          ),
        ),
        'addPPeople': _i1.MethodConnector(
          name: 'addPPeople',
          params: {
            'principalPeople': _i1.ParameterDescription(
              name: 'principalPeople',
              type: _i1.getType<_i44.PrincipalPeople>(),
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
    connectors['principalTerms'] = _i1.EndpointConnector(
      name: 'principalTerms',
      endpoint: endpoints['principalTerms']!,
      methodConnectors: {
        'getPTerms': _i1.MethodConnector(
          name: 'getPTerms',
          params: {
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalTerms'] as _i16.PrincipalTermsEndpoint)
                  .getPTerms(
            session,
            keynumber: params['keynumber'],
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
              (endpoints['principalTerms'] as _i16.PrincipalTermsEndpoint)
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
        'getPUserId': _i1.MethodConnector(
          name: 'getPUserId',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principalUser'] as _i17.PrincipalUserEndpoint)
                  .getPUserId(
            session,
            userId: params['userId'],
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
              (endpoints['principalUser'] as _i17.PrincipalUserEndpoint)
                  .addPrincipalUser(
            session,
            params['pUser'],
          ),
        ),
      },
    );
    connectors['pattInvolved'] = _i1.EndpointConnector(
      name: 'pattInvolved',
      endpoint: endpoints['pattInvolved']!,
      methodConnectors: {
        'getPattsInvolved': _i1.MethodConnector(
          name: 'getPattsInvolved',
          params: {
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pattInvolved'] as _i18.PattInvolvedEndpoint)
                  .getPattsInvolved(
            session,
            keynumber: params['keynumber'],
          ),
        ),
        'addPattsInvolved': _i1.MethodConnector(
          name: 'addPattsInvolved',
          params: {
            'pattsInvolved': _i1.ParameterDescription(
              name: 'pattsInvolved',
              type: _i1.getType<_i47.PattsInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pattInvolved'] as _i18.PattInvolvedEndpoint)
                  .addPattsInvolved(
            session,
            params['pattsInvolved'],
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
              (endpoints['pays'] as _i19.PaysEndpoint).getPays(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPays': _i1.MethodConnector(
          name: 'addPays',
          params: {
            'pays': _i1.ParameterDescription(
              name: 'pays',
              type: _i1.getType<_i48.Pays>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pays'] as _i19.PaysEndpoint).addPays(
            session,
            params['pays'],
          ),
        ),
        'getPaysByPrincipalId': _i1.MethodConnector(
          name: 'getPaysByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pays'] as _i19.PaysEndpoint).getPaysByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getPaysByIds': _i1.MethodConnector(
          name: 'getPaysByIds',
          params: {
            'paysIds': _i1.ParameterDescription(
              name: 'paysIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['pays'] as _i19.PaysEndpoint).getPaysByIds(
            session,
            params['paysIds'],
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
              (endpoints['people'] as _i20.PeopleEndpoint).getPeople(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPeople': _i1.MethodConnector(
          name: 'addPeople',
          params: {
            'people': _i1.ParameterDescription(
              name: 'people',
              type: _i1.getType<_i49.People>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i20.PeopleEndpoint).addPeople(
            session,
            params['people'],
          ),
        ),
        'addAndReturnPeople': _i1.MethodConnector(
          name: 'addAndReturnPeople',
          params: {
            'people': _i1.ParameterDescription(
              name: 'people',
              type: _i1.getType<_i49.People>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i20.PeopleEndpoint).addAndReturnPeople(
            session,
            params['people'],
          ),
        ),
        'getPeopleByPrincipalId': _i1.MethodConnector(
          name: 'getPeopleByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i20.PeopleEndpoint)
                  .getPeopleByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getPeopleByIds': _i1.MethodConnector(
          name: 'getPeopleByIds',
          params: {
            'personIds': _i1.ParameterDescription(
              name: 'personIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['people'] as _i20.PeopleEndpoint).getPeopleByIds(
            session,
            params['personIds'],
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
              (endpoints['placeatts'] as _i21.PlaceattsEndpoint).getPlaceATTs(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaceATTs': _i1.MethodConnector(
          name: 'addPlaceATTs',
          params: {
            'placeatts': _i1.ParameterDescription(
              name: 'placeatts',
              type: _i1.getType<_i50.Placeatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i21.PlaceattsEndpoint).addPlaceATTs(
            session,
            params['placeatts'],
          ),
        ),
        'addAndGetPatts': _i1.MethodConnector(
          name: 'addAndGetPatts',
          params: {
            'placeatts': _i1.ParameterDescription(
              name: 'placeatts',
              type: _i1.getType<_i50.Placeatts>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i21.PlaceattsEndpoint).addAndGetPatts(
            session,
            params['placeatts'],
          ),
        ),
        'getPattsInvByPrincipalId': _i1.MethodConnector(
          name: 'getPattsInvByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i21.PlaceattsEndpoint)
                  .getPattsInvByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getPattsByPrincipalId': _i1.MethodConnector(
          name: 'getPattsByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i21.PlaceattsEndpoint)
                  .getPattsByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getPlaceattsByIds': _i1.MethodConnector(
          name: 'getPlaceattsByIds',
          params: {
            'pattIds': _i1.ParameterDescription(
              name: 'pattIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['placeatts'] as _i21.PlaceattsEndpoint)
                  .getPlaceattsByIds(
            session,
            params['pattIds'],
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
              (endpoints['places'] as _i22.PlacesEndpoint).getPlaces(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addPlaces': _i1.MethodConnector(
          name: 'addPlaces',
          params: {
            'places': _i1.ParameterDescription(
              name: 'places',
              type: _i1.getType<_i51.Places>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i22.PlacesEndpoint).addPlaces(
            session,
            params['places'],
          ),
        ),
        'addAndReturnPlaces': _i1.MethodConnector(
          name: 'addAndReturnPlaces',
          params: {
            'places': _i1.ParameterDescription(
              name: 'places',
              type: _i1.getType<_i51.Places>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i22.PlacesEndpoint).addAndReturnPlaces(
            session,
            params['places'],
          ),
        ),
        'addAndReturnPlacesWithKeyCountry': _i1.MethodConnector(
          name: 'addAndReturnPlacesWithKeyCountry',
          params: {
            'places': _i1.ParameterDescription(
              name: 'places',
              type: _i1.getType<_i51.Places>(),
              nullable: false,
            ),
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i22.PlacesEndpoint)
                  .addAndReturnPlacesWithKeyCountry(
            session,
            params['places'],
            params['keyword'],
          ),
        ),
        'getPlacesInv': _i1.MethodConnector(
          name: 'getPlacesInv',
          params: {
            'placeInvIds': _i1.ParameterDescription(
              name: 'placeInvIds',
              type: _i1.getType<List<dynamic>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i22.PlacesEndpoint).getPlacesInv(
            session,
            placeInvIds: params['placeInvIds'],
          ),
        ),
        'getPlacesByPrincipalId': _i1.MethodConnector(
          name: 'getPlacesByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i22.PlacesEndpoint)
                  .getPlacesByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getPlacesByIds': _i1.MethodConnector(
          name: 'getPlacesByIds',
          params: {
            'placeIds': _i1.ParameterDescription(
              name: 'placeIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['places'] as _i22.PlacesEndpoint).getPlacesByIds(
            session,
            params['placeIds'],
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
              type: _i1.getType<_i52.Principal>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint).addPrincipal(
            session,
            params['principal'],
          ),
        ),
        'updatePrincipal': _i1.MethodConnector(
          name: 'updatePrincipal',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'newPrecise': _i1.ParameterDescription(
              name: 'newPrecise',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .updatePrincipal(
            session,
            params['id'],
            params['newPrecise'],
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
              (endpoints['principal'] as _i23.PrincipalEndpoint).getPrincipal(
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByCInvolvedId(
            session,
            cInvolvedIds: params['cInvolvedIds'],
          ),
        ),
        'getPrincipalByPInvolvedId': _i1.MethodConnector(
          name: 'getPrincipalByPInvolvedId',
          params: {
            'pInvolvedIds': _i1.ParameterDescription(
              name: 'pInvolvedIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByPInvolvedId(
            session,
            pInvolvedIds: params['pInvolvedIds'],
          ),
        ),
        'getPrincipalByCattInvolvedId': _i1.MethodConnector(
          name: 'getPrincipalByCattInvolvedId',
          params: {
            'cattInvolvedIds': _i1.ParameterDescription(
              name: 'cattInvolvedIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByCattInvolvedId(
            session,
            cattInvolvedIds: params['cattInvolvedIds'],
          ),
        ),
        'getPrincipalByPattInvolvedId': _i1.MethodConnector(
          name: 'getPrincipalByPattInvolvedId',
          params: {
            'pattInvolvedIds': _i1.ParameterDescription(
              name: 'pattInvolvedIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByPattInvolvedId(
            session,
            pattInvolvedIds: params['pattInvolvedIds'],
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
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
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByTermId(
            session,
            termIds: params['termIds'],
          ),
        ),
        'getPrincipalByUserId': _i1.MethodConnector(
          name: 'getPrincipalByUserId',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByUserId(
            session,
            userId: params['userId'],
          ),
        ),
        'getPrincipalByDetailIds': _i1.MethodConnector(
          name: 'getPrincipalByDetailIds',
          params: {
            'detailIds': _i1.ParameterDescription(
              name: 'detailIds',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalByDetailIds(
            session,
            detailIds: params['detailIds'],
          ),
        ),
        'getPrincipalsByIds': _i1.MethodConnector(
          name: 'getPrincipalsByIds',
          params: {
            'principalIds': _i1.ParameterDescription(
              name: 'principalIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['principal'] as _i23.PrincipalEndpoint)
                  .getPrincipalsByIds(
            session,
            params['principalIds'],
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
              (endpoints['seas'] as _i24.SeasEndpoint).getSeas(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addSeas': _i1.MethodConnector(
          name: 'addSeas',
          params: {
            'seas': _i1.ParameterDescription(
              name: 'seas',
              type: _i1.getType<_i53.Seas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['seas'] as _i24.SeasEndpoint).addSeas(
            session,
            params['seas'],
          ),
        ),
        'addAndReturnSeas': _i1.MethodConnector(
          name: 'addAndReturnSeas',
          params: {
            'seas': _i1.ParameterDescription(
              name: 'seas',
              type: _i1.getType<_i53.Seas>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['seas'] as _i24.SeasEndpoint).addAndReturnSeas(
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
              (endpoints['stars'] as _i25.StarsEndpoint).getStars(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addStars': _i1.MethodConnector(
          name: 'addStars',
          params: {
            'stars': _i1.ParameterDescription(
              name: 'stars',
              type: _i1.getType<_i54.Stars>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stars'] as _i25.StarsEndpoint).addStars(
            session,
            params['stars'],
          ),
        ),
        'addAndReturnStars': _i1.MethodConnector(
          name: 'addAndReturnStars',
          params: {
            'stars': _i1.ParameterDescription(
              name: 'stars',
              type: _i1.getType<_i54.Stars>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stars'] as _i25.StarsEndpoint).addAndReturnStars(
            session,
            params['stars'],
          ),
        ),
        'getStarsByPrincipalId': _i1.MethodConnector(
          name: 'getStarsByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stars'] as _i25.StarsEndpoint).getStarsByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getStarsByIds': _i1.MethodConnector(
          name: 'getStarsByIds',
          params: {
            'starIds': _i1.ParameterDescription(
              name: 'starIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['stars'] as _i25.StarsEndpoint).getStarsByIds(
            session,
            params['starIds'],
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
            'keynumber': _i1.ParameterDescription(
              name: 'keynumber',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['starsInvolved'] as _i26.StarsInvolvedEndpoint)
                  .getStarsInvolved(
            session,
            keynumber: params['keynumber'],
          ),
        ),
        'addStarsInvolved': _i1.MethodConnector(
          name: 'addStarsInvolved',
          params: {
            'starsInvolved': _i1.ParameterDescription(
              name: 'starsInvolved',
              type: _i1.getType<_i55.StarsInvolved>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['starsInvolved'] as _i26.StarsInvolvedEndpoint)
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
              (endpoints['terms'] as _i27.TermsEndpoint).getTerms(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addTerms': _i1.MethodConnector(
          name: 'addTerms',
          params: {
            'terms': _i1.ParameterDescription(
              name: 'terms',
              type: _i1.getType<_i56.Terms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i27.TermsEndpoint).addTerms(
            session,
            params['terms'],
          ),
        ),
        'addAndReturnTerms': _i1.MethodConnector(
          name: 'addAndReturnTerms',
          params: {
            'terms': _i1.ParameterDescription(
              name: 'terms',
              type: _i1.getType<_i56.Terms>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i27.TermsEndpoint).addAndReturnTerms(
            session,
            params['terms'],
          ),
        ),
        'getTermsByPrincipalId': _i1.MethodConnector(
          name: 'getTermsByPrincipalId',
          params: {
            'principalId': _i1.ParameterDescription(
              name: 'principalId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i27.TermsEndpoint).getTermsByPrincipalId(
            session,
            principalId: params['principalId'],
          ),
        ),
        'getTermsByIds': _i1.MethodConnector(
          name: 'getTermsByIds',
          params: {
            'termIds': _i1.ParameterDescription(
              name: 'termIds',
              type: _i1.getType<List<int>>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['terms'] as _i27.TermsEndpoint).getTermsByIds(
            session,
            params['termIds'],
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
              (endpoints['universe'] as _i28.UniverseEndpoint).getUniverse(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addUniverse': _i1.MethodConnector(
          name: 'addUniverse',
          params: {
            'universe': _i1.ParameterDescription(
              name: 'universe',
              type: _i1.getType<_i57.Universe>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['universe'] as _i28.UniverseEndpoint).addUniverse(
            session,
            params['universe'],
          ),
        ),
      },
    );
    connectors['withGlobe'] = _i1.EndpointConnector(
      name: 'withGlobe',
      endpoint: endpoints['withGlobe']!,
      methodConnectors: {
        'getWithGlobe': _i1.MethodConnector(
          name: 'getWithGlobe',
          params: {
            'keyNumbers': _i1.ParameterDescription(
              name: 'keyNumbers',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['withGlobe'] as _i29.WithGlobeEndpoint).getWithGlobe(
            session,
            keyNumbers: params['keyNumbers'],
          ),
        ),
        'addWithGlobe': _i1.MethodConnector(
          name: 'addWithGlobe',
          params: {
            'withGlobe': _i1.ParameterDescription(
              name: 'withGlobe',
              type: _i1.getType<_i58.WithGlobe>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['withGlobe'] as _i29.WithGlobeEndpoint).addWithGlobe(
            session,
            params['withGlobe'],
          ),
        ),
      },
    );
    connectors['withMap'] = _i1.EndpointConnector(
      name: 'withMap',
      endpoint: endpoints['withMap']!,
      methodConnectors: {
        'getWithMap': _i1.MethodConnector(
          name: 'getWithMap',
          params: {
            'keyNumbers': _i1.ParameterDescription(
              name: 'keyNumbers',
              type: _i1.getType<List<int>?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['withMap'] as _i30.WithMapEndpoint).getWithMap(
            session,
            keyNumbers: params['keyNumbers'],
          ),
        ),
        'addWithMap': _i1.MethodConnector(
          name: 'addWithMap',
          params: {
            'withMap': _i1.ParameterDescription(
              name: 'withMap',
              type: _i1.getType<_i59.WithMap>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['withMap'] as _i30.WithMapEndpoint).addWithMap(
            session,
            params['withMap'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i60.Endpoints()..initializeEndpoints(server);
  }
}
