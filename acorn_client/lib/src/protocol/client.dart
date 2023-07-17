/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:acorn_client/src/protocol/categories.dart' as _i3;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i4;
import 'package:acorn_client/src/protocol/lieux.dart' as _i5;
import 'package:acorn_client/src/protocol/organisations.dart' as _i6;
import 'package:acorn_client/src/protocol/people.dart' as _i7;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i8;
import 'package:acorn_client/src/protocol/places.dart' as _i9;
import 'package:acorn_client/src/protocol/principal.dart' as _i10;
import 'package:acorn_client/src/protocol/terms.dart' as _i11;
import 'dart:io' as _i12;
import 'protocol.dart' as _i13;

class _EndpointCategories extends _i1.EndpointRef {
  _EndpointCategories(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'categories';

  _i2.Future<List<_i3.Categories>> getCategories({String? keyword}) =>
      caller.callServerEndpoint<List<_i3.Categories>>(
        'categories',
        'getCategories',
        {'keyword': keyword},
      );

  _i2.Future<int> addCategories(_i3.Categories categories) =>
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

  _i2.Future<List<_i4.Countryatts>> getCountryATTs({String? keyword}) =>
      caller.callServerEndpoint<List<_i4.Countryatts>>(
        'countryatts',
        'getCountryATTs',
        {'keyword': keyword},
      );

  _i2.Future<int> addCountryATTs(_i4.Countryatts countryatts) =>
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

  _i2.Future<List<_i5.Lieux>> getLieux({String? keyword}) =>
      caller.callServerEndpoint<List<_i5.Lieux>>(
        'lieux',
        'getLieux',
        {'keyword': keyword},
      );

  _i2.Future<int> addLieux(_i5.Lieux lieux) => caller.callServerEndpoint<int>(
        'lieux',
        'addLieux',
        {'lieux': lieux},
      );
}

class _EndpointOrganisations extends _i1.EndpointRef {
  _EndpointOrganisations(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'organisations';

  _i2.Future<List<_i6.Organisations>> getOrganisations({String? keyword}) =>
      caller.callServerEndpoint<List<_i6.Organisations>>(
        'organisations',
        'getOrganisations',
        {'keyword': keyword},
      );

  _i2.Future<int> addOrganisations(_i6.Organisations organisations) =>
      caller.callServerEndpoint<int>(
        'organisations',
        'addOrganisations',
        {'organisations': organisations},
      );
}

class _EndpointPeople extends _i1.EndpointRef {
  _EndpointPeople(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'people';

  _i2.Future<List<_i7.People>> getPeople({String? keyword}) =>
      caller.callServerEndpoint<List<_i7.People>>(
        'people',
        'getPeople',
        {'keyword': keyword},
      );

  _i2.Future<int> addPeople(_i7.People people) =>
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

  _i2.Future<List<_i8.Placeatts>> getPlaceATTs({String? keyword}) =>
      caller.callServerEndpoint<List<_i8.Placeatts>>(
        'placeatts',
        'getPlaceATTs',
        {'keyword': keyword},
      );

  _i2.Future<int> addPlaceATTs(_i8.Placeatts placeatts) =>
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

  _i2.Future<List<_i9.Places>> getPlaces({String? keyword}) =>
      caller.callServerEndpoint<List<_i9.Places>>(
        'places',
        'getPlaces',
        {'keyword': keyword},
      );

  _i2.Future<int> addPlaces(_i9.Places places) =>
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

  _i2.Future<int> addPrincipal(_i10.Principal principal) =>
      caller.callServerEndpoint<int>(
        'principal',
        'addPrincipal',
        {'principal': principal},
      );

  _i2.Future<List<_i10.Principal>> getPrincipal({String? keyword}) =>
      caller.callServerEndpoint<List<_i10.Principal>>(
        'principal',
        'getPrincipal',
        {'keyword': keyword},
      );
}

class _EndpointTerms extends _i1.EndpointRef {
  _EndpointTerms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'terms';

  _i2.Future<List<_i11.Terms>> getTerms({String? keyword}) =>
      caller.callServerEndpoint<List<_i11.Terms>>(
        'terms',
        'getTerms',
        {'keyword': keyword},
      );

  _i2.Future<int> addTerms(_i11.Terms terms) => caller.callServerEndpoint<int>(
        'terms',
        'addTerms',
        {'terms': terms},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i12.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i13.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    categories = _EndpointCategories(this);
    countryatts = _EndpointCountryatts(this);
    example = _EndpointExample(this);
    lieux = _EndpointLieux(this);
    organisations = _EndpointOrganisations(this);
    people = _EndpointPeople(this);
    placeatts = _EndpointPlaceatts(this);
    places = _EndpointPlaces(this);
    principal = _EndpointPrincipal(this);
    terms = _EndpointTerms(this);
  }

  late final _EndpointCategories categories;

  late final _EndpointCountryatts countryatts;

  late final _EndpointExample example;

  late final _EndpointLieux lieux;

  late final _EndpointOrganisations organisations;

  late final _EndpointPeople people;

  late final _EndpointPlaceatts placeatts;

  late final _EndpointPlaces places;

  late final _EndpointPrincipal principal;

  late final _EndpointTerms terms;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'categories': categories,
        'countryatts': countryatts,
        'example': example,
        'lieux': lieux,
        'organisations': organisations,
        'people': people,
        'placeatts': placeatts,
        'places': places,
        'principal': principal,
        'terms': terms,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
