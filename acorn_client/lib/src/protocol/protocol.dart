/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'c_involved.dart' as _i2;
import 'categories.dart' as _i3;
import 'catts_involved.dart' as _i4;
import 'countryatts.dart' as _i5;
import 'myclass.dart' as _i6;
import 'oceans.dart' as _i7;
import 'organisations.dart' as _i8;
import 'p-user.dart' as _i9;
import 'p_categories.dart' as _i10;
import 'p_catt.dart' as _i11;
import 'p_involved.dart' as _i12;
import 'p_orgs.dart' as _i13;
import 'p_patt.dart' as _i14;
import 'p_people.dart' as _i15;
import 'p_terms.dart' as _i16;
import 'patts_involved.dart' as _i17;
import 'pays.dart' as _i18;
import 'people.dart' as _i19;
import 'placeatts.dart' as _i20;
import 'places.dart' as _i21;
import 'principal.dart' as _i22;
import 'seas.dart' as _i23;
import 'stars.dart' as _i24;
import 'stars_involved.dart' as _i25;
import 'terms.dart' as _i26;
import 'universe.dart' as _i27;
import 'with_globe.dart' as _i28;
import 'with_map.dart' as _i29;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i30;
import 'package:acorn_client/src/protocol/categories.dart' as _i31;
import 'package:acorn_client/src/protocol/catts_involved.dart' as _i32;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i33;
import 'package:acorn_client/src/protocol/oceans.dart' as _i34;
import 'package:acorn_client/src/protocol/organisations.dart' as _i35;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i36;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i37;
import 'package:acorn_client/src/protocol/p_involved.dart' as _i38;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i39;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i40;
import 'package:acorn_client/src/protocol/p_people.dart' as _i41;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i42;
import 'package:acorn_client/src/protocol/p-user.dart' as _i43;
import 'package:acorn_client/src/protocol/patts_involved.dart' as _i44;
import 'package:acorn_client/src/protocol/pays.dart' as _i45;
import 'package:acorn_client/src/protocol/people.dart' as _i46;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i47;
import 'package:acorn_client/src/protocol/places.dart' as _i48;
import 'package:acorn_client/src/protocol/principal.dart' as _i49;
import 'package:acorn_client/src/protocol/seas.dart' as _i50;
import 'package:acorn_client/src/protocol/stars.dart' as _i51;
import 'package:acorn_client/src/protocol/stars_involved.dart' as _i52;
import 'package:acorn_client/src/protocol/terms.dart' as _i53;
import 'package:acorn_client/src/protocol/universe.dart' as _i54;
import 'package:acorn_client/src/protocol/with_globe.dart' as _i55;
import 'package:acorn_client/src/protocol/with_map.dart' as _i56;
import 'package:serverpod_auth_client/module.dart' as _i57;
export 'c_involved.dart';
export 'categories.dart';
export 'catts_involved.dart';
export 'countryatts.dart';
export 'myclass.dart';
export 'oceans.dart';
export 'organisations.dart';
export 'p-user.dart';
export 'p_categories.dart';
export 'p_catt.dart';
export 'p_involved.dart';
export 'p_orgs.dart';
export 'p_patt.dart';
export 'p_people.dart';
export 'p_terms.dart';
export 'patts_involved.dart';
export 'pays.dart';
export 'people.dart';
export 'placeatts.dart';
export 'places.dart';
export 'principal.dart';
export 'seas.dart';
export 'stars.dart';
export 'stars_involved.dart';
export 'terms.dart';
export 'universe.dart';
export 'with_globe.dart';
export 'with_map.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.CountryInvolved) {
      return _i2.CountryInvolved.fromJson(data, this) as T;
    }
    if (t == _i3.Categories) {
      return _i3.Categories.fromJson(data, this) as T;
    }
    if (t == _i4.CattsInvolved) {
      return _i4.CattsInvolved.fromJson(data, this) as T;
    }
    if (t == _i5.Countryatts) {
      return _i5.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i6.MyClass) {
      return _i6.MyClass.fromJson(data, this) as T;
    }
    if (t == _i7.Oceans) {
      return _i7.Oceans.fromJson(data, this) as T;
    }
    if (t == _i8.Organisations) {
      return _i8.Organisations.fromJson(data, this) as T;
    }
    if (t == _i9.PrincipalUser) {
      return _i9.PrincipalUser.fromJson(data, this) as T;
    }
    if (t == _i10.PrincipalCategories) {
      return _i10.PrincipalCategories.fromJson(data, this) as T;
    }
    if (t == _i11.PrincipalCatt) {
      return _i11.PrincipalCatt.fromJson(data, this) as T;
    }
    if (t == _i12.PlaceInvolved) {
      return _i12.PlaceInvolved.fromJson(data, this) as T;
    }
    if (t == _i13.PrincipalOrgs) {
      return _i13.PrincipalOrgs.fromJson(data, this) as T;
    }
    if (t == _i14.PrincipalPatt) {
      return _i14.PrincipalPatt.fromJson(data, this) as T;
    }
    if (t == _i15.PrincipalPeople) {
      return _i15.PrincipalPeople.fromJson(data, this) as T;
    }
    if (t == _i16.PrincipalTerms) {
      return _i16.PrincipalTerms.fromJson(data, this) as T;
    }
    if (t == _i17.PattsInvolved) {
      return _i17.PattsInvolved.fromJson(data, this) as T;
    }
    if (t == _i18.Pays) {
      return _i18.Pays.fromJson(data, this) as T;
    }
    if (t == _i19.People) {
      return _i19.People.fromJson(data, this) as T;
    }
    if (t == _i20.Placeatts) {
      return _i20.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i21.Places) {
      return _i21.Places.fromJson(data, this) as T;
    }
    if (t == _i22.Principal) {
      return _i22.Principal.fromJson(data, this) as T;
    }
    if (t == _i23.Seas) {
      return _i23.Seas.fromJson(data, this) as T;
    }
    if (t == _i24.Stars) {
      return _i24.Stars.fromJson(data, this) as T;
    }
    if (t == _i25.StarsInvolved) {
      return _i25.StarsInvolved.fromJson(data, this) as T;
    }
    if (t == _i26.Terms) {
      return _i26.Terms.fromJson(data, this) as T;
    }
    if (t == _i27.Universe) {
      return _i27.Universe.fromJson(data, this) as T;
    }
    if (t == _i28.WithGlobe) {
      return _i28.WithGlobe.fromJson(data, this) as T;
    }
    if (t == _i29.WithMap) {
      return _i29.WithMap.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.CountryInvolved?>()) {
      return (data != null ? _i2.CountryInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i3.Categories?>()) {
      return (data != null ? _i3.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.CattsInvolved?>()) {
      return (data != null ? _i4.CattsInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Countryatts?>()) {
      return (data != null ? _i5.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.MyClass?>()) {
      return (data != null ? _i6.MyClass.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Oceans?>()) {
      return (data != null ? _i7.Oceans.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Organisations?>()) {
      return (data != null ? _i8.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i9.PrincipalUser?>()) {
      return (data != null ? _i9.PrincipalUser.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.PrincipalCategories?>()) {
      return (data != null
          ? _i10.PrincipalCategories.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i11.PrincipalCatt?>()) {
      return (data != null ? _i11.PrincipalCatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i12.PlaceInvolved?>()) {
      return (data != null ? _i12.PlaceInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.PrincipalOrgs?>()) {
      return (data != null ? _i13.PrincipalOrgs.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.PrincipalPatt?>()) {
      return (data != null ? _i14.PrincipalPatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.PrincipalPeople?>()) {
      return (data != null ? _i15.PrincipalPeople.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PrincipalTerms?>()) {
      return (data != null ? _i16.PrincipalTerms.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.PattsInvolved?>()) {
      return (data != null ? _i17.PattsInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i18.Pays?>()) {
      return (data != null ? _i18.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.People?>()) {
      return (data != null ? _i19.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i20.Placeatts?>()) {
      return (data != null ? _i20.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i21.Places?>()) {
      return (data != null ? _i21.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.Principal?>()) {
      return (data != null ? _i22.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.Seas?>()) {
      return (data != null ? _i23.Seas.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.Stars?>()) {
      return (data != null ? _i24.Stars.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.StarsInvolved?>()) {
      return (data != null ? _i25.StarsInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i26.Terms?>()) {
      return (data != null ? _i26.Terms.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i27.Universe?>()) {
      return (data != null ? _i27.Universe.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i28.WithGlobe?>()) {
      return (data != null ? _i28.WithGlobe.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i29.WithMap?>()) {
      return (data != null ? _i29.WithMap.fromJson(data, this) : null) as T;
    }
    if (t == List<_i30.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i30.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i31.Categories>) {
      return (data as List).map((e) => deserialize<_i31.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i32.CattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i32.CattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i33.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i33.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i34.Oceans>) {
      return (data as List).map((e) => deserialize<_i34.Oceans>(e)).toList()
          as dynamic;
    }
    if (t == List<_i35.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i35.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i36.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i36.PrincipalCategories>(e))
          .toList() as dynamic;
    }
    if (t == List<_i37.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i37.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i38.PlaceInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i38.PlaceInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i39.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i39.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i40.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i40.PrincipalPatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i41.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i41.PrincipalPeople>(e))
          .toList() as dynamic;
    }
    if (t == List<_i42.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i42.PrincipalTerms>(e))
          .toList() as dynamic;
    }
    if (t == List<_i43.PrincipalUser>) {
      return (data as List)
          .map((e) => deserialize<_i43.PrincipalUser>(e))
          .toList() as dynamic;
    }
    if (t == List<_i44.PattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i44.PattsInvolved>(e))
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
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
          : null) as dynamic;
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
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
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
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i50.Seas>) {
      return (data as List).map((e) => deserialize<_i50.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i51.Stars>) {
      return (data as List).map((e) => deserialize<_i51.Stars>(e)).toList()
          as dynamic;
    }
    if (t == List<_i52.StarsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i52.StarsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i53.Terms>) {
      return (data as List).map((e) => deserialize<_i53.Terms>(e)).toList()
          as dynamic;
    }
    if (t == List<_i54.Universe>) {
      return (data as List).map((e) => deserialize<_i54.Universe>(e)).toList()
          as dynamic;
    }
    if (t == List<_i55.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i55.WithGlobe>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i56.WithMap>) {
      return (data as List).map((e) => deserialize<_i56.WithMap>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    try {
      return _i57.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i57.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i3.Categories) {
      return 'Categories';
    }
    if (data is _i4.CattsInvolved) {
      return 'CattsInvolved';
    }
    if (data is _i5.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i6.MyClass) {
      return 'MyClass';
    }
    if (data is _i7.Oceans) {
      return 'Oceans';
    }
    if (data is _i8.Organisations) {
      return 'Organisations';
    }
    if (data is _i9.PrincipalUser) {
      return 'PrincipalUser';
    }
    if (data is _i10.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i11.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i12.PlaceInvolved) {
      return 'PlaceInvolved';
    }
    if (data is _i13.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i14.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i15.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i16.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i17.PattsInvolved) {
      return 'PattsInvolved';
    }
    if (data is _i18.Pays) {
      return 'Pays';
    }
    if (data is _i19.People) {
      return 'People';
    }
    if (data is _i20.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i21.Places) {
      return 'Places';
    }
    if (data is _i22.Principal) {
      return 'Principal';
    }
    if (data is _i23.Seas) {
      return 'Seas';
    }
    if (data is _i24.Stars) {
      return 'Stars';
    }
    if (data is _i25.StarsInvolved) {
      return 'StarsInvolved';
    }
    if (data is _i26.Terms) {
      return 'Terms';
    }
    if (data is _i27.Universe) {
      return 'Universe';
    }
    if (data is _i28.WithGlobe) {
      return 'WithGlobe';
    }
    if (data is _i29.WithMap) {
      return 'WithMap';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i57.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i2.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i3.Categories>(data['data']);
    }
    if (data['className'] == 'CattsInvolved') {
      return deserialize<_i4.CattsInvolved>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i5.Countryatts>(data['data']);
    }
    if (data['className'] == 'MyClass') {
      return deserialize<_i6.MyClass>(data['data']);
    }
    if (data['className'] == 'Oceans') {
      return deserialize<_i7.Oceans>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i8.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalUser') {
      return deserialize<_i9.PrincipalUser>(data['data']);
    }
    if (data['className'] == 'PrincipalCategories') {
      return deserialize<_i10.PrincipalCategories>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i11.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PlaceInvolved') {
      return deserialize<_i12.PlaceInvolved>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i13.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i14.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i15.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i16.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'PattsInvolved') {
      return deserialize<_i17.PattsInvolved>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i18.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i19.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i20.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i21.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i22.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i23.Seas>(data['data']);
    }
    if (data['className'] == 'Stars') {
      return deserialize<_i24.Stars>(data['data']);
    }
    if (data['className'] == 'StarsInvolved') {
      return deserialize<_i25.StarsInvolved>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i26.Terms>(data['data']);
    }
    if (data['className'] == 'Universe') {
      return deserialize<_i27.Universe>(data['data']);
    }
    if (data['className'] == 'WithGlobe') {
      return deserialize<_i28.WithGlobe>(data['data']);
    }
    if (data['className'] == 'WithMap') {
      return deserialize<_i29.WithMap>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
