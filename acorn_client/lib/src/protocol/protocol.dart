/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'att_involved.dart' as _i2;
import 'c_involved.dart' as _i3;
import 'categories.dart' as _i4;
import 'countryatts.dart' as _i5;
import 'days.dart' as _i6;
import 'example.dart' as _i7;
import 'lieux.dart' as _i8;
import 'localdates.dart' as _i9;
import 'months.dart' as _i10;
import 'organisations.dart' as _i11;
import 'p_categories.dart' as _i12;
import 'p_catt.dart' as _i13;
import 'p_orgs.dart' as _i14;
import 'p_patt.dart' as _i15;
import 'p_people.dart' as _i16;
import 'p_place.dart' as _i17;
import 'p_seas.dart' as _i18;
import 'p_terms.dart' as _i19;
import 'pays.dart' as _i20;
import 'people.dart' as _i21;
import 'placeatts.dart' as _i22;
import 'places.dart' as _i23;
import 'principal.dart' as _i24;
import 'seas.dart' as _i25;
import 'terms.dart' as _i26;
import 'protocol.dart' as _i27;
import 'package:acorn_client/src/protocol/att_involved.dart' as _i28;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i29;
import 'package:acorn_client/src/protocol/categories.dart' as _i30;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i31;
import 'package:acorn_client/src/protocol/days.dart' as _i32;
import 'package:acorn_client/src/protocol/lieux.dart' as _i33;
import 'package:acorn_client/src/protocol/localdates.dart' as _i34;
import 'package:acorn_client/src/protocol/months.dart' as _i35;
import 'package:acorn_client/src/protocol/organisations.dart' as _i36;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i37;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i38;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i39;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i40;
import 'package:acorn_client/src/protocol/p_people.dart' as _i41;
import 'package:acorn_client/src/protocol/p_seas.dart' as _i42;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i43;
import 'package:acorn_client/src/protocol/pays.dart' as _i44;
import 'package:acorn_client/src/protocol/people.dart' as _i45;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i46;
import 'package:acorn_client/src/protocol/places.dart' as _i47;
import 'package:acorn_client/src/protocol/principal.dart' as _i48;
import 'package:acorn_client/src/protocol/seas.dart' as _i49;
import 'package:acorn_client/src/protocol/terms.dart' as _i50;
export 'att_involved.dart';
export 'c_involved.dart';
export 'categories.dart';
export 'countryatts.dart';
export 'days.dart';
export 'example.dart';
export 'lieux.dart';
export 'localdates.dart';
export 'months.dart';
export 'organisations.dart';
export 'p_categories.dart';
export 'p_catt.dart';
export 'p_orgs.dart';
export 'p_patt.dart';
export 'p_people.dart';
export 'p_place.dart';
export 'p_seas.dart';
export 'p_terms.dart';
export 'pays.dart';
export 'people.dart';
export 'placeatts.dart';
export 'places.dart';
export 'principal.dart';
export 'seas.dart';
export 'terms.dart';
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
    if (t == _i2.AttsInvolved) {
      return _i2.AttsInvolved.fromJson(data, this) as T;
    }
    if (t == _i3.CountryInvolved) {
      return _i3.CountryInvolved.fromJson(data, this) as T;
    }
    if (t == _i4.Categories) {
      return _i4.Categories.fromJson(data, this) as T;
    }
    if (t == _i5.Countryatts) {
      return _i5.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i6.Days) {
      return _i6.Days.fromJson(data, this) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data, this) as T;
    }
    if (t == _i8.Lieux) {
      return _i8.Lieux.fromJson(data, this) as T;
    }
    if (t == _i9.LocalDates) {
      return _i9.LocalDates.fromJson(data, this) as T;
    }
    if (t == _i10.Months) {
      return _i10.Months.fromJson(data, this) as T;
    }
    if (t == _i11.Organisations) {
      return _i11.Organisations.fromJson(data, this) as T;
    }
    if (t == _i12.PrincipalCategories) {
      return _i12.PrincipalCategories.fromJson(data, this) as T;
    }
    if (t == _i13.PrincipalCatt) {
      return _i13.PrincipalCatt.fromJson(data, this) as T;
    }
    if (t == _i14.PrincipalOrgs) {
      return _i14.PrincipalOrgs.fromJson(data, this) as T;
    }
    if (t == _i15.PrincipalPatt) {
      return _i15.PrincipalPatt.fromJson(data, this) as T;
    }
    if (t == _i16.PrincipalPeople) {
      return _i16.PrincipalPeople.fromJson(data, this) as T;
    }
    if (t == _i17.PrincipalPlace) {
      return _i17.PrincipalPlace.fromJson(data, this) as T;
    }
    if (t == _i18.PrincipalSeas) {
      return _i18.PrincipalSeas.fromJson(data, this) as T;
    }
    if (t == _i19.PrincipalTerms) {
      return _i19.PrincipalTerms.fromJson(data, this) as T;
    }
    if (t == _i20.Pays) {
      return _i20.Pays.fromJson(data, this) as T;
    }
    if (t == _i21.People) {
      return _i21.People.fromJson(data, this) as T;
    }
    if (t == _i22.Placeatts) {
      return _i22.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i23.Places) {
      return _i23.Places.fromJson(data, this) as T;
    }
    if (t == _i24.Principal) {
      return _i24.Principal.fromJson(data, this) as T;
    }
    if (t == _i25.Seas) {
      return _i25.Seas.fromJson(data, this) as T;
    }
    if (t == _i26.Terms) {
      return _i26.Terms.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.AttsInvolved?>()) {
      return (data != null ? _i2.AttsInvolved.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.CountryInvolved?>()) {
      return (data != null ? _i3.CountryInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.Categories?>()) {
      return (data != null ? _i4.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Countryatts?>()) {
      return (data != null ? _i5.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Days?>()) {
      return (data != null ? _i6.Days.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Lieux?>()) {
      return (data != null ? _i8.Lieux.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.LocalDates?>()) {
      return (data != null ? _i9.LocalDates.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Months?>()) {
      return (data != null ? _i10.Months.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Organisations?>()) {
      return (data != null ? _i11.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i12.PrincipalCategories?>()) {
      return (data != null
          ? _i12.PrincipalCategories.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i13.PrincipalCatt?>()) {
      return (data != null ? _i13.PrincipalCatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.PrincipalOrgs?>()) {
      return (data != null ? _i14.PrincipalOrgs.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.PrincipalPatt?>()) {
      return (data != null ? _i15.PrincipalPatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i16.PrincipalPeople?>()) {
      return (data != null ? _i16.PrincipalPeople.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.PrincipalPlace?>()) {
      return (data != null ? _i17.PrincipalPlace.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i18.PrincipalSeas?>()) {
      return (data != null ? _i18.PrincipalSeas.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i19.PrincipalTerms?>()) {
      return (data != null ? _i19.PrincipalTerms.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i20.Pays?>()) {
      return (data != null ? _i20.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i21.People?>()) {
      return (data != null ? _i21.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.Placeatts?>()) {
      return (data != null ? _i22.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.Places?>()) {
      return (data != null ? _i23.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.Principal?>()) {
      return (data != null ? _i24.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.Seas?>()) {
      return (data != null ? _i25.Seas.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i26.Terms?>()) {
      return (data != null ? _i26.Terms.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<List<_i27.Pays>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.Pays>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i27.Countryatts>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.Countryatts>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i27.Organisations>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i27.Organisations>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i27.People>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.People>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i27.Categories>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.Categories>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i27.Terms>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.Terms>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i28.AttsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i28.AttsInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i29.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i29.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i30.Categories>) {
      return (data as List).map((e) => deserialize<_i30.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i31.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i31.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i32.Days>) {
      return (data as List).map((e) => deserialize<_i32.Days>(e)).toList()
          as dynamic;
    }
    if (t == List<_i33.Lieux>) {
      return (data as List).map((e) => deserialize<_i33.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i34.LocalDates>) {
      return (data as List).map((e) => deserialize<_i34.LocalDates>(e)).toList()
          as dynamic;
    }
    if (t == List<_i35.Months>) {
      return (data as List).map((e) => deserialize<_i35.Months>(e)).toList()
          as dynamic;
    }
    if (t == List<_i36.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i36.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i37.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i37.PrincipalCategories>(e))
          .toList() as dynamic;
    }
    if (t == List<_i38.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i38.PrincipalCatt>(e))
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
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
          .map((e) => deserialize<Map<String, dynamic>>(e))
          .toList() as dynamic;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<dynamic>(v))) as dynamic;
    }
    if (t == List<_i42.PrincipalSeas>) {
      return (data as List)
          .map((e) => deserialize<_i42.PrincipalSeas>(e))
          .toList() as dynamic;
    }
    if (t == List<_i43.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i43.PrincipalTerms>(e))
          .toList() as dynamic;
    }
    if (t == List<_i44.Pays>) {
      return (data as List).map((e) => deserialize<_i44.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i45.People>) {
      return (data as List).map((e) => deserialize<_i45.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i46.Placeatts>) {
      return (data as List).map((e) => deserialize<_i46.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i47.Places>) {
      return (data as List).map((e) => deserialize<_i47.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i48.Principal>) {
      return (data as List).map((e) => deserialize<_i48.Principal>(e)).toList()
          as dynamic;
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
    if (t == List<_i49.Seas>) {
      return (data as List).map((e) => deserialize<_i49.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i50.Terms>) {
      return (data as List).map((e) => deserialize<_i50.Terms>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.AttsInvolved) {
      return 'AttsInvolved';
    }
    if (data is _i3.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i4.Categories) {
      return 'Categories';
    }
    if (data is _i5.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i6.Days) {
      return 'Days';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.Lieux) {
      return 'Lieux';
    }
    if (data is _i9.LocalDates) {
      return 'LocalDates';
    }
    if (data is _i10.Months) {
      return 'Months';
    }
    if (data is _i11.Organisations) {
      return 'Organisations';
    }
    if (data is _i12.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i13.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i14.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i15.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i16.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i17.PrincipalPlace) {
      return 'PrincipalPlace';
    }
    if (data is _i18.PrincipalSeas) {
      return 'PrincipalSeas';
    }
    if (data is _i19.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i20.Pays) {
      return 'Pays';
    }
    if (data is _i21.People) {
      return 'People';
    }
    if (data is _i22.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i23.Places) {
      return 'Places';
    }
    if (data is _i24.Principal) {
      return 'Principal';
    }
    if (data is _i25.Seas) {
      return 'Seas';
    }
    if (data is _i26.Terms) {
      return 'Terms';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AttsInvolved') {
      return deserialize<_i2.AttsInvolved>(data['data']);
    }
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i3.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i4.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i5.Countryatts>(data['data']);
    }
    if (data['className'] == 'Days') {
      return deserialize<_i6.Days>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (data['className'] == 'Lieux') {
      return deserialize<_i8.Lieux>(data['data']);
    }
    if (data['className'] == 'LocalDates') {
      return deserialize<_i9.LocalDates>(data['data']);
    }
    if (data['className'] == 'Months') {
      return deserialize<_i10.Months>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i11.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalCategories') {
      return deserialize<_i12.PrincipalCategories>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i13.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalOrgs') {
      return deserialize<_i14.PrincipalOrgs>(data['data']);
    }
    if (data['className'] == 'PrincipalPatt') {
      return deserialize<_i15.PrincipalPatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPeople') {
      return deserialize<_i16.PrincipalPeople>(data['data']);
    }
    if (data['className'] == 'PrincipalPlace') {
      return deserialize<_i17.PrincipalPlace>(data['data']);
    }
    if (data['className'] == 'PrincipalSeas') {
      return deserialize<_i18.PrincipalSeas>(data['data']);
    }
    if (data['className'] == 'PrincipalTerms') {
      return deserialize<_i19.PrincipalTerms>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i20.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i21.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i22.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i23.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i24.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i25.Seas>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i26.Terms>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
