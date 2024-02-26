/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i3;
import 'package:acorn_client/src/protocol/categories.dart' as _i4;
import 'package:acorn_client/src/protocol/catts_involved.dart' as _i5;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i6;
import 'package:acorn_client/src/protocol/oceans.dart' as _i7;
import 'package:acorn_client/src/protocol/organisations.dart' as _i8;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i9;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i10;
import 'package:acorn_client/src/protocol/p_involved.dart' as _i11;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i12;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i13;
import 'package:acorn_client/src/protocol/p_people.dart' as _i14;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i15;
import 'package:acorn_client/src/protocol/p-user.dart' as _i16;
import 'package:acorn_client/src/protocol/patts_involved.dart' as _i17;
import 'package:acorn_client/src/protocol/pays.dart' as _i18;
import 'package:acorn_client/src/protocol/people.dart' as _i19;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i20;
import 'package:acorn_client/src/protocol/places.dart' as _i21;
import 'package:acorn_client/src/protocol/principal.dart' as _i22;
import 'package:acorn_client/src/protocol/seas.dart' as _i23;
import 'package:acorn_client/src/protocol/stars.dart' as _i24;
import 'package:acorn_client/src/protocol/stars_involved.dart' as _i25;
import 'package:acorn_client/src/protocol/terms.dart' as _i26;
import 'package:acorn_client/src/protocol/universe.dart' as _i27;
import 'package:acorn_client/src/protocol/with_globe.dart' as _i28;
import 'package:acorn_client/src/protocol/with_map.dart' as _i29;
import 'package:serverpod_auth_client/module.dart' as _i30;
import 'protocol.dart' as _i31;

/// {@category Endpoint}
class EndpointCountryInvolved extends _i1.EndpointRef {
  EndpointCountryInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'countryInvolved';

  ///Selects some junctions of countries-involved from DB
  _i2.Future<List<_i3.CountryInvolved>> getCInvolved({int? keynumber}) =>
      caller.callServerEndpoint<List<_i3.CountryInvolved>>(
        'countryInvolved',
        'getCInvolved',
        {'keynumber': keynumber},
      );

  ///Adds a junction of country involved in DB
  _i2.Future<void> addCInvolved(_i3.CountryInvolved cInvolved) =>
      caller.callServerEndpoint<void>(
        'countryInvolved',
        'addCInvolved',
        {'cInvolved': cInvolved},
      );

  /// Gets a list of principalIds based on a list of cInvolvedIds
  _i2.Future<List<int>> getPrincipalIdsByCInvolvedIds(
          {List<int>? cInvolvedIds}) =>
      caller.callServerEndpoint<List<int>>(
        'countryInvolved',
        'getPrincipalIdsByCInvolvedIds',
        {'cInvolvedIds': cInvolvedIds},
      );
}

/// {@category Endpoint}
class EndpointCategories extends _i1.EndpointRef {
  EndpointCategories(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'categories';

  ///Fetches all categories from DB
  _i2.Future<List<_i4.Categories>> getCategories({String? keyword}) =>
      caller.callServerEndpoint<List<_i4.Categories>>(
        'categories',
        'getCategories',
        {'keyword': keyword},
      );

  ///Adds a category in DB
  _i2.Future<int> addCategories(_i4.Categories categories) =>
      caller.callServerEndpoint<int>(
        'categories',
        'addCategories',
        {'categories': categories},
      );

  ///Adds a new categories and returns all Categories
  _i2.Future<List<_i4.Categories>> addAndReturnCategories(
          _i4.Categories categories) =>
      caller.callServerEndpoint<List<_i4.Categories>>(
        'categories',
        'addAndReturnCategories',
        {'categories': categories},
      );
}

/// {@category Endpoint}
class EndpointCattsInvolved extends _i1.EndpointRef {
  EndpointCattsInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'cattsInvolved';

  ///Selects some junctions of catts-involved from DB.
  _i2.Future<List<_i5.CattsInvolved>> getCattsInvolved({int? keynumber}) =>
      caller.callServerEndpoint<List<_i5.CattsInvolved>>(
        'cattsInvolved',
        'getCattsInvolved',
        {'keynumber': keynumber},
      );

  ///Adds a junction of country-att involved in DB
  _i2.Future<void> addCattsInvolved(_i5.CattsInvolved cattsInvolved) =>
      caller.callServerEndpoint<void>(
        'cattsInvolved',
        'addCattsInvolved',
        {'cattsInvolved': cattsInvolved},
      );
}

/// {@category Endpoint}
class EndpointCountryatts extends _i1.EndpointRef {
  EndpointCountryatts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'countryatts';

  ///Fetches all countries-att from DB
  _i2.Future<List<_i6.Countryatts>> getCountryATTs({String? keyword}) =>
      caller.callServerEndpoint<List<_i6.Countryatts>>(
        'countryatts',
        'getCountryATTs',
        {'keyword': keyword},
      );

  ///Adds a country-att in DB
  _i2.Future<int> addCountryATTs(_i6.Countryatts countryatts) =>
      caller.callServerEndpoint<int>(
        'countryatts',
        'addCountryATTs',
        {'countryatts': countryatts},
      );

  ///Adds a new Catt and returns all Catts
  _i2.Future<List<_i6.Countryatts>> addAndReturnCatts(
          _i6.Countryatts countryatts) =>
      caller.callServerEndpoint<List<_i6.Countryatts>>(
        'countryatts',
        'addAndReturnCatts',
        {'countryatts': countryatts},
      );

  ///Adds list and re-fetch all from DB
  _i2.Future<List<_i6.Countryatts>> addListAndGetCatts(
          List<String>? newCatts) =>
      caller.callServerEndpoint<List<_i6.Countryatts>>(
        'countryatts',
        'addListAndGetCatts',
        {'newCatts': newCatts},
      );
}

/// {@category Endpoint}
class EndpointOceans extends _i1.EndpointRef {
  EndpointOceans(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'oceans';

  ///Fetches all Oceans from DB
  _i2.Future<List<_i7.Oceans>> getOceans({String? keyword}) =>
      caller.callServerEndpoint<List<_i7.Oceans>>(
        'oceans',
        'getOceans',
        {'keyword': keyword},
      );

  ///Adds an ocean in DB
  _i2.Future<int> addOceans(_i7.Oceans oceans) =>
      caller.callServerEndpoint<int>(
        'oceans',
        'addOceans',
        {'oceans': oceans},
      );
}

/// {@category Endpoint}
class EndpointOrganisations extends _i1.EndpointRef {
  EndpointOrganisations(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'organisations';

  ///Fetches organisations from DB
  _i2.Future<List<_i8.Organisations>> getOrganisations({String? keyword}) =>
      caller.callServerEndpoint<List<_i8.Organisations>>(
        'organisations',
        'getOrganisations',
        {'keyword': keyword},
      );

  ///Adds organisation in DB
  _i2.Future<int> addOrganisations(_i8.Organisations organisations) =>
      caller.callServerEndpoint<int>(
        'organisations',
        'addOrganisations',
        {'organisations': organisations},
      );

  ///Adds a new Org and returns all Orgs
  _i2.Future<List<_i8.Organisations>> addAndReturnOrgs(
          _i8.Organisations organisations) =>
      caller.callServerEndpoint<List<_i8.Organisations>>(
        'organisations',
        'addAndReturnOrgs',
        {'organisations': organisations},
      );
}

/// {@category Endpoint}
class EndpointPrincipalCategories extends _i1.EndpointRef {
  EndpointPrincipalCategories(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalCategories';

  ///Selects some junctions of principal-categories from DB
  _i2.Future<List<_i9.PrincipalCategories>> getPCategories({int? keynumber}) =>
      caller.callServerEndpoint<List<_i9.PrincipalCategories>>(
        'principalCategories',
        'getPCategories',
        {'keynumber': keynumber},
      );

  ///Adds a junction of PrincipalCategory in DB
  _i2.Future<void> addPCategories(_i9.PrincipalCategories pCategories) =>
      caller.callServerEndpoint<void>(
        'principalCategories',
        'addPCategories',
        {'pCategories': pCategories},
      );
}

/// {@category Endpoint}
class EndpointPrincipalCatt extends _i1.EndpointRef {
  EndpointPrincipalCatt(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalCatt';

  ///Selects some junctions of principal-Catt from DB
  _i2.Future<List<_i10.PrincipalCatt>> getPCatt({int? keynumber}) =>
      caller.callServerEndpoint<List<_i10.PrincipalCatt>>(
        'principalCatt',
        'getPCatt',
        {'keynumber': keynumber},
      );

  ///Adds a junctions of PCatt in DB
  _i2.Future<void> addPCatt(_i10.PrincipalCatt pCatt) =>
      caller.callServerEndpoint<void>(
        'principalCatt',
        'addPCatt',
        {'pCatt': pCatt},
      );
}

/// {@category Endpoint}
class EndpointPlaceInvolved extends _i1.EndpointRef {
  EndpointPlaceInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'placeInvolved';

  ///Selects some junctions of places-involved from DB
  _i2.Future<List<_i11.PlaceInvolved>> getPInvolved({int? keynumber}) =>
      caller.callServerEndpoint<List<_i11.PlaceInvolved>>(
        'placeInvolved',
        'getPInvolved',
        {'keynumber': keynumber},
      );

  ///Adds a junction of country involved in DB
  _i2.Future<void> addPInvolved(_i11.PlaceInvolved pInvolved) =>
      caller.callServerEndpoint<void>(
        'placeInvolved',
        'addPInvolved',
        {'pInvolved': pInvolved},
      );
}

/// {@category Endpoint}
class EndpointPrincipalOrgs extends _i1.EndpointRef {
  EndpointPrincipalOrgs(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalOrgs';

  ///Selects some junctions of principal-Orgs from DB
  _i2.Future<List<_i12.PrincipalOrgs>> getPOrgs({int? keynumber}) =>
      caller.callServerEndpoint<List<_i12.PrincipalOrgs>>(
        'principalOrgs',
        'getPOrgs',
        {'keynumber': keynumber},
      );

  ///Adds a junctions of POrgs in DB
  _i2.Future<void> addPOrgs(_i12.PrincipalOrgs pOrgs) =>
      caller.callServerEndpoint<void>(
        'principalOrgs',
        'addPOrgs',
        {'pOrgs': pOrgs},
      );
}

/// {@category Endpoint}
class EndpointPrincipalPatt extends _i1.EndpointRef {
  EndpointPrincipalPatt(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPatt';

  ///Selects some junctions of principal-Patt from DB
  _i2.Future<List<_i13.PrincipalPatt>> getPPatt({int? keynumber}) =>
      caller.callServerEndpoint<List<_i13.PrincipalPatt>>(
        'principalPatt',
        'getPPatt',
        {'keynumber': keynumber},
      );

  ///Adds a junction of PCatt in DB
  _i2.Future<void> addPPatt(_i13.PrincipalPatt pPatt) =>
      caller.callServerEndpoint<void>(
        'principalPatt',
        'addPPatt',
        {'pPatt': pPatt},
      );
}

/// {@category Endpoint}
class EndpointPrincipalPeople extends _i1.EndpointRef {
  EndpointPrincipalPeople(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPeople';

  ///Selects some junctions of principal-People from DB
  _i2.Future<List<_i14.PrincipalPeople>> getPPeople({int? keynumber}) =>
      caller.callServerEndpoint<List<_i14.PrincipalPeople>>(
        'principalPeople',
        'getPPeople',
        {'keynumber': keynumber},
      );

  ///Adds a junction of Principal people in DB
  _i2.Future<void> addPPeople(_i14.PrincipalPeople principalPeople) =>
      caller.callServerEndpoint<void>(
        'principalPeople',
        'addPPeople',
        {'principalPeople': principalPeople},
      );
}

/// {@category Endpoint}
class EndpointPrincipalTerms extends _i1.EndpointRef {
  EndpointPrincipalTerms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalTerms';

  ///Selects some junctions of principal-Terms from DB
  _i2.Future<List<_i15.PrincipalTerms>> getPTerms({int? keynumber}) =>
      caller.callServerEndpoint<List<_i15.PrincipalTerms>>(
        'principalTerms',
        'getPTerms',
        {'keynumber': keynumber},
      );

  ///Adds principal terms in DB
  _i2.Future<void> addPrincipalTerms(_i15.PrincipalTerms pTerms) =>
      caller.callServerEndpoint<void>(
        'principalTerms',
        'addPrincipalTerms',
        {'pTerms': pTerms},
      );
}

/// {@category Endpoint}
class EndpointPrincipalUser extends _i1.EndpointRef {
  EndpointPrincipalUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalUser';

  ///Selects a junction of principal and a current user from DB
  _i2.Future<List<_i16.PrincipalUser>> getPUserId({int? userId}) =>
      caller.callServerEndpoint<List<_i16.PrincipalUser>>(
        'principalUser',
        'getPUserId',
        {'userId': userId},
      );

  ///Adds PUser in DB
  _i2.Future<void> addPrincipalUser(_i16.PrincipalUser pUser) =>
      caller.callServerEndpoint<void>(
        'principalUser',
        'addPrincipalUser',
        {'pUser': pUser},
      );
}

/// {@category Endpoint}
class EndpointPattInvolved extends _i1.EndpointRef {
  EndpointPattInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pattInvolved';

  ///Selects some junctions of patts-involved from DB.
  _i2.Future<List<_i17.PattsInvolved>> getPattsInvolved({int? keynumber}) =>
      caller.callServerEndpoint<List<_i17.PattsInvolved>>(
        'pattInvolved',
        'getPattsInvolved',
        {'keynumber': keynumber},
      );

  ///Adds a junction of country-att involved in DB
  _i2.Future<void> addPattsInvolved(_i17.PattsInvolved pattsInvolved) =>
      caller.callServerEndpoint<void>(
        'pattInvolved',
        'addPattsInvolved',
        {'pattsInvolved': pattsInvolved},
      );
}

/// {@category Endpoint}
class EndpointPays extends _i1.EndpointRef {
  EndpointPays(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pays';

  ///Fetches all countries from DB
  _i2.Future<List<_i18.Pays>> getPays({String? keyword}) =>
      caller.callServerEndpoint<List<_i18.Pays>>(
        'pays',
        'getPays',
        {'keyword': keyword},
      );

  ///Adds a new country when it is certified by the United Nations.
  _i2.Future<int> addPays(_i18.Pays pays) => caller.callServerEndpoint<int>(
        'pays',
        'addPays',
        {'pays': pays},
      );
}

/// {@category Endpoint}
class EndpointPeople extends _i1.EndpointRef {
  EndpointPeople(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'people';

  ///Fetches all people from DB
  _i2.Future<List<_i19.People>> getPeople({String? keyword}) =>
      caller.callServerEndpoint<List<_i19.People>>(
        'people',
        'getPeople',
        {'keyword': keyword},
      );

  _i2.Future<void> addPeople(_i19.People people) =>
      caller.callServerEndpoint<void>(
        'people',
        'addPeople',
        {'people': people},
      );

  ///Adds a new person and returns all People
  _i2.Future<List<_i19.People>> addAndReturnPeople(_i19.People people) =>
      caller.callServerEndpoint<List<_i19.People>>(
        'people',
        'addAndReturnPeople',
        {'people': people},
      );
}

/// {@category Endpoint}
class EndpointPlaceatts extends _i1.EndpointRef {
  EndpointPlaceatts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'placeatts';

  ///Fetches all places-att from DB.
  _i2.Future<List<_i20.Placeatts>> getPlaceATTs({String? keyword}) =>
      caller.callServerEndpoint<List<_i20.Placeatts>>(
        'placeatts',
        'getPlaceATTs',
        {'keyword': keyword},
      );

  ///Adds a place-att in DB.
  _i2.Future<void> addPlaceATTs(_i20.Placeatts placeatts) =>
      caller.callServerEndpoint<void>(
        'placeatts',
        'addPlaceATTs',
        {'placeatts': placeatts},
      );

  ///Adds and re-fetch all from DB
  _i2.Future<List<_i20.Placeatts>> addAndGetPatts(_i20.Placeatts placeatts) =>
      caller.callServerEndpoint<List<_i20.Placeatts>>(
        'placeatts',
        'addAndGetPatts',
        {'placeatts': placeatts},
      );
}

/// {@category Endpoint}
class EndpointPlaces extends _i1.EndpointRef {
  EndpointPlaces(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'places';

  ///Fetches places belonging to the destinated country
  _i2.Future<List<_i21.Places>> getPlaces({String? keyword}) =>
      caller.callServerEndpoint<List<_i21.Places>>(
        'places',
        'getPlaces',
        {'keyword': keyword},
      );

  ///Adds place in DB
  _i2.Future<void> addPlaces(_i21.Places places) =>
      caller.callServerEndpoint<void>(
        'places',
        'addPlaces',
        {'places': places},
      );

  ///Adds a new Place and returns all Places
  _i2.Future<List<_i21.Places>> addAndReturnPlaces(_i21.Places places) =>
      caller.callServerEndpoint<List<_i21.Places>>(
        'places',
        'addAndReturnPlaces',
        {'places': places},
      );

  ///Adds a new Place and returns Places in the same country
  _i2.Future<List<_i21.Places>> addAndReturnPlacesWithKeyCountry(
    _i21.Places places,
    String keyword,
  ) =>
      caller.callServerEndpoint<List<_i21.Places>>(
        'places',
        'addAndReturnPlacesWithKeyCountry',
        {
          'places': places,
          'keyword': keyword,
        },
      );

  ///
  _i2.Future<List<_i21.Places>> getPlacesInv({List<dynamic>? placeInvIds}) =>
      caller.callServerEndpoint<List<_i21.Places>>(
        'places',
        'getPlacesInv',
        {'placeInvIds': placeInvIds},
      );
}

/// {@category Endpoint}
class EndpointPrincipal extends _i1.EndpointRef {
  EndpointPrincipal(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principal';

  _i2.Future<int> addPrincipal(_i22.Principal principal) =>
      caller.callServerEndpoint<int>(
        'principal',
        'addPrincipal',
        {'principal': principal},
      );

  _i2.Future<List<_i22.Principal>> getPrincipal({List<String>? keywords}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipal',
        {'keywords': keywords},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByPeriod(
          {List<String>? keywords}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByPeriod',
        {'keywords': keywords},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByPrecise(
          {List<String>? keywords}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByPrecise',
        {'keywords': keywords},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByCattId({List<int>? cattIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByCattId',
        {'cattIds': cattIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByPattId({List<int>? pattIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByPattId',
        {'pattIds': pattIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByPersonId(
          {List<int>? personIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByPersonId',
        {'personIds': personIds},
      );

  ///Get list-principal using country-involved-id
  _i2.Future<List<_i22.Principal>> getPrincipalByCInvolvedId(
          {List<int>? cInvolvedIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByCInvolvedId',
        {'cInvolvedIds': cInvolvedIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByPInvolvedId(
          {List<int>? pInvolvedIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByPInvolvedId',
        {'pInvolvedIds': pInvolvedIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByCattInvolvedId(
          {List<int>? cattInvolvedIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByCattInvolvedId',
        {'cattInvolvedIds': cattInvolvedIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByPattInvolvedId(
          {List<int>? pattInvolvedIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByPattInvolvedId',
        {'pattInvolvedIds': pattInvolvedIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByStarsInvolvedId(
          {List<int>? starInvolvedIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByStarsInvolvedId',
        {'starInvolvedIds': starInvolvedIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByOrgsId({List<int>? orgIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByOrgsId',
        {'orgIds': orgIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByCategoryId(
          {List<int>? categoryIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByCategoryId',
        {'categoryIds': categoryIds},
      );

  _i2.Future<List<_i22.Principal>> getPrincipalByTermId({List<int>? termIds}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByTermId',
        {'termIds': termIds},
      );

  ///単一user version
  _i2.Future<List<_i22.Principal>> getPrincipalByUserId({int? userId}) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalByUserId',
        {'userId': userId},
      );

  ///二段階検索共通第２Step
  _i2.Future<List<_i22.Principal>> getPrincipalsByIds(List<int> principalIds) =>
      caller.callServerEndpoint<List<_i22.Principal>>(
        'principal',
        'getPrincipalsByIds',
        {'principalIds': principalIds},
      );
}

/// {@category Endpoint}
class EndpointSeas extends _i1.EndpointRef {
  EndpointSeas(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'seas';

  ///Fetches all seas from DB
  _i2.Future<List<_i23.Seas>> getSeas({String? keyword}) =>
      caller.callServerEndpoint<List<_i23.Seas>>(
        'seas',
        'getSeas',
        {'keyword': keyword},
      );

  ///Adds a sea in DB
  _i2.Future<void> addSeas(_i23.Seas seas) => caller.callServerEndpoint<void>(
        'seas',
        'addSeas',
        {'seas': seas},
      );

  ///Adds a new Sea and returns all Seas
  _i2.Future<List<_i23.Seas>> addAndReturnSeas(_i23.Seas seas) =>
      caller.callServerEndpoint<List<_i23.Seas>>(
        'seas',
        'addAndReturnSeas',
        {'seas': seas},
      );
}

/// {@category Endpoint}
class EndpointStars extends _i1.EndpointRef {
  EndpointStars(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'stars';

  ///Fetches all Stars from DB
  _i2.Future<List<_i24.Stars>> getStars({String? keyword}) =>
      caller.callServerEndpoint<List<_i24.Stars>>(
        'stars',
        'getStars',
        {'keyword': keyword},
      );

  _i2.Future<void> addStars(_i24.Stars stars) =>
      caller.callServerEndpoint<void>(
        'stars',
        'addStars',
        {'stars': stars},
      );

  ///Adds a new Star and returns all Stars
  _i2.Future<List<_i24.Stars>> addAndReturnStars(_i24.Stars stars) =>
      caller.callServerEndpoint<List<_i24.Stars>>(
        'stars',
        'addAndReturnStars',
        {'stars': stars},
      );
}

/// {@category Endpoint}
class EndpointStarsInvolved extends _i1.EndpointRef {
  EndpointStarsInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'starsInvolved';

  ///Selects some junctions of stars-involved from DB.
  _i2.Future<List<_i25.StarsInvolved>> getStarsInvolved({int? keynumber}) =>
      caller.callServerEndpoint<List<_i25.StarsInvolved>>(
        'starsInvolved',
        'getStarsInvolved',
        {'keynumber': keynumber},
      );

  ///Adds a junctions of stars involved in DB
  _i2.Future<void> addStarsInvolved(_i25.StarsInvolved starsInvolved) =>
      caller.callServerEndpoint<void>(
        'starsInvolved',
        'addStarsInvolved',
        {'starsInvolved': starsInvolved},
      );
}

/// {@category Endpoint}
class EndpointTerms extends _i1.EndpointRef {
  EndpointTerms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'terms';

  ///Fetches all terms from DB
  _i2.Future<List<_i26.Terms>> getTerms({String? keyword}) =>
      caller.callServerEndpoint<List<_i26.Terms>>(
        'terms',
        'getTerms',
        {'keyword': keyword},
      );

  ///Adds a term in DB
  _i2.Future<int> addTerms(_i26.Terms terms) => caller.callServerEndpoint<int>(
        'terms',
        'addTerms',
        {'terms': terms},
      );

  ///Adds a new Term and returns all Terms
  _i2.Future<List<_i26.Terms>> addAndReturnTerms(_i26.Terms terms) =>
      caller.callServerEndpoint<List<_i26.Terms>>(
        'terms',
        'addAndReturnTerms',
        {'terms': terms},
      );
}

/// {@category Endpoint}
class EndpointUniverse extends _i1.EndpointRef {
  EndpointUniverse(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'universe';

  ///Fetches all universe from DB
  _i2.Future<List<_i27.Universe>> getUniverse({String? keyword}) =>
      caller.callServerEndpoint<List<_i27.Universe>>(
        'universe',
        'getUniverse',
        {'keyword': keyword},
      );

  ///Adds universe in DB
  _i2.Future<void> addUniverse(_i27.Universe universe) =>
      caller.callServerEndpoint<void>(
        'universe',
        'addUniverse',
        {'universe': universe},
      );
}

/// {@category Endpoint}
class EndpointWithGlobe extends _i1.EndpointRef {
  EndpointWithGlobe(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'withGlobe';

  /// Fetches WithGlobe from DB
  _i2.Future<List<_i28.WithGlobe>> getWithGlobe({List<int>? keyNumbers}) =>
      caller.callServerEndpoint<List<_i28.WithGlobe>>(
        'withGlobe',
        'getWithGlobe',
        {'keyNumbers': keyNumbers},
      );

  ///Adds a WithGlobe in DB
  _i2.Future<void> addWithGlobe(_i28.WithGlobe withGlobe) =>
      caller.callServerEndpoint<void>(
        'withGlobe',
        'addWithGlobe',
        {'withGlobe': withGlobe},
      );
}

/// {@category Endpoint}
class EndpointWithMap extends _i1.EndpointRef {
  EndpointWithMap(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'withMap';

  /// Fetches WithMap from DB
  _i2.Future<List<_i29.WithMap>> getWithMap({List<int>? keyNumbers}) =>
      caller.callServerEndpoint<List<_i29.WithMap>>(
        'withMap',
        'getWithMap',
        {'keyNumbers': keyNumbers},
      );

  ///Adds a WithMap in DB
  _i2.Future<void> addWithMap(_i29.WithMap withMap) =>
      caller.callServerEndpoint<void>(
        'withMap',
        'addWithMap',
        {'withMap': withMap},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i30.Caller(client);
  }

  late final _i30.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i31.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    countryInvolved = EndpointCountryInvolved(this);
    categories = EndpointCategories(this);
    cattsInvolved = EndpointCattsInvolved(this);
    countryatts = EndpointCountryatts(this);
    oceans = EndpointOceans(this);
    organisations = EndpointOrganisations(this);
    principalCategories = EndpointPrincipalCategories(this);
    principalCatt = EndpointPrincipalCatt(this);
    placeInvolved = EndpointPlaceInvolved(this);
    principalOrgs = EndpointPrincipalOrgs(this);
    principalPatt = EndpointPrincipalPatt(this);
    principalPeople = EndpointPrincipalPeople(this);
    principalTerms = EndpointPrincipalTerms(this);
    principalUser = EndpointPrincipalUser(this);
    pattInvolved = EndpointPattInvolved(this);
    pays = EndpointPays(this);
    people = EndpointPeople(this);
    placeatts = EndpointPlaceatts(this);
    places = EndpointPlaces(this);
    principal = EndpointPrincipal(this);
    seas = EndpointSeas(this);
    stars = EndpointStars(this);
    starsInvolved = EndpointStarsInvolved(this);
    terms = EndpointTerms(this);
    universe = EndpointUniverse(this);
    withGlobe = EndpointWithGlobe(this);
    withMap = EndpointWithMap(this);
    modules = _Modules(this);
  }

  late final EndpointCountryInvolved countryInvolved;

  late final EndpointCategories categories;

  late final EndpointCattsInvolved cattsInvolved;

  late final EndpointCountryatts countryatts;

  late final EndpointOceans oceans;

  late final EndpointOrganisations organisations;

  late final EndpointPrincipalCategories principalCategories;

  late final EndpointPrincipalCatt principalCatt;

  late final EndpointPlaceInvolved placeInvolved;

  late final EndpointPrincipalOrgs principalOrgs;

  late final EndpointPrincipalPatt principalPatt;

  late final EndpointPrincipalPeople principalPeople;

  late final EndpointPrincipalTerms principalTerms;

  late final EndpointPrincipalUser principalUser;

  late final EndpointPattInvolved pattInvolved;

  late final EndpointPays pays;

  late final EndpointPeople people;

  late final EndpointPlaceatts placeatts;

  late final EndpointPlaces places;

  late final EndpointPrincipal principal;

  late final EndpointSeas seas;

  late final EndpointStars stars;

  late final EndpointStarsInvolved starsInvolved;

  late final EndpointTerms terms;

  late final EndpointUniverse universe;

  late final EndpointWithGlobe withGlobe;

  late final EndpointWithMap withMap;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'countryInvolved': countryInvolved,
        'categories': categories,
        'cattsInvolved': cattsInvolved,
        'countryatts': countryatts,
        'oceans': oceans,
        'organisations': organisations,
        'principalCategories': principalCategories,
        'principalCatt': principalCatt,
        'placeInvolved': placeInvolved,
        'principalOrgs': principalOrgs,
        'principalPatt': principalPatt,
        'principalPeople': principalPeople,
        'principalTerms': principalTerms,
        'principalUser': principalUser,
        'pattInvolved': pattInvolved,
        'pays': pays,
        'people': people,
        'placeatts': placeatts,
        'places': places,
        'principal': principal,
        'seas': seas,
        'stars': stars,
        'starsInvolved': starsInvolved,
        'terms': terms,
        'universe': universe,
        'withGlobe': withGlobe,
        'withMap': withMap,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
