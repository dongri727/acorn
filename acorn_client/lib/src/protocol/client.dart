/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:acorn_client/src/protocol/att_involved.dart' as _i3;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i4;
import 'package:acorn_client/src/protocol/categories.dart' as _i5;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i6;
import 'package:acorn_client/src/protocol/lieux.dart' as _i7;
import 'package:acorn_client/src/protocol/localdates.dart' as _i8;
import 'package:acorn_client/src/protocol/oceans.dart' as _i9;
import 'package:acorn_client/src/protocol/organisations.dart' as _i10;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i11;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i12;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i13;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i14;
import 'package:acorn_client/src/protocol/p_people.dart' as _i15;
import 'package:acorn_client/src/protocol/p_place.dart' as _i16;
import 'package:acorn_client/src/protocol/p_seas.dart' as _i17;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i18;
import 'package:acorn_client/src/protocol/p-user.dart' as _i19;
import 'package:acorn_client/src/protocol/pays.dart' as _i20;
import 'package:acorn_client/src/protocol/people.dart' as _i21;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i22;
import 'package:acorn_client/src/protocol/places.dart' as _i23;
import 'package:acorn_client/src/protocol/principal.dart' as _i24;
import 'package:acorn_client/src/protocol/seas.dart' as _i25;
import 'package:acorn_client/src/protocol/stars.dart' as _i26;
import 'package:acorn_client/src/protocol/stars_involved.dart' as _i27;
import 'package:acorn_client/src/protocol/terms.dart' as _i28;
import 'package:acorn_client/src/protocol/universe.dart' as _i29;
import 'package:acorn_client/src/protocol/with_globe.dart' as _i30;
import 'package:acorn_client/src/protocol/with_map.dart' as _i31;
import 'package:serverpod_auth_client/module.dart' as _i32;
import 'dart:io' as _i33;
import 'protocol.dart' as _i34;

class _EndpointAttInvolved extends _i1.EndpointRef {
  _EndpointAttInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'attInvolved';

  _i2.Future<List<_i3.AttsInvolved>> getAttsInvolved({String? keyword}) =>
      caller.callServerEndpoint<List<_i3.AttsInvolved>>(
        'attInvolved',
        'getAttsInvolved',
        {'keyword': keyword},
      );

  _i2.Future<int> addAttsInvolved(_i3.AttsInvolved attsInvolved) =>
      caller.callServerEndpoint<int>(
        'attInvolved',
        'addAttsInvolved',
        {'attsInvolved': attsInvolved},
      );
}

class _EndpointCountryInvolved extends _i1.EndpointRef {
  _EndpointCountryInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'countryInvolved';

  _i2.Future<List<_i4.CountryInvolved>> getCInvolved({String? keyword}) =>
      caller.callServerEndpoint<List<_i4.CountryInvolved>>(
        'countryInvolved',
        'getCInvolved',
        {'keyword': keyword},
      );

  _i2.Future<int> addCInvolved(_i4.CountryInvolved cInvolved) =>
      caller.callServerEndpoint<int>(
        'countryInvolved',
        'addCInvolved',
        {'cInvolved': cInvolved},
      );
}

class _EndpointCategories extends _i1.EndpointRef {
  _EndpointCategories(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'categories';

  _i2.Future<List<_i5.Categories>> getCategories({String? keyword}) =>
      caller.callServerEndpoint<List<_i5.Categories>>(
        'categories',
        'getCategories',
        {'keyword': keyword},
      );

  _i2.Future<int> addCategories(_i5.Categories categories) =>
      caller.callServerEndpoint<int>(
        'categories',
        'addCategories',
        {'categories': categories},
      );
}

class _EndpointCountryatts extends _i1.EndpointRef {
  _EndpointCountryatts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'countryatts';

  _i2.Future<List<_i6.Countryatts>> getCountryATTs({String? keyword}) =>
      caller.callServerEndpoint<List<_i6.Countryatts>>(
        'countryatts',
        'getCountryATTs',
        {'keyword': keyword},
      );

  _i2.Future<int> addCountryATTs(_i6.Countryatts countryatts) =>
      caller.callServerEndpoint<int>(
        'countryatts',
        'addCountryATTs',
        {'countryatts': countryatts},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointLieux extends _i1.EndpointRef {
  _EndpointLieux(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'lieux';

  _i2.Future<List<_i7.Lieux>> getLieux({String? keyword}) =>
      caller.callServerEndpoint<List<_i7.Lieux>>(
        'lieux',
        'getLieux',
        {'keyword': keyword},
      );

  _i2.Future<int> addLieux(_i7.Lieux lieux) => caller.callServerEndpoint<int>(
        'lieux',
        'addLieux',
        {'lieux': lieux},
      );
}

class _EndpointLocalDates extends _i1.EndpointRef {
  _EndpointLocalDates(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'localDates';

  _i2.Future<List<_i8.LocalDates>> getLocalDates({String? keyword}) =>
      caller.callServerEndpoint<List<_i8.LocalDates>>(
        'localDates',
        'getLocalDates',
        {'keyword': keyword},
      );

  _i2.Future<int> addLocalDates(_i8.LocalDates localdates) =>
      caller.callServerEndpoint<int>(
        'localDates',
        'addLocalDates',
        {'localdates': localdates},
      );
}

class _EndpointOceans extends _i1.EndpointRef {
  _EndpointOceans(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'oceans';

  _i2.Future<List<_i9.Oceans>> getOceans({String? keyword}) =>
      caller.callServerEndpoint<List<_i9.Oceans>>(
        'oceans',
        'getOceans',
        {'keyword': keyword},
      );

  _i2.Future<int> addOceans(_i9.Oceans oceans) =>
      caller.callServerEndpoint<int>(
        'oceans',
        'addOceans',
        {'oceans': oceans},
      );
}

class _EndpointOrganisations extends _i1.EndpointRef {
  _EndpointOrganisations(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'organisations';

  _i2.Future<List<_i10.Organisations>> getOrganisations({String? keyword}) =>
      caller.callServerEndpoint<List<_i10.Organisations>>(
        'organisations',
        'getOrganisations',
        {'keyword': keyword},
      );

  _i2.Future<int> addOrganisations(_i10.Organisations organisations) =>
      caller.callServerEndpoint<int>(
        'organisations',
        'addOrganisations',
        {'organisations': organisations},
      );
}

class _EndpointPrincipalCategories extends _i1.EndpointRef {
  _EndpointPrincipalCategories(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalCategories';

  _i2.Future<List<_i11.PrincipalCategories>> getPCategories(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i11.PrincipalCategories>>(
        'principalCategories',
        'getPCategories',
        {'keyword': keyword},
      );

  _i2.Future<int> addPCategories(_i11.PrincipalCategories pCategories) =>
      caller.callServerEndpoint<int>(
        'principalCategories',
        'addPCategories',
        {'pCategories': pCategories},
      );
}

class _EndpointPrincipalCatt extends _i1.EndpointRef {
  _EndpointPrincipalCatt(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalCatt';

  _i2.Future<List<_i12.PrincipalCatt>> getPCatt({String? keyword}) =>
      caller.callServerEndpoint<List<_i12.PrincipalCatt>>(
        'principalCatt',
        'getPCatt',
        {'keyword': keyword},
      );

  _i2.Future<int> addPCatt(_i12.PrincipalCatt pCatt) =>
      caller.callServerEndpoint<int>(
        'principalCatt',
        'addPCatt',
        {'pCatt': pCatt},
      );
}

class _EndpointPrincipalOrgs extends _i1.EndpointRef {
  _EndpointPrincipalOrgs(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalOrgs';

  _i2.Future<List<_i13.PrincipalOrgs>> getPOrgs({String? keyword}) =>
      caller.callServerEndpoint<List<_i13.PrincipalOrgs>>(
        'principalOrgs',
        'getPOrgs',
        {'keyword': keyword},
      );

  _i2.Future<int> addPOrgs(_i13.PrincipalOrgs pOrgs) =>
      caller.callServerEndpoint<int>(
        'principalOrgs',
        'addPOrgs',
        {'pOrgs': pOrgs},
      );
}

class _EndpointPrincipalPatt extends _i1.EndpointRef {
  _EndpointPrincipalPatt(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPatt';

  _i2.Future<List<_i14.PrincipalPatt>> getPPatt({String? keyword}) =>
      caller.callServerEndpoint<List<_i14.PrincipalPatt>>(
        'principalPatt',
        'getPPatt',
        {'keyword': keyword},
      );

  _i2.Future<int> addPPatt(_i14.PrincipalPatt pPatt) =>
      caller.callServerEndpoint<int>(
        'principalPatt',
        'addPPatt',
        {'pPatt': pPatt},
      );
}

class _EndpointPrincipalPeople extends _i1.EndpointRef {
  _EndpointPrincipalPeople(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPeople';

  _i2.Future<List<_i15.PrincipalPeople>> getPPeople({String? keyword}) =>
      caller.callServerEndpoint<List<_i15.PrincipalPeople>>(
        'principalPeople',
        'getPPeople',
        {'keyword': keyword},
      );

  _i2.Future<int> addPPeople(_i15.PrincipalPeople principalPeople) =>
      caller.callServerEndpoint<int>(
        'principalPeople',
        'addPPeople',
        {'principalPeople': principalPeople},
      );
}

class _EndpointPrincipalPlace extends _i1.EndpointRef {
  _EndpointPrincipalPlace(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPlace';

  _i2.Future<List<_i16.PrincipalPlace>> getPPlace({String? keyword}) =>
      caller.callServerEndpoint<List<_i16.PrincipalPlace>>(
        'principalPlace',
        'getPPlace',
        {'keyword': keyword},
      );

  _i2.Future<int> addPPlace(_i16.PrincipalPlace principalPlace) =>
      caller.callServerEndpoint<int>(
        'principalPlace',
        'addPPlace',
        {'principalPlace': principalPlace},
      );

  _i2.Future<List<dynamic>> getPPlaceNarrowed() =>
      caller.callServerEndpoint<List<dynamic>>(
        'principalPlace',
        'getPPlaceNarrowed',
        {},
      );
}

class _EndpointPrincipalSeas extends _i1.EndpointRef {
  _EndpointPrincipalSeas(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalSeas';

  _i2.Future<List<_i17.PrincipalSeas>> getPrincipalSeas({String? keyword}) =>
      caller.callServerEndpoint<List<_i17.PrincipalSeas>>(
        'principalSeas',
        'getPrincipalSeas',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalSeas(_i17.PrincipalSeas principalSeas) =>
      caller.callServerEndpoint<int>(
        'principalSeas',
        'addPrincipalSeas',
        {'principalSeas': principalSeas},
      );
}

class _EndpointPrincipalTerms extends _i1.EndpointRef {
  _EndpointPrincipalTerms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalTerms';

  _i2.Future<List<_i18.PrincipalTerms>> getPTerms({String? keyword}) =>
      caller.callServerEndpoint<List<_i18.PrincipalTerms>>(
        'principalTerms',
        'getPTerms',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalTerms(_i18.PrincipalTerms pTerms) =>
      caller.callServerEndpoint<int>(
        'principalTerms',
        'addPrincipalTerms',
        {'pTerms': pTerms},
      );
}

class _EndpointPrincipalUser extends _i1.EndpointRef {
  _EndpointPrincipalUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalUser';

  _i2.Future<List<_i19.PrincipalUser>> getPUserId({int? userId}) =>
      caller.callServerEndpoint<List<_i19.PrincipalUser>>(
        'principalUser',
        'getPUserId',
        {'userId': userId},
      );

  _i2.Future<int> addPrincipalUser(_i19.PrincipalUser pUser) =>
      caller.callServerEndpoint<int>(
        'principalUser',
        'addPrincipalUser',
        {'pUser': pUser},
      );
}

class _EndpointPays extends _i1.EndpointRef {
  _EndpointPays(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'pays';

  _i2.Future<List<_i20.Pays>> getPays({String? keyword}) =>
      caller.callServerEndpoint<List<_i20.Pays>>(
        'pays',
        'getPays',
        {'keyword': keyword},
      );

  _i2.Future<int> addPays(_i20.Pays pays) => caller.callServerEndpoint<int>(
        'pays',
        'addPays',
        {'pays': pays},
      );
}

class _EndpointPeople extends _i1.EndpointRef {
  _EndpointPeople(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'people';

  _i2.Future<List<_i21.People>> getPeople({String? keyword}) =>
      caller.callServerEndpoint<List<_i21.People>>(
        'people',
        'getPeople',
        {'keyword': keyword},
      );

  _i2.Future<int> addPeople(_i21.People people) =>
      caller.callServerEndpoint<int>(
        'people',
        'addPeople',
        {'people': people},
      );
}

class _EndpointPlaceatts extends _i1.EndpointRef {
  _EndpointPlaceatts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'placeatts';

  _i2.Future<List<_i22.Placeatts>> getPlaceATTs({String? keyword}) =>
      caller.callServerEndpoint<List<_i22.Placeatts>>(
        'placeatts',
        'getPlaceATTs',
        {'keyword': keyword},
      );

  _i2.Future<int> addPlaceATTs(_i22.Placeatts placeatts) =>
      caller.callServerEndpoint<int>(
        'placeatts',
        'addPlaceATTs',
        {'placeatts': placeatts},
      );
}

class _EndpointPlaces extends _i1.EndpointRef {
  _EndpointPlaces(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'places';

  _i2.Future<List<_i23.Places>> getPlaces({String? keyword}) =>
      caller.callServerEndpoint<List<_i23.Places>>(
        'places',
        'getPlaces',
        {'keyword': keyword},
      );

  _i2.Future<int> addPlaces(_i23.Places places) =>
      caller.callServerEndpoint<int>(
        'places',
        'addPlaces',
        {'places': places},
      );

  _i2.Future<List<_i23.Places>> getPlacesInv({List<dynamic>? placeInvIds}) =>
      caller.callServerEndpoint<List<_i23.Places>>(
        'places',
        'getPlacesInv',
        {'placeInvIds': placeInvIds},
      );
}

class _EndpointPrincipal extends _i1.EndpointRef {
  _EndpointPrincipal(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principal';

  _i2.Future<int> addPrincipal(_i24.Principal principal) =>
      caller.callServerEndpoint<int>(
        'principal',
        'addPrincipal',
        {'principal': principal},
      );

  _i2.Future<List<_i24.Principal>> getPrincipal({List<String>? keywords}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipal',
        {'keywords': keywords},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPeriod(
          {List<String>? keywords}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPeriod',
        {'keywords': keywords},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPrecise(
          {List<String>? keywords}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPrecise',
        {'keywords': keywords},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByCattId({List<int>? cattIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByCattId',
        {'cattIds': cattIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPattId({List<int>? pattIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPattId',
        {'pattIds': pattIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPersonId(
          {List<int>? personIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPersonId',
        {'personIds': personIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPInvolvedId(
          {List<int>? pInvolvedIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPInvolvedId',
        {'pInvolvedIds': pInvolvedIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByCInvolvedId(
          {List<int>? cInvolvedIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByCInvolvedId',
        {'cInvolvedIds': cInvolvedIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByAttInvolvedId(
          {List<int>? attInvolvedIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByAttInvolvedId',
        {'attInvolvedIds': attInvolvedIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByStarsInvolvedId(
          {List<int>? starInvolvedIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByStarsInvolvedId',
        {'starInvolvedIds': starInvolvedIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByOrgsId({List<int>? orgIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByOrgsId',
        {'orgIds': orgIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByCategoryId(
          {List<int>? categoryIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByCategoryId',
        {'categoryIds': categoryIds},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByTermId({List<int>? termIds}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByTermId',
        {'termIds': termIds},
      );

  ///単一user version
  _i2.Future<List<_i24.Principal>> getPrincipalByUserId({int? userId}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByUserId',
        {'userId': userId},
      );
}

class _EndpointSeas extends _i1.EndpointRef {
  _EndpointSeas(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'seas';

  _i2.Future<List<_i25.Seas>> getSeas({String? keyword}) =>
      caller.callServerEndpoint<List<_i25.Seas>>(
        'seas',
        'getSeas',
        {'keyword': keyword},
      );

  _i2.Future<int> addSeas(_i25.Seas seas) => caller.callServerEndpoint<int>(
        'seas',
        'addSeas',
        {'seas': seas},
      );
}

class _EndpointStars extends _i1.EndpointRef {
  _EndpointStars(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'stars';

  _i2.Future<List<_i26.Stars>> getStars({String? keyword}) =>
      caller.callServerEndpoint<List<_i26.Stars>>(
        'stars',
        'getStars',
        {'keyword': keyword},
      );

  _i2.Future<int> addStars(_i26.Stars stars) => caller.callServerEndpoint<int>(
        'stars',
        'addStars',
        {'stars': stars},
      );
}

class _EndpointStarsInvolved extends _i1.EndpointRef {
  _EndpointStarsInvolved(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'starsInvolved';

  _i2.Future<List<_i27.StarsInvolved>> getStarsInvolved({String? keyword}) =>
      caller.callServerEndpoint<List<_i27.StarsInvolved>>(
        'starsInvolved',
        'getStarsInvolved',
        {'keyword': keyword},
      );

  _i2.Future<int> addStarsInvolved(_i27.StarsInvolved starsInvolved) =>
      caller.callServerEndpoint<int>(
        'starsInvolved',
        'addStarsInvolved',
        {'starsInvolved': starsInvolved},
      );
}

class _EndpointTerms extends _i1.EndpointRef {
  _EndpointTerms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'terms';

  _i2.Future<List<_i28.Terms>> getTerms({String? keyword}) =>
      caller.callServerEndpoint<List<_i28.Terms>>(
        'terms',
        'getTerms',
        {'keyword': keyword},
      );

  _i2.Future<int> addTerms(_i28.Terms terms) => caller.callServerEndpoint<int>(
        'terms',
        'addTerms',
        {'terms': terms},
      );
}

class _EndpointUniverse extends _i1.EndpointRef {
  _EndpointUniverse(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'universe';

  _i2.Future<List<_i29.Universe>> getUniverse({String? keyword}) =>
      caller.callServerEndpoint<List<_i29.Universe>>(
        'universe',
        'getUniverse',
        {'keyword': keyword},
      );

  _i2.Future<int> addUniverse(_i29.Universe universe) =>
      caller.callServerEndpoint<int>(
        'universe',
        'addUniverse',
        {'universe': universe},
      );
}

class _EndpointWithGlobe extends _i1.EndpointRef {
  _EndpointWithGlobe(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'withGlobe';

  _i2.Future<List<_i30.WithGlobe>> getWithGlobe({int? keynumber}) =>
      caller.callServerEndpoint<List<_i30.WithGlobe>>(
        'withGlobe',
        'getWithGlobe',
        {'keynumber': keynumber},
      );

  _i2.Future<int> addWithGlobe(_i30.WithGlobe withGlobe) =>
      caller.callServerEndpoint<int>(
        'withGlobe',
        'addWithGlobe',
        {'withGlobe': withGlobe},
      );
}

class _EndpointWithMap extends _i1.EndpointRef {
  _EndpointWithMap(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'withMap';

  _i2.Future<List<_i31.WithMap>> getWithMap({int? keynumber}) =>
      caller.callServerEndpoint<List<_i31.WithMap>>(
        'withMap',
        'getWithMap',
        {'keynumber': keynumber},
      );

  _i2.Future<int> addWithMap(_i31.WithMap withMap) =>
      caller.callServerEndpoint<int>(
        'withMap',
        'addWithMap',
        {'withMap': withMap},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i32.Caller(client);
  }

  late final _i32.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i33.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i34.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    attInvolved = _EndpointAttInvolved(this);
    countryInvolved = _EndpointCountryInvolved(this);
    categories = _EndpointCategories(this);
    countryatts = _EndpointCountryatts(this);
    example = _EndpointExample(this);
    lieux = _EndpointLieux(this);
    localDates = _EndpointLocalDates(this);
    oceans = _EndpointOceans(this);
    organisations = _EndpointOrganisations(this);
    principalCategories = _EndpointPrincipalCategories(this);
    principalCatt = _EndpointPrincipalCatt(this);
    principalOrgs = _EndpointPrincipalOrgs(this);
    principalPatt = _EndpointPrincipalPatt(this);
    principalPeople = _EndpointPrincipalPeople(this);
    principalPlace = _EndpointPrincipalPlace(this);
    principalSeas = _EndpointPrincipalSeas(this);
    principalTerms = _EndpointPrincipalTerms(this);
    principalUser = _EndpointPrincipalUser(this);
    pays = _EndpointPays(this);
    people = _EndpointPeople(this);
    placeatts = _EndpointPlaceatts(this);
    places = _EndpointPlaces(this);
    principal = _EndpointPrincipal(this);
    seas = _EndpointSeas(this);
    stars = _EndpointStars(this);
    starsInvolved = _EndpointStarsInvolved(this);
    terms = _EndpointTerms(this);
    universe = _EndpointUniverse(this);
    withGlobe = _EndpointWithGlobe(this);
    withMap = _EndpointWithMap(this);
    modules = _Modules(this);
  }

  late final _EndpointAttInvolved attInvolved;

  late final _EndpointCountryInvolved countryInvolved;

  late final _EndpointCategories categories;

  late final _EndpointCountryatts countryatts;

  late final _EndpointExample example;

  late final _EndpointLieux lieux;

  late final _EndpointLocalDates localDates;

  late final _EndpointOceans oceans;

  late final _EndpointOrganisations organisations;

  late final _EndpointPrincipalCategories principalCategories;

  late final _EndpointPrincipalCatt principalCatt;

  late final _EndpointPrincipalOrgs principalOrgs;

  late final _EndpointPrincipalPatt principalPatt;

  late final _EndpointPrincipalPeople principalPeople;

  late final _EndpointPrincipalPlace principalPlace;

  late final _EndpointPrincipalSeas principalSeas;

  late final _EndpointPrincipalTerms principalTerms;

  late final _EndpointPrincipalUser principalUser;

  late final _EndpointPays pays;

  late final _EndpointPeople people;

  late final _EndpointPlaceatts placeatts;

  late final _EndpointPlaces places;

  late final _EndpointPrincipal principal;

  late final _EndpointSeas seas;

  late final _EndpointStars stars;

  late final _EndpointStarsInvolved starsInvolved;

  late final _EndpointTerms terms;

  late final _EndpointUniverse universe;

  late final _EndpointWithGlobe withGlobe;

  late final _EndpointWithMap withMap;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'attInvolved': attInvolved,
        'countryInvolved': countryInvolved,
        'categories': categories,
        'countryatts': countryatts,
        'example': example,
        'lieux': lieux,
        'localDates': localDates,
        'oceans': oceans,
        'organisations': organisations,
        'principalCategories': principalCategories,
        'principalCatt': principalCatt,
        'principalOrgs': principalOrgs,
        'principalPatt': principalPatt,
        'principalPeople': principalPeople,
        'principalPlace': principalPlace,
        'principalSeas': principalSeas,
        'principalTerms': principalTerms,
        'principalUser': principalUser,
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
