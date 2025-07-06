/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'c_involved.dart' as _i2;
import 'categories.dart' as _i3;
import 'catts_involved.dart' as _i4;
import 'countryatts.dart' as _i5;
import 'detail.dart' as _i6;
import 'japanese.dart' as _i7;
import 'launch_sites.dart' as _i8;
import 'myclass.dart' as _i9;
import 'oceans.dart' as _i10;
import 'organisations.dart' as _i11;
import 'p-user.dart' as _i12;
import 'p_categories.dart' as _i13;
import 'p_catt.dart' as _i14;
import 'p_detail.dart' as _i15;
import 'p_involved.dart' as _i16;
import 'p_orgs.dart' as _i17;
import 'p_patt.dart' as _i18;
import 'p_people.dart' as _i19;
import 'p_terms.dart' as _i20;
import 'patts_involved.dart' as _i21;
import 'pays.dart' as _i22;
import 'people.dart' as _i23;
import 'placeatts.dart' as _i24;
import 'places.dart' as _i25;
import 'principal.dart' as _i26;
import 'principal_sites.dart' as _i27;
import 'seas.dart' as _i28;
import 'space.dart' as _i29;
import 'stars.dart' as _i30;
import 'stars_involved.dart' as _i31;
import 'target.dart' as _i32;
import 'terms.dart' as _i33;
import 'universe.dart' as _i34;
import 'with_globe.dart' as _i35;
import 'with_map.dart' as _i36;
import 'with_qgis.dart' as _i37;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i38;
import 'package:acorn_client/src/protocol/categories.dart' as _i39;
import 'package:acorn_client/src/protocol/catts_involved.dart' as _i40;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i41;
import 'package:acorn_client/src/protocol/detail.dart' as _i42;
import 'package:acorn_client/src/protocol/japanese.dart' as _i43;
import 'package:acorn_client/src/protocol/launch_sites.dart' as _i44;
import 'package:acorn_client/src/protocol/oceans.dart' as _i45;
import 'package:acorn_client/src/protocol/organisations.dart' as _i46;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i47;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i48;
import 'package:acorn_client/src/protocol/p_detail.dart' as _i49;
import 'package:acorn_client/src/protocol/p_involved.dart' as _i50;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i51;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i52;
import 'package:acorn_client/src/protocol/p_people.dart' as _i53;
import 'package:acorn_client/src/protocol/principal_sites.dart' as _i54;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i55;
import 'package:acorn_client/src/protocol/p-user.dart' as _i56;
import 'package:acorn_client/src/protocol/patts_involved.dart' as _i57;
import 'package:acorn_client/src/protocol/pays.dart' as _i58;
import 'package:acorn_client/src/protocol/people.dart' as _i59;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i60;
import 'package:acorn_client/src/protocol/places.dart' as _i61;
import 'package:acorn_client/src/protocol/principal.dart' as _i62;
import 'package:acorn_client/src/protocol/seas.dart' as _i63;
import 'package:acorn_client/src/protocol/space.dart' as _i64;
import 'package:acorn_client/src/protocol/stars.dart' as _i65;
import 'package:acorn_client/src/protocol/stars_involved.dart' as _i66;
import 'package:acorn_client/src/protocol/target.dart' as _i67;
import 'package:acorn_client/src/protocol/terms.dart' as _i68;
import 'package:acorn_client/src/protocol/universe.dart' as _i69;
import 'package:acorn_client/src/protocol/with_globe.dart' as _i70;
import 'package:acorn_client/src/protocol/with_map.dart' as _i71;
import 'package:acorn_client/src/protocol/with_qgis.dart' as _i72;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i73;
export 'c_involved.dart';
export 'categories.dart';
export 'catts_involved.dart';
export 'countryatts.dart';
export 'detail.dart';
export 'japanese.dart';
export 'launch_sites.dart';
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
export 'principal_sites.dart';
export 'seas.dart';
export 'space.dart';
export 'stars.dart';
export 'stars_involved.dart';
export 'target.dart';
export 'terms.dart';
export 'universe.dart';
export 'with_globe.dart';
export 'with_map.dart';
export 'with_qgis.dart';
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
    if (t == _i8.LaunchSites) {
      return _i8.LaunchSites.fromJson(data) as T;
    }
    if (t == _i9.MyClass) {
      return _i9.MyClass.fromJson(data) as T;
    }
    if (t == _i10.Oceans) {
      return _i10.Oceans.fromJson(data) as T;
    }
    if (t == _i11.Organisations) {
      return _i11.Organisations.fromJson(data) as T;
    }
    if (t == _i12.PrincipalUser) {
      return _i12.PrincipalUser.fromJson(data) as T;
    }
    if (t == _i13.PrincipalCategories) {
      return _i13.PrincipalCategories.fromJson(data) as T;
    }
    if (t == _i14.PrincipalCatt) {
      return _i14.PrincipalCatt.fromJson(data) as T;
    }
    if (t == _i15.PrincipalDetail) {
      return _i15.PrincipalDetail.fromJson(data) as T;
    }
    if (t == _i16.PlaceInvolved) {
      return _i16.PlaceInvolved.fromJson(data) as T;
    }
    if (t == _i17.PrincipalOrgs) {
      return _i17.PrincipalOrgs.fromJson(data) as T;
    }
    if (t == _i18.PrincipalPatt) {
      return _i18.PrincipalPatt.fromJson(data) as T;
    }
    if (t == _i19.PrincipalPeople) {
      return _i19.PrincipalPeople.fromJson(data) as T;
    }
    if (t == _i20.PrincipalTerms) {
      return _i20.PrincipalTerms.fromJson(data) as T;
    }
    if (t == _i21.PattsInvolved) {
      return _i21.PattsInvolved.fromJson(data) as T;
    }
    if (t == _i22.Pays) {
      return _i22.Pays.fromJson(data) as T;
    }
    if (t == _i23.People) {
      return _i23.People.fromJson(data) as T;
    }
    if (t == _i24.Placeatts) {
      return _i24.Placeatts.fromJson(data) as T;
    }
    if (t == _i25.Places) {
      return _i25.Places.fromJson(data) as T;
    }
    if (t == _i26.Principal) {
      return _i26.Principal.fromJson(data) as T;
    }
    if (t == _i27.PrincipalSites) {
      return _i27.PrincipalSites.fromJson(data) as T;
    }
    if (t == _i28.Seas) {
      return _i28.Seas.fromJson(data) as T;
    }
    if (t == _i29.Space) {
      return _i29.Space.fromJson(data) as T;
    }
    if (t == _i30.Stars) {
      return _i30.Stars.fromJson(data) as T;
    }
    if (t == _i31.StarsInvolved) {
      return _i31.StarsInvolved.fromJson(data) as T;
    }
    if (t == _i32.Target) {
      return _i32.Target.fromJson(data) as T;
    }
    if (t == _i33.Terms) {
      return _i33.Terms.fromJson(data) as T;
    }
    if (t == _i34.Universe) {
      return _i34.Universe.fromJson(data) as T;
    }
    if (t == _i35.WithGlobe) {
      return _i35.WithGlobe.fromJson(data) as T;
    }
    if (t == _i36.WithMap) {
      return _i36.WithMap.fromJson(data) as T;
    }
    if (t == _i37.WithQgis) {
      return _i37.WithQgis.fromJson(data) as T;
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
    if (t == _i1.getType<_i8.LaunchSites?>()) {
      return (data != null ? _i8.LaunchSites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.MyClass?>()) {
      return (data != null ? _i9.MyClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Oceans?>()) {
      return (data != null ? _i10.Oceans.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Organisations?>()) {
      return (data != null ? _i11.Organisations.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.PrincipalUser?>()) {
      return (data != null ? _i12.PrincipalUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.PrincipalCategories?>()) {
      return (data != null ? _i13.PrincipalCategories.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i14.PrincipalCatt?>()) {
      return (data != null ? _i14.PrincipalCatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.PrincipalDetail?>()) {
      return (data != null ? _i15.PrincipalDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.PlaceInvolved?>()) {
      return (data != null ? _i16.PlaceInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.PrincipalOrgs?>()) {
      return (data != null ? _i17.PrincipalOrgs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.PrincipalPatt?>()) {
      return (data != null ? _i18.PrincipalPatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.PrincipalPeople?>()) {
      return (data != null ? _i19.PrincipalPeople.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.PrincipalTerms?>()) {
      return (data != null ? _i20.PrincipalTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.PattsInvolved?>()) {
      return (data != null ? _i21.PattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.Pays?>()) {
      return (data != null ? _i22.Pays.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.People?>()) {
      return (data != null ? _i23.People.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.Placeatts?>()) {
      return (data != null ? _i24.Placeatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.Places?>()) {
      return (data != null ? _i25.Places.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.Principal?>()) {
      return (data != null ? _i26.Principal.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.PrincipalSites?>()) {
      return (data != null ? _i27.PrincipalSites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.Seas?>()) {
      return (data != null ? _i28.Seas.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.Space?>()) {
      return (data != null ? _i29.Space.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.Stars?>()) {
      return (data != null ? _i30.Stars.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.StarsInvolved?>()) {
      return (data != null ? _i31.StarsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.Target?>()) {
      return (data != null ? _i32.Target.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.Terms?>()) {
      return (data != null ? _i33.Terms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.Universe?>()) {
      return (data != null ? _i34.Universe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i35.WithGlobe?>()) {
      return (data != null ? _i35.WithGlobe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i36.WithMap?>()) {
      return (data != null ? _i36.WithMap.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i37.WithQgis?>()) {
      return (data != null ? _i37.WithQgis.fromJson(data) : null) as T;
    }
    if (t == List<dynamic>) {
      return (data as List).map((e) => deserialize<dynamic>(e)).toList() as T;
    }
    if (t == List<_i38.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i38.CountryInvolved>(e))
          .toList() as T;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as T;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<int>(e)).toList()
          : null) as T;
    }
    if (t == List<_i39.Categories>) {
      return (data as List).map((e) => deserialize<_i39.Categories>(e)).toList()
          as T;
    }
    if (t == List<_i40.CattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i40.CattsInvolved>(e))
          .toList() as T;
    }
    if (t == List<_i41.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i41.Countryatts>(e))
          .toList() as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as T;
    }
    if (t == List<_i42.Detail>) {
      return (data as List).map((e) => deserialize<_i42.Detail>(e)).toList()
          as T;
    }
    if (t == List<_i43.Japanese>) {
      return (data as List).map((e) => deserialize<_i43.Japanese>(e)).toList()
          as T;
    }
    if (t == List<_i44.LaunchSites>) {
      return (data as List)
          .map((e) => deserialize<_i44.LaunchSites>(e))
          .toList() as T;
    }
    if (t == List<_i45.Oceans>) {
      return (data as List).map((e) => deserialize<_i45.Oceans>(e)).toList()
          as T;
    }
    if (t == List<_i46.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i46.Organisations>(e))
          .toList() as T;
    }
    if (t == List<_i47.PrincipalCategories>) {
      return (data as List)
          .map((e) => deserialize<_i47.PrincipalCategories>(e))
          .toList() as T;
    }
    if (t == List<_i48.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i48.PrincipalCatt>(e))
          .toList() as T;
    }
    if (t == List<_i49.PrincipalDetail>) {
      return (data as List)
          .map((e) => deserialize<_i49.PrincipalDetail>(e))
          .toList() as T;
    }
    if (t == List<_i50.PlaceInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i50.PlaceInvolved>(e))
          .toList() as T;
    }
    if (t == List<_i51.PrincipalOrgs>) {
      return (data as List)
          .map((e) => deserialize<_i51.PrincipalOrgs>(e))
          .toList() as T;
    }
    if (t == List<_i52.PrincipalPatt>) {
      return (data as List)
          .map((e) => deserialize<_i52.PrincipalPatt>(e))
          .toList() as T;
    }
    if (t == List<_i53.PrincipalPeople>) {
      return (data as List)
          .map((e) => deserialize<_i53.PrincipalPeople>(e))
          .toList() as T;
    }
    if (t == List<_i54.PrincipalSites>) {
      return (data as List)
          .map((e) => deserialize<_i54.PrincipalSites>(e))
          .toList() as T;
    }
    if (t == List<_i55.PrincipalTerms>) {
      return (data as List)
          .map((e) => deserialize<_i55.PrincipalTerms>(e))
          .toList() as T;
    }
    if (t == List<_i56.PrincipalUser>) {
      return (data as List)
          .map((e) => deserialize<_i56.PrincipalUser>(e))
          .toList() as T;
    }
    if (t == List<_i57.PattsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i57.PattsInvolved>(e))
          .toList() as T;
    }
    if (t == List<_i58.Pays>) {
      return (data as List).map((e) => deserialize<_i58.Pays>(e)).toList() as T;
    }
    if (t == List<_i59.People>) {
      return (data as List).map((e) => deserialize<_i59.People>(e)).toList()
          as T;
    }
    if (t == List<_i60.Placeatts>) {
      return (data as List).map((e) => deserialize<_i60.Placeatts>(e)).toList()
          as T;
    }
    if (t == List<_i61.Places>) {
      return (data as List).map((e) => deserialize<_i61.Places>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
          : null) as T;
    }
    if (t == List<_i62.Principal>) {
      return (data as List).map((e) => deserialize<_i62.Principal>(e)).toList()
          as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
          .map((e) => deserialize<Map<String, dynamic>>(e))
          .toList() as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<dynamic>(v))) as T;
    }
    if (t == List<_i63.Seas>) {
      return (data as List).map((e) => deserialize<_i63.Seas>(e)).toList() as T;
    }
    if (t == List<_i64.Space>) {
      return (data as List).map((e) => deserialize<_i64.Space>(e)).toList()
          as T;
    }
    if (t == List<_i65.Stars>) {
      return (data as List).map((e) => deserialize<_i65.Stars>(e)).toList()
          as T;
    }
    if (t == List<_i66.StarsInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i66.StarsInvolved>(e))
          .toList() as T;
    }
    if (t == List<_i67.Target>) {
      return (data as List).map((e) => deserialize<_i67.Target>(e)).toList()
          as T;
    }
    if (t == List<_i68.Terms>) {
      return (data as List).map((e) => deserialize<_i68.Terms>(e)).toList()
          as T;
    }
    if (t == List<_i69.Universe>) {
      return (data as List).map((e) => deserialize<_i69.Universe>(e)).toList()
          as T;
    }
    if (t == List<_i70.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i70.WithGlobe>(e)).toList()
          as T;
    }
    if (t == List<_i71.WithMap>) {
      return (data as List).map((e) => deserialize<_i71.WithMap>(e)).toList()
          as T;
    }
    if (t == List<_i72.WithQgis>) {
      return (data as List).map((e) => deserialize<_i72.WithQgis>(e)).toList()
          as T;
    }
    try {
      return _i73.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
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
    if (data is _i8.LaunchSites) {
      return 'LaunchSites';
    }
    if (data is _i9.MyClass) {
      return 'MyClass';
    }
    if (data is _i10.Oceans) {
      return 'Oceans';
    }
    if (data is _i11.Organisations) {
      return 'Organisations';
    }
    if (data is _i12.PrincipalUser) {
      return 'PrincipalUser';
    }
    if (data is _i13.PrincipalCategories) {
      return 'PrincipalCategories';
    }
    if (data is _i14.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i15.PrincipalDetail) {
      return 'PrincipalDetail';
    }
    if (data is _i16.PlaceInvolved) {
      return 'PlaceInvolved';
    }
    if (data is _i17.PrincipalOrgs) {
      return 'PrincipalOrgs';
    }
    if (data is _i18.PrincipalPatt) {
      return 'PrincipalPatt';
    }
    if (data is _i19.PrincipalPeople) {
      return 'PrincipalPeople';
    }
    if (data is _i20.PrincipalTerms) {
      return 'PrincipalTerms';
    }
    if (data is _i21.PattsInvolved) {
      return 'PattsInvolved';
    }
    if (data is _i22.Pays) {
      return 'Pays';
    }
    if (data is _i23.People) {
      return 'People';
    }
    if (data is _i24.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i25.Places) {
      return 'Places';
    }
    if (data is _i26.Principal) {
      return 'Principal';
    }
    if (data is _i27.PrincipalSites) {
      return 'PrincipalSites';
    }
    if (data is _i28.Seas) {
      return 'Seas';
    }
    if (data is _i29.Space) {
      return 'Space';
    }
    if (data is _i30.Stars) {
      return 'Stars';
    }
    if (data is _i31.StarsInvolved) {
      return 'StarsInvolved';
    }
    if (data is _i32.Target) {
      return 'Target';
    }
    if (data is _i33.Terms) {
      return 'Terms';
    }
    if (data is _i34.Universe) {
      return 'Universe';
    }
    if (data is _i35.WithGlobe) {
      return 'WithGlobe';
    }
    if (data is _i36.WithMap) {
      return 'WithMap';
    }
    if (data is _i37.WithQgis) {
      return 'WithQgis';
    }
    className = _i73.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'CountryInvolved') {
      return deserialize<_i2.CountryInvolved>(data['data']);
    }
    if (dataClassName == 'Categories') {
      return deserialize<_i3.Categories>(data['data']);
    }
    if (dataClassName == 'CattsInvolved') {
      return deserialize<_i4.CattsInvolved>(data['data']);
    }
    if (dataClassName == 'Countryatts') {
      return deserialize<_i5.Countryatts>(data['data']);
    }
    if (dataClassName == 'Detail') {
      return deserialize<_i6.Detail>(data['data']);
    }
    if (dataClassName == 'Japanese') {
      return deserialize<_i7.Japanese>(data['data']);
    }
    if (dataClassName == 'LaunchSites') {
      return deserialize<_i8.LaunchSites>(data['data']);
    }
    if (dataClassName == 'MyClass') {
      return deserialize<_i9.MyClass>(data['data']);
    }
    if (dataClassName == 'Oceans') {
      return deserialize<_i10.Oceans>(data['data']);
    }
    if (dataClassName == 'Organisations') {
      return deserialize<_i11.Organisations>(data['data']);
    }
    if (dataClassName == 'PrincipalUser') {
      return deserialize<_i12.PrincipalUser>(data['data']);
    }
    if (dataClassName == 'PrincipalCategories') {
      return deserialize<_i13.PrincipalCategories>(data['data']);
    }
    if (dataClassName == 'PrincipalCatt') {
      return deserialize<_i14.PrincipalCatt>(data['data']);
    }
    if (dataClassName == 'PrincipalDetail') {
      return deserialize<_i15.PrincipalDetail>(data['data']);
    }
    if (dataClassName == 'PlaceInvolved') {
      return deserialize<_i16.PlaceInvolved>(data['data']);
    }
    if (dataClassName == 'PrincipalOrgs') {
      return deserialize<_i17.PrincipalOrgs>(data['data']);
    }
    if (dataClassName == 'PrincipalPatt') {
      return deserialize<_i18.PrincipalPatt>(data['data']);
    }
    if (dataClassName == 'PrincipalPeople') {
      return deserialize<_i19.PrincipalPeople>(data['data']);
    }
    if (dataClassName == 'PrincipalTerms') {
      return deserialize<_i20.PrincipalTerms>(data['data']);
    }
    if (dataClassName == 'PattsInvolved') {
      return deserialize<_i21.PattsInvolved>(data['data']);
    }
    if (dataClassName == 'Pays') {
      return deserialize<_i22.Pays>(data['data']);
    }
    if (dataClassName == 'People') {
      return deserialize<_i23.People>(data['data']);
    }
    if (dataClassName == 'Placeatts') {
      return deserialize<_i24.Placeatts>(data['data']);
    }
    if (dataClassName == 'Places') {
      return deserialize<_i25.Places>(data['data']);
    }
    if (dataClassName == 'Principal') {
      return deserialize<_i26.Principal>(data['data']);
    }
    if (dataClassName == 'PrincipalSites') {
      return deserialize<_i27.PrincipalSites>(data['data']);
    }
    if (dataClassName == 'Seas') {
      return deserialize<_i28.Seas>(data['data']);
    }
    if (dataClassName == 'Space') {
      return deserialize<_i29.Space>(data['data']);
    }
    if (dataClassName == 'Stars') {
      return deserialize<_i30.Stars>(data['data']);
    }
    if (dataClassName == 'StarsInvolved') {
      return deserialize<_i31.StarsInvolved>(data['data']);
    }
    if (dataClassName == 'Target') {
      return deserialize<_i32.Target>(data['data']);
    }
    if (dataClassName == 'Terms') {
      return deserialize<_i33.Terms>(data['data']);
    }
    if (dataClassName == 'Universe') {
      return deserialize<_i34.Universe>(data['data']);
    }
    if (dataClassName == 'WithGlobe') {
      return deserialize<_i35.WithGlobe>(data['data']);
    }
    if (dataClassName == 'WithMap') {
      return deserialize<_i36.WithMap>(data['data']);
    }
    if (dataClassName == 'WithQgis') {
      return deserialize<_i37.WithQgis>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i73.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
