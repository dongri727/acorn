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
import 'package:acorn_client/src/protocol/days.dart' as _i7;
import 'package:acorn_client/src/protocol/lieux.dart' as _i8;
import 'package:acorn_client/src/protocol/localdates.dart' as _i9;
import 'package:acorn_client/src/protocol/months.dart' as _i10;
import 'package:acorn_client/src/protocol/organisations.dart' as _i11;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i12;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i13;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i14;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i15;
import 'package:acorn_client/src/protocol/p_people.dart' as _i16;
import 'package:acorn_client/src/protocol/p_place.dart' as _i17;
import 'package:acorn_client/src/protocol/p_seas.dart' as _i18;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i19;
import 'package:acorn_client/src/protocol/pays.dart' as _i20;
import 'package:acorn_client/src/protocol/people.dart' as _i21;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i22;
import 'package:acorn_client/src/protocol/places.dart' as _i23;
import 'package:acorn_client/src/protocol/principal.dart' as _i24;
import 'package:acorn_client/src/protocol/seas.dart' as _i25;
import 'package:acorn_client/src/protocol/terms.dart' as _i26;
import 'dart:io' as _i27;
import 'protocol.dart' as _i28;

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

  _i2.Future<List<_i4.CountryInvolved>> getCountryInvolved({String? keyword}) =>
      caller.callServerEndpoint<List<_i4.CountryInvolved>>(
        'countryInvolved',
        'getCountryInvolved',
        {'keyword': keyword},
      );

  _i2.Future<int> addCountryInvolved(_i4.CountryInvolved countryInvolved) =>
      caller.callServerEndpoint<int>(
        'countryInvolved',
        'addCountryInvolved',
        {'countryInvolved': countryInvolved},
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

class _EndpointDays extends _i1.EndpointRef {
  _EndpointDays(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'days';

  _i2.Future<List<_i7.Days>> getDays({String? keyword}) =>
      caller.callServerEndpoint<List<_i7.Days>>(
        'days',
        'getDays',
        {'keyword': keyword},
      );

  _i2.Future<int> addDays(_i7.Days days) => caller.callServerEndpoint<int>(
        'days',
        'addDays',
        {'days': days},
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

  _i2.Future<List<_i8.Lieux>> getLieux({String? keyword}) =>
      caller.callServerEndpoint<List<_i8.Lieux>>(
        'lieux',
        'getLieux',
        {'keyword': keyword},
      );

  _i2.Future<int> addLieux(_i8.Lieux lieux) => caller.callServerEndpoint<int>(
        'lieux',
        'addLieux',
        {'lieux': lieux},
      );
}

class _EndpointLocalDates extends _i1.EndpointRef {
  _EndpointLocalDates(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'localDates';

  _i2.Future<List<_i9.LocalDates>> getLocalDates({String? keyword}) =>
      caller.callServerEndpoint<List<_i9.LocalDates>>(
        'localDates',
        'getLocalDates',
        {'keyword': keyword},
      );

  _i2.Future<int> addLocalDates(_i9.LocalDates localdates) =>
      caller.callServerEndpoint<int>(
        'localDates',
        'addLocalDates',
        {'localdates': localdates},
      );
}

class _EndpointMonths extends _i1.EndpointRef {
  _EndpointMonths(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'months';

  _i2.Future<List<_i10.Months>> getMonths({String? keyword}) =>
      caller.callServerEndpoint<List<_i10.Months>>(
        'months',
        'getMonths',
        {'keyword': keyword},
      );

  _i2.Future<int> addMonths(_i10.Months months) =>
      caller.callServerEndpoint<int>(
        'months',
        'addMonths',
        {'months': months},
      );
}

class _EndpointOrganisations extends _i1.EndpointRef {
  _EndpointOrganisations(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'organisations';

  _i2.Future<List<_i11.Organisations>> getOrganisations({String? keyword}) =>
      caller.callServerEndpoint<List<_i11.Organisations>>(
        'organisations',
        'getOrganisations',
        {'keyword': keyword},
      );

  _i2.Future<int> addOrganisations(_i11.Organisations organisations) =>
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

  _i2.Future<List<_i12.PrincipalCategories>> getPrincipalCategories(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i12.PrincipalCategories>>(
        'principalCategories',
        'getPrincipalCategories',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalCategories(
          _i12.PrincipalCategories principalCategories) =>
      caller.callServerEndpoint<int>(
        'principalCategories',
        'addPrincipalCategories',
        {'principalCategories': principalCategories},
      );
}

class _EndpointPrincipalCatt extends _i1.EndpointRef {
  _EndpointPrincipalCatt(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalCatt';

  _i2.Future<List<_i13.PrincipalCatt>> getPCatt({String? keyword}) =>
      caller.callServerEndpoint<List<_i13.PrincipalCatt>>(
        'principalCatt',
        'getPCatt',
        {'keyword': keyword},
      );

  _i2.Future<int> addPCatt(_i13.PrincipalCatt pCatt) =>
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

  _i2.Future<List<_i14.PrincipalOrgs>> getPrincipalOrganisations(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i14.PrincipalOrgs>>(
        'principalOrgs',
        'getPrincipalOrganisations',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalOrgs(_i14.PrincipalOrgs principalOrgs) =>
      caller.callServerEndpoint<int>(
        'principalOrgs',
        'addPrincipalOrgs',
        {'principalOrgs': principalOrgs},
      );
}

class _EndpointPrincipalPatt extends _i1.EndpointRef {
  _EndpointPrincipalPatt(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPatt';

  _i2.Future<List<_i15.PrincipalPatt>> getPPatt({String? keyword}) =>
      caller.callServerEndpoint<List<_i15.PrincipalPatt>>(
        'principalPatt',
        'getPPatt',
        {'keyword': keyword},
      );

  _i2.Future<int> addPPatt(_i15.PrincipalPatt pPatt) =>
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

  _i2.Future<List<_i16.PrincipalPeople>> getPrincipalPeople(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i16.PrincipalPeople>>(
        'principalPeople',
        'getPrincipalPeople',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalPeople(_i16.PrincipalPeople principalPeople) =>
      caller.callServerEndpoint<int>(
        'principalPeople',
        'addPrincipalPeople',
        {'principalPeople': principalPeople},
      );
}

class _EndpointPrincipalPlace extends _i1.EndpointRef {
  _EndpointPrincipalPlace(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalPlace';

  _i2.Future<List<Map<String, dynamic>>> getPrincipalPlace({String? keyword}) =>
      caller.callServerEndpoint<List<Map<String, dynamic>>>(
        'principalPlace',
        'getPrincipalPlace',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalPlace(_i17.PrincipalPlace principalPlace) =>
      caller.callServerEndpoint<int>(
        'principalPlace',
        'addPrincipalPlace',
        {'principalPlace': principalPlace},
      );
}

class _EndpointPrincipalSeas extends _i1.EndpointRef {
  _EndpointPrincipalSeas(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'principalSeas';

  _i2.Future<List<_i18.PrincipalSeas>> getPrincipalSeas({String? keyword}) =>
      caller.callServerEndpoint<List<_i18.PrincipalSeas>>(
        'principalSeas',
        'getPrincipalSeas',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalSeas(_i18.PrincipalSeas principalSeas) =>
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

  _i2.Future<List<_i19.PrincipalTerms>> getPrincipalTerms({String? keyword}) =>
      caller.callServerEndpoint<List<_i19.PrincipalTerms>>(
        'principalTerms',
        'getPrincipalTerms',
        {'keyword': keyword},
      );

  _i2.Future<int> addPrincipalTerms(_i19.PrincipalTerms principalTerms) =>
      caller.callServerEndpoint<int>(
        'principalTerms',
        'addPrincipalTerms',
        {'principalTerms': principalTerms},
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

  _i2.Future<List<_i24.Principal>> getPrincipalByPlaces(
          {List<int>? keynumbers}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPlaces',
        {'keynumbers': keynumbers},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByCatt(
          {List<int>? keynumbers}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByCatt',
        {'keynumbers': keynumbers},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPatt(
          {List<int>? keynumbers}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPatt',
        {'keynumbers': keynumbers},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByCategory(
          {List<int>? keynumbers}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByCategory',
        {'keynumbers': keynumbers},
      );

  _i2.Future<List<_i24.Principal>> getPrincipalByPeople(
          {List<int>? keynumbers}) =>
      caller.callServerEndpoint<List<_i24.Principal>>(
        'principal',
        'getPrincipalByPeople',
        {'keynumbers': keynumbers},
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

class _EndpointTerms extends _i1.EndpointRef {
  _EndpointTerms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'terms';

  _i2.Future<List<_i26.Terms>> getTerms({String? keyword}) =>
      caller.callServerEndpoint<List<_i26.Terms>>(
        'terms',
        'getTerms',
        {'keyword': keyword},
      );

  _i2.Future<int> addTerms(_i26.Terms terms) => caller.callServerEndpoint<int>(
        'terms',
        'addTerms',
        {'terms': terms},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i27.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i28.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    attInvolved = _EndpointAttInvolved(this);
    countryInvolved = _EndpointCountryInvolved(this);
    categories = _EndpointCategories(this);
    countryatts = _EndpointCountryatts(this);
    days = _EndpointDays(this);
    example = _EndpointExample(this);
    lieux = _EndpointLieux(this);
    localDates = _EndpointLocalDates(this);
    months = _EndpointMonths(this);
    organisations = _EndpointOrganisations(this);
    principalCategories = _EndpointPrincipalCategories(this);
    principalCatt = _EndpointPrincipalCatt(this);
    principalOrgs = _EndpointPrincipalOrgs(this);
    principalPatt = _EndpointPrincipalPatt(this);
    principalPeople = _EndpointPrincipalPeople(this);
    principalPlace = _EndpointPrincipalPlace(this);
    principalSeas = _EndpointPrincipalSeas(this);
    principalTerms = _EndpointPrincipalTerms(this);
    pays = _EndpointPays(this);
    people = _EndpointPeople(this);
    placeatts = _EndpointPlaceatts(this);
    places = _EndpointPlaces(this);
    principal = _EndpointPrincipal(this);
    seas = _EndpointSeas(this);
    terms = _EndpointTerms(this);
  }

  late final _EndpointAttInvolved attInvolved;

  late final _EndpointCountryInvolved countryInvolved;

  late final _EndpointCategories categories;

  late final _EndpointCountryatts countryatts;

  late final _EndpointDays days;

  late final _EndpointExample example;

  late final _EndpointLieux lieux;

  late final _EndpointLocalDates localDates;

  late final _EndpointMonths months;

  late final _EndpointOrganisations organisations;

  late final _EndpointPrincipalCategories principalCategories;

  late final _EndpointPrincipalCatt principalCatt;

  late final _EndpointPrincipalOrgs principalOrgs;

  late final _EndpointPrincipalPatt principalPatt;

  late final _EndpointPrincipalPeople principalPeople;

  late final _EndpointPrincipalPlace principalPlace;

  late final _EndpointPrincipalSeas principalSeas;

  late final _EndpointPrincipalTerms principalTerms;

  late final _EndpointPays pays;

  late final _EndpointPeople people;

  late final _EndpointPlaceatts placeatts;

  late final _EndpointPlaces places;

  late final _EndpointPrincipal principal;

  late final _EndpointSeas seas;

  late final _EndpointTerms terms;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'attInvolved': attInvolved,
        'countryInvolved': countryInvolved,
        'categories': categories,
        'countryatts': countryatts,
        'days': days,
        'example': example,
        'lieux': lieux,
        'localDates': localDates,
        'months': months,
        'organisations': organisations,
        'principalCategories': principalCategories,
        'principalCatt': principalCatt,
        'principalOrgs': principalOrgs,
        'principalPatt': principalPatt,
        'principalPeople': principalPeople,
        'principalPlace': principalPlace,
        'principalSeas': principalSeas,
        'principalTerms': principalTerms,
        'pays': pays,
        'people': people,
        'placeatts': placeatts,
        'places': places,
        'principal': principal,
        'seas': seas,
        'terms': terms,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
