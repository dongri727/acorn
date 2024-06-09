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
import 'detail.dart' as _i6;
import 'japanese.dart' as _i7;
import 'myclass.dart' as _i8;
import 'oceans.dart' as _i9;
import 'organisations.dart' as _i10;
import 'p-user.dart' as _i11;
import 'p_categories.dart' as _i12;
import 'p_catt.dart' as _i13;
import 'p_detail.dart' as _i14;
import 'p_involved.dart' as _i15;
import 'p_orgs.dart' as _i16;
import 'p_patt.dart' as _i17;
import 'p_people.dart' as _i18;
import 'p_terms.dart' as _i19;
import 'patts_involved.dart' as _i20;
import 'pays.dart' as _i21;
import 'people.dart' as _i22;
import 'placeatts.dart' as _i23;
import 'places.dart' as _i24;
import 'principal.dart' as _i25;
import 'seas.dart' as _i26;
import 'stars.dart' as _i27;
import 'stars_involved.dart' as _i28;
import 'terms.dart' as _i29;
import 'universe.dart' as _i30;
import 'with_globe.dart' as _i31;
import 'with_map.dart' as _i32;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i33;
import 'package:acorn_client/src/protocol/categories.dart' as _i34;
import 'package:acorn_client/src/protocol/catts_involved.dart' as _i35;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i36;
import 'package:acorn_client/src/protocol/detail.dart' as _i37;
import 'package:acorn_client/src/protocol/japanese.dart' as _i38;
import 'package:acorn_client/src/protocol/oceans.dart' as _i39;
import 'package:acorn_client/src/protocol/organisations.dart' as _i40;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i41;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i42;
import 'package:acorn_client/src/protocol/p_detail.dart' as _i43;
import 'package:acorn_client/src/protocol/p_involved.dart' as _i44;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i45;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i46;
import 'package:acorn_client/src/protocol/p_people.dart' as _i47;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i48;
import 'package:acorn_client/src/protocol/p-user.dart' as _i49;
import 'package:acorn_client/src/protocol/patts_involved.dart' as _i50;
import 'package:acorn_client/src/protocol/pays.dart' as _i51;
import 'package:acorn_client/src/protocol/people.dart' as _i52;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i53;
import 'package:acorn_client/src/protocol/places.dart' as _i54;
import 'package:acorn_client/src/protocol/principal.dart' as _i55;
import 'package:acorn_client/src/protocol/seas.dart' as _i56;
import 'package:acorn_client/src/protocol/stars.dart' as _i57;
import 'package:acorn_client/src/protocol/stars_involved.dart' as _i58;
import 'package:acorn_client/src/protocol/terms.dart' as _i59;
import 'package:acorn_client/src/protocol/universe.dart' as _i60;
import 'package:acorn_client/src/protocol/with_globe.dart' as _i61;
import 'package:acorn_client/src/protocol/with_map.dart' as _i62;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i63;
export 'c_involved.dart';
export 'categories.dart';
export 'catts_involved.dart';
export 'countryatts.dart';
export 'detail.dart';
export 'japanese.dart';
export 'myclass.dart';
export 'oceans.dart';
export 'organisations.dart';
export 'p-user.dart';
export 'p_categories.dart';
export 'p_catt.dart';
export 'p_detail.dart';
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

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.CountryInvolved) {
      return _i2.CountryInvolved.fromJson(data) as T;
    }
    if (t == _i3.Categories) {
      return _i3.Categories.fromJson(data) as T;
    }
    if (t == _i4.CattsInvolved) {
      return _i4.CattsInvolved.fromJson(data) as T;
    }
    if (t == _i5.Countryatts) {
      return _i5.Countryatts.fromJson(data) as T;
    }
    if (t == _i6.Detail) {
      return _i6.Detail.fromJson(data) as T;
    }
    if (t == _i7.Japanese) {
      return _i7.Japanese.fromJson(data) as T;
    }
    if (t == _i8.MyClass) {
      return _i8.MyClass.fromJson(data) as T;
    }
    if (t == _i9.Oceans) {
      return _i9.Oceans.fromJson(data) as T;
    }
    if (t == _i10.Organisations) {
      return _i10.Organisations.fromJson(data) as T;
    }
    if (t == _i11.PrincipalUser) {
      return _i11.PrincipalUser.fromJson(data) as T;
    }
    if (t == _i12.PrincipalCategories) {
      return _i12.PrincipalCategories.fromJson(data) as T;
    }
    if (t == _i13.PrincipalCatt) {
      return _i13.PrincipalCatt.fromJson(data) as T;
    }
    if (t == _i14.PrincipalDetail) {
      return _i14.PrincipalDetail.fromJson(data) as T;
    }
    if (t == _i15.PlaceInvolved) {
      return _i15.PlaceInvolved.fromJson(data) as T;
    }
    if (t == _i16.PrincipalOrgs) {
      return _i16.PrincipalOrgs.fromJson(data) as T;
    }
    if (t == _i17.PrincipalPatt) {
      return _i17.PrincipalPatt.fromJson(data) as T;
    }
    if (t == _i18.PrincipalPeople) {
      return _i18.PrincipalPeople.fromJson(data) as T;
    }
    if (t == _i19.PrincipalTerms) {
      return _i19.PrincipalTerms.fromJson(data) as T;
    }
    if (t == _i20.PattsInvolved) {
      return _i20.PattsInvolved.fromJson(data) as T;
    }
    if (t == _i21.Pays) {
      return _i21.Pays.fromJson(data) as T;
    }
    if (t == _i22.People) {
      return _i22.People.fromJson(data) as T;
    }
    if (t == _i23.Placeatts) {
      return _i23.Placeatts.fromJson(data) as T;
    }
    if (t == _i24.Places) {
      return _i24.Places.fromJson(data) as T;
    }
    if (t == _i25.Principal) {
      return _i25.Principal.fromJson(data) as T;
    }
    if (t == _i26.Seas) {
      return _i26.Seas.fromJson(data) as T;
    }
    if (t == _i27.Stars) {
      return _i27.Stars.fromJson(data) as T;
    }
    if (t == _i28.StarsInvolved) {
      return _i28.StarsInvolved.fromJson(data) as T;
    }
    if (t == _i29.Terms) {
      return _i29.Terms.fromJson(data) as T;
    }
    if (t == _i30.Universe) {
      return _i30.Universe.fromJson(data) as T;
    }
    if (t == _i31.WithGlobe) {
      return _i31.WithGlobe.fromJson(data) as T;
    }
    if (t == _i32.WithMap) {
      return _i32.WithMap.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.CountryInvolved?>()) {
      return (data != null ? _i2.CountryInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Categories?>()) {
      return (data != null ? _i3.Categories.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CattsInvolved?>()) {
      return (data != null ? _i4.CattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Countryatts?>()) {
      return (data != null ? _i5.Countryatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Detail?>()) {
      return (data != null ? _i6.Detail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Japanese?>()) {
      return (data != null ? _i7.Japanese.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.MyClass?>()) {
      return (data != null ? _i8.MyClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Oceans?>()) {
      return (data != null ? _i9.Oceans.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Organisations?>()) {
      return (data != null ? _i10.Organisations.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.PrincipalUser?>()) {
      return (data != null ? _i11.PrincipalUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.PrincipalCategories?>()) {
      return (data != null ? _i12.PrincipalCategories.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i13.PrincipalCatt?>()) {
      return (data != null ? _i13.PrincipalCatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.PrincipalDetail?>()) {
      return (data != null ? _i14.PrincipalDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.PlaceInvolved?>()) {
      return (data != null ? _i15.PlaceInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.PrincipalOrgs?>()) {
      return (data != null ? _i16.PrincipalOrgs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.PrincipalPatt?>()) {
      return (data != null ? _i17.PrincipalPatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.PrincipalPeople?>()) {
      return (data != null ? _i18.PrincipalPeople.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.PrincipalTerms?>()) {
      return (data != null ? _i19.PrincipalTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.PattsInvolved?>()) {
      return (data != null ? _i20.PattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.Pays?>()) {
      return (data != null ? _i21.Pays.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.People?>()) {
      return (data != null ? _i22.People.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.Placeatts?>()) {
      return (data != null ? _i23.Placeatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.Places?>()) {
      return (data != null ? _i24.Places.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.Principal?>()) {
      return (data != null ? _i25.Principal.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.Seas?>()) {
      return (data != null ? _i26.Seas.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.Stars?>()) {
      return (data != null ? _i27.Stars.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.StarsInvolved?>()) {
      return (data != null ? _i28.StarsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.Terms?>()) {
      return (data != null ? _i29.Terms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.Universe?>()) {
      return (data != null ? _i30.Universe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.WithGlobe?>()) {
      return (data != null ? _i31.WithGlobe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.WithMap?>()) {
      return (data != null ? _i32.WithMap.fromJson(data) : null) as T;
    }
    if (t == List<_i33.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i33.CountryInvolved>(e))
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
    if (t == List<_i34.Categories>) {
      return (data as List).map((e) => deserialize<_i34.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i35.CattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i35.CattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i36.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i36.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i37.Detail>) {
      return (data as List).map((e) => deserialize<_i37.Detail>(e)).toList()
          as dynamic;
    }
    if (t == List<_i38.Japanese>) {
      return (data as List).map((e) => deserialize<_i38.Japanese>(e)).toList()
          as dynamic;
    }
    if (t == List<_i39.Oceans>) {
      return (data as List).map((e) => deserialize<_i39.Oceans>(e)).toList()
          as dynamic;
    }
    if (t == List<_i40.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i40.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i41.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i41.PrincipalCategories>(e))
          .toList() as dynamic;
    }
    if (t == List<_i42.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i42.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i43.PrincipalDetail>) {
      return (data as List)
          .map((e) => deserialize<_i43.PrincipalDetail>(e))
          .toList() as dynamic;
    }
    if (t == List<_i44.PlaceInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i44.PlaceInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i45.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i45.PrincipalOrgs>(e))
          .toList() as dynamic;
    }
    if (t == List<_i46.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i46.PrincipalPatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i47.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i47.PrincipalPeople>(e))
          .toList() as dynamic;
    }
    if (t == List<_i48.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i48.PrincipalTerms>(e))
          .toList() as dynamic;
    }
    if (t == List<_i49.PrincipalUser>) {
      return (data as List)
          .map((e) => deserialize<_i49.PrincipalUser>(e))
          .toList() as dynamic;
    }
    if (t == List<_i50.PattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i50.PattsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i51.Pays>) {
      return (data as List).map((e) => deserialize<_i51.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i52.People>) {
      return (data as List).map((e) => deserialize<_i52.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i53.Placeatts>) {
      return (data as List).map((e) => deserialize<_i53.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i54.Places>) {
      return (data as List).map((e) => deserialize<_i54.Places>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i55.Principal>) {
      return (data as List).map((e) => deserialize<_i55.Principal>(e)).toList()
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
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i56.Seas>) {
      return (data as List).map((e) => deserialize<_i56.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i57.Stars>) {
      return (data as List).map((e) => deserialize<_i57.Stars>(e)).toList()
          as dynamic;
    }
    if (t == List<_i58.StarsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i58.StarsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i59.Terms>) {
      return (data as List).map((e) => deserialize<_i59.Terms>(e)).toList()
          as dynamic;
    }
    if (t == List<_i60.Universe>) {
      return (data as List).map((e) => deserialize<_i60.Universe>(e)).toList()
          as dynamic;
    }
    if (t == List<_i61.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i61.WithGlobe>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i62.WithMap>) {
      return (data as List).map((e) => deserialize<_i62.WithMap>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as dynamic;
    }
    try {
      return _i63.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i63.Protocol().getClassNameForObject(data);
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
    if (data is _i6.Detail) {
      return 'Detail';
    }
    if (data is _i7.Japanese) {
      return 'Japanese';
    }
    if (data is _i8.MyClass) {
      return 'MyClass';
    }
    if (data is _i9.Oceans) {
      return 'Oceans';
    }
    if (data is _i10.Organisations) {
      return 'Organisations';
    }
    if (data is _i11.PrincipalUser) {
      return 'PrincipalUser';
    }
    if (data is _i12.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i13.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i14.PrincipalDetail) {
      return 'PrincipalDetail';
    }
    if (data is _i15.PlaceInvolved) {
      return 'PlaceInvolved';
    }
    if (data is _i16.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i17.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i18.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i19.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i20.PattsInvolved) {
      return 'PattsInvolved';
    }
    if (data is _i21.Pays) {
      return 'Pays';
    }
    if (data is _i22.People) {
      return 'People';
    }
    if (data is _i23.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i24.Places) {
      return 'Places';
    }
    if (data is _i25.Principal) {
      return 'Principal';
    }
    if (data is _i26.Seas) {
      return 'Seas';
    }
    if (data is _i27.Stars) {
      return 'Stars';
    }
    if (data is _i28.StarsInvolved) {
      return 'StarsInvolved';
    }
    if (data is _i29.Terms) {
      return 'Terms';
    }
    if (data is _i30.Universe) {
      return 'Universe';
    }
    if (data is _i31.WithGlobe) {
      return 'WithGlobe';
    }
    if (data is _i32.WithMap) {
      return 'WithMap';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i63.Protocol().deserializeByClassName(data);
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
    if (data['className'] == 'Detail') {
      return deserialize<_i6.Detail>(data['data']);
    }
    if (data['className'] == 'Japanese') {
      return deserialize<_i7.Japanese>(data['data']);
    }
    if (data['className'] == 'MyClass') {
      return deserialize<_i8.MyClass>(data['data']);
    }
    if (data['className'] == 'Oceans') {
      return deserialize<_i9.Oceans>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i10.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalUser') {
      return deserialize<_i11.PrincipalUser>(data['data']);
    }
    if (data['className'] == 'PrincipalCategories') {
      return deserialize<_i12.PrincipalCategories>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i13.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalDetail') {
      return deserialize<_i14.PrincipalDetail>(data['data']);
    }
    if (data['className'] == 'PlaceInvolved') {
      return deserialize<_i15.PlaceInvolved>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i16.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i17.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i18.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i19.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'PattsInvolved') {
      return deserialize<_i20.PattsInvolved>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i21.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i22.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i23.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i24.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i25.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i26.Seas>(data['data']);
    }
    if (data['className'] == 'Stars') {
      return deserialize<_i27.Stars>(data['data']);
    }
    if (data['className'] == 'StarsInvolved') {
      return deserialize<_i28.StarsInvolved>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i29.Terms>(data['data']);
    }
    if (data['className'] == 'Universe') {
      return deserialize<_i30.Universe>(data['data']);
    }
    if (data['className'] == 'WithGlobe') {
      return deserialize<_i31.WithGlobe>(data['data']);
    }
    if (data['className'] == 'WithMap') {
      return deserialize<_i32.WithMap>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
