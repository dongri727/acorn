/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'announcement.dart' as _i2;
import 'app_config.dart' as _i3;
import 'app_config_response.dart' as _i4;
import 'c_involved.dart' as _i5;
import 'categories.dart' as _i6;
import 'catts_involved.dart' as _i7;
import 'countryatts.dart' as _i8;
import 'detail.dart' as _i9;
import 'japanese.dart' as _i10;
import 'launch_sites.dart' as _i11;
import 'myclass.dart' as _i12;
import 'oceans.dart' as _i13;
import 'organisations.dart' as _i14;
import 'p-user.dart' as _i15;
import 'p_categories.dart' as _i16;
import 'p_catt.dart' as _i17;
import 'p_detail.dart' as _i18;
import 'p_involved.dart' as _i19;
import 'p_orgs.dart' as _i20;
import 'p_patt.dart' as _i21;
import 'p_people.dart' as _i22;
import 'p_terms.dart' as _i23;
import 'patts_involved.dart' as _i24;
import 'pays.dart' as _i25;
import 'people.dart' as _i26;
import 'placeatts.dart' as _i27;
import 'places.dart' as _i28;
import 'principal.dart' as _i29;
import 'principal_sites.dart' as _i30;
import 'seas.dart' as _i31;
import 'space.dart' as _i32;
import 'stars.dart' as _i33;
import 'stars_involved.dart' as _i34;
import 'target.dart' as _i35;
import 'terms.dart' as _i36;
import 'universe.dart' as _i37;
import 'with_globe.dart' as _i38;
import 'with_map.dart' as _i39;
import 'with_qgis.dart' as _i40;
import 'package:acorn_client/src/protocol/announcement.dart' as _i41;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i42;
import 'package:acorn_client/src/protocol/categories.dart' as _i43;
import 'package:acorn_client/src/protocol/catts_involved.dart' as _i44;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i45;
import 'package:acorn_client/src/protocol/detail.dart' as _i46;
import 'package:acorn_client/src/protocol/japanese.dart' as _i47;
import 'package:acorn_client/src/protocol/launch_sites.dart' as _i48;
import 'package:acorn_client/src/protocol/oceans.dart' as _i49;
import 'package:acorn_client/src/protocol/organisations.dart' as _i50;
import 'package:acorn_client/src/protocol/p_categories.dart' as _i51;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i52;
import 'package:acorn_client/src/protocol/p_detail.dart' as _i53;
import 'package:acorn_client/src/protocol/p_involved.dart' as _i54;
import 'package:acorn_client/src/protocol/p_orgs.dart' as _i55;
import 'package:acorn_client/src/protocol/p_patt.dart' as _i56;
import 'package:acorn_client/src/protocol/p_people.dart' as _i57;
import 'package:acorn_client/src/protocol/principal_sites.dart' as _i58;
import 'package:acorn_client/src/protocol/p_terms.dart' as _i59;
import 'package:acorn_client/src/protocol/p-user.dart' as _i60;
import 'package:acorn_client/src/protocol/patts_involved.dart' as _i61;
import 'package:acorn_client/src/protocol/pays.dart' as _i62;
import 'package:acorn_client/src/protocol/people.dart' as _i63;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i64;
import 'package:acorn_client/src/protocol/places.dart' as _i65;
import 'package:acorn_client/src/protocol/principal.dart' as _i66;
import 'package:acorn_client/src/protocol/seas.dart' as _i67;
import 'package:acorn_client/src/protocol/space.dart' as _i68;
import 'package:acorn_client/src/protocol/stars.dart' as _i69;
import 'package:acorn_client/src/protocol/stars_involved.dart' as _i70;
import 'package:acorn_client/src/protocol/target.dart' as _i71;
import 'package:acorn_client/src/protocol/terms.dart' as _i72;
import 'package:acorn_client/src/protocol/universe.dart' as _i73;
import 'package:acorn_client/src/protocol/with_globe.dart' as _i74;
import 'package:acorn_client/src/protocol/with_map.dart' as _i75;
import 'package:acorn_client/src/protocol/with_qgis.dart' as _i76;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i77;
export 'announcement.dart';
export 'app_config.dart';
export 'app_config_response.dart';
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

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.Announcement) {
      return _i2.Announcement.fromJson(data) as T;
    }
    if (t == _i3.AppConfig) {
      return _i3.AppConfig.fromJson(data) as T;
    }
    if (t == _i4.AppConfigResponse) {
      return _i4.AppConfigResponse.fromJson(data) as T;
    }
    if (t == _i5.CountryInvolved) {
      return _i5.CountryInvolved.fromJson(data) as T;
    }
    if (t == _i6.Categories) {
      return _i6.Categories.fromJson(data) as T;
    }
    if (t == _i7.CattsInvolved) {
      return _i7.CattsInvolved.fromJson(data) as T;
    }
    if (t == _i8.Countryatts) {
      return _i8.Countryatts.fromJson(data) as T;
    }
    if (t == _i9.Detail) {
      return _i9.Detail.fromJson(data) as T;
    }
    if (t == _i10.Japanese) {
      return _i10.Japanese.fromJson(data) as T;
    }
    if (t == _i11.LaunchSites) {
      return _i11.LaunchSites.fromJson(data) as T;
    }
    if (t == _i12.MyClass) {
      return _i12.MyClass.fromJson(data) as T;
    }
    if (t == _i13.Oceans) {
      return _i13.Oceans.fromJson(data) as T;
    }
    if (t == _i14.Organisations) {
      return _i14.Organisations.fromJson(data) as T;
    }
    if (t == _i15.PrincipalUser) {
      return _i15.PrincipalUser.fromJson(data) as T;
    }
    if (t == _i16.PrincipalCategories) {
      return _i16.PrincipalCategories.fromJson(data) as T;
    }
    if (t == _i17.PrincipalCatt) {
      return _i17.PrincipalCatt.fromJson(data) as T;
    }
    if (t == _i18.PrincipalDetail) {
      return _i18.PrincipalDetail.fromJson(data) as T;
    }
    if (t == _i19.PlaceInvolved) {
      return _i19.PlaceInvolved.fromJson(data) as T;
    }
    if (t == _i20.PrincipalOrgs) {
      return _i20.PrincipalOrgs.fromJson(data) as T;
    }
    if (t == _i21.PrincipalPatt) {
      return _i21.PrincipalPatt.fromJson(data) as T;
    }
    if (t == _i22.PrincipalPeople) {
      return _i22.PrincipalPeople.fromJson(data) as T;
    }
    if (t == _i23.PrincipalTerms) {
      return _i23.PrincipalTerms.fromJson(data) as T;
    }
    if (t == _i24.PattsInvolved) {
      return _i24.PattsInvolved.fromJson(data) as T;
    }
    if (t == _i25.Pays) {
      return _i25.Pays.fromJson(data) as T;
    }
    if (t == _i26.People) {
      return _i26.People.fromJson(data) as T;
    }
    if (t == _i27.Placeatts) {
      return _i27.Placeatts.fromJson(data) as T;
    }
    if (t == _i28.Places) {
      return _i28.Places.fromJson(data) as T;
    }
    if (t == _i29.Principal) {
      return _i29.Principal.fromJson(data) as T;
    }
    if (t == _i30.PrincipalSites) {
      return _i30.PrincipalSites.fromJson(data) as T;
    }
    if (t == _i31.Seas) {
      return _i31.Seas.fromJson(data) as T;
    }
    if (t == _i32.Space) {
      return _i32.Space.fromJson(data) as T;
    }
    if (t == _i33.Stars) {
      return _i33.Stars.fromJson(data) as T;
    }
    if (t == _i34.StarsInvolved) {
      return _i34.StarsInvolved.fromJson(data) as T;
    }
    if (t == _i35.Target) {
      return _i35.Target.fromJson(data) as T;
    }
    if (t == _i36.Terms) {
      return _i36.Terms.fromJson(data) as T;
    }
    if (t == _i37.Universe) {
      return _i37.Universe.fromJson(data) as T;
    }
    if (t == _i38.WithGlobe) {
      return _i38.WithGlobe.fromJson(data) as T;
    }
    if (t == _i39.WithMap) {
      return _i39.WithMap.fromJson(data) as T;
    }
    if (t == _i40.WithQgis) {
      return _i40.WithQgis.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Announcement?>()) {
      return (data != null ? _i2.Announcement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.AppConfig?>()) {
      return (data != null ? _i3.AppConfig.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.AppConfigResponse?>()) {
      return (data != null ? _i4.AppConfigResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.CountryInvolved?>()) {
      return (data != null ? _i5.CountryInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Categories?>()) {
      return (data != null ? _i6.Categories.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.CattsInvolved?>()) {
      return (data != null ? _i7.CattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Countryatts?>()) {
      return (data != null ? _i8.Countryatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Detail?>()) {
      return (data != null ? _i9.Detail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Japanese?>()) {
      return (data != null ? _i10.Japanese.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.LaunchSites?>()) {
      return (data != null ? _i11.LaunchSites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.MyClass?>()) {
      return (data != null ? _i12.MyClass.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Oceans?>()) {
      return (data != null ? _i13.Oceans.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Organisations?>()) {
      return (data != null ? _i14.Organisations.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.PrincipalUser?>()) {
      return (data != null ? _i15.PrincipalUser.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.PrincipalCategories?>()) {
      return (data != null ? _i16.PrincipalCategories.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i17.PrincipalCatt?>()) {
      return (data != null ? _i17.PrincipalCatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.PrincipalDetail?>()) {
      return (data != null ? _i18.PrincipalDetail.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.PlaceInvolved?>()) {
      return (data != null ? _i19.PlaceInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.PrincipalOrgs?>()) {
      return (data != null ? _i20.PrincipalOrgs.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.PrincipalPatt?>()) {
      return (data != null ? _i21.PrincipalPatt.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.PrincipalPeople?>()) {
      return (data != null ? _i22.PrincipalPeople.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.PrincipalTerms?>()) {
      return (data != null ? _i23.PrincipalTerms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.PattsInvolved?>()) {
      return (data != null ? _i24.PattsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.Pays?>()) {
      return (data != null ? _i25.Pays.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.People?>()) {
      return (data != null ? _i26.People.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.Placeatts?>()) {
      return (data != null ? _i27.Placeatts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i28.Places?>()) {
      return (data != null ? _i28.Places.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.Principal?>()) {
      return (data != null ? _i29.Principal.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.PrincipalSites?>()) {
      return (data != null ? _i30.PrincipalSites.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i31.Seas?>()) {
      return (data != null ? _i31.Seas.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.Space?>()) {
      return (data != null ? _i32.Space.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i33.Stars?>()) {
      return (data != null ? _i33.Stars.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.StarsInvolved?>()) {
      return (data != null ? _i34.StarsInvolved.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i35.Target?>()) {
      return (data != null ? _i35.Target.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i36.Terms?>()) {
      return (data != null ? _i36.Terms.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i37.Universe?>()) {
      return (data != null ? _i37.Universe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i38.WithGlobe?>()) {
      return (data != null ? _i38.WithGlobe.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i39.WithMap?>()) {
      return (data != null ? _i39.WithMap.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i40.WithQgis?>()) {
      return (data != null ? _i40.WithQgis.fromJson(data) : null) as T;
    }
    if (t == List<dynamic>) {
      return (data as List).map((e) => deserialize<dynamic>(e)).toList() as T;
    }
    if (t == List<_i41.Announcement>) {
      return (data as List)
              .map((e) => deserialize<_i41.Announcement>(e))
              .toList()
          as T;
    }
    if (t == List<_i42.CountryInvolved>) {
      return (data as List)
              .map((e) => deserialize<_i42.CountryInvolved>(e))
              .toList()
          as T;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as T;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<int>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i43.Categories>) {
      return (data as List).map((e) => deserialize<_i43.Categories>(e)).toList()
          as T;
    }
    if (t == List<_i44.CattsInvolved>) {
      return (data as List)
              .map((e) => deserialize<_i44.CattsInvolved>(e))
              .toList()
          as T;
    }
    if (t == List<_i45.Countryatts>) {
      return (data as List)
              .map((e) => deserialize<_i45.Countryatts>(e))
              .toList()
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i46.Detail>) {
      return (data as List).map((e) => deserialize<_i46.Detail>(e)).toList()
          as T;
    }
    if (t == List<_i47.Japanese>) {
      return (data as List).map((e) => deserialize<_i47.Japanese>(e)).toList()
          as T;
    }
    if (t == List<_i48.LaunchSites>) {
      return (data as List)
              .map((e) => deserialize<_i48.LaunchSites>(e))
              .toList()
          as T;
    }
    if (t == List<_i49.Oceans>) {
      return (data as List).map((e) => deserialize<_i49.Oceans>(e)).toList()
          as T;
    }
    if (t == List<_i50.Organisations>) {
      return (data as List)
              .map((e) => deserialize<_i50.Organisations>(e))
              .toList()
          as T;
    }
    if (t == List<_i51.PrincipalCategories>) {
      return (data as List)
              .map((e) => deserialize<_i51.PrincipalCategories>(e))
              .toList()
          as T;
    }
    if (t == List<_i52.PrincipalCatt>) {
      return (data as List)
              .map((e) => deserialize<_i52.PrincipalCatt>(e))
              .toList()
          as T;
    }
    if (t == List<_i53.PrincipalDetail>) {
      return (data as List)
              .map((e) => deserialize<_i53.PrincipalDetail>(e))
              .toList()
          as T;
    }
    if (t == List<_i54.PlaceInvolved>) {
      return (data as List)
              .map((e) => deserialize<_i54.PlaceInvolved>(e))
              .toList()
          as T;
    }
    if (t == List<_i55.PrincipalOrgs>) {
      return (data as List)
              .map((e) => deserialize<_i55.PrincipalOrgs>(e))
              .toList()
          as T;
    }
    if (t == List<_i56.PrincipalPatt>) {
      return (data as List)
              .map((e) => deserialize<_i56.PrincipalPatt>(e))
              .toList()
          as T;
    }
    if (t == List<_i57.PrincipalPeople>) {
      return (data as List)
              .map((e) => deserialize<_i57.PrincipalPeople>(e))
              .toList()
          as T;
    }
    if (t == List<_i58.PrincipalSites>) {
      return (data as List)
              .map((e) => deserialize<_i58.PrincipalSites>(e))
              .toList()
          as T;
    }
    if (t == List<_i59.PrincipalTerms>) {
      return (data as List)
              .map((e) => deserialize<_i59.PrincipalTerms>(e))
              .toList()
          as T;
    }
    if (t == List<_i60.PrincipalUser>) {
      return (data as List)
              .map((e) => deserialize<_i60.PrincipalUser>(e))
              .toList()
          as T;
    }
    if (t == List<_i61.PattsInvolved>) {
      return (data as List)
              .map((e) => deserialize<_i61.PattsInvolved>(e))
              .toList()
          as T;
    }
    if (t == List<_i62.Pays>) {
      return (data as List).map((e) => deserialize<_i62.Pays>(e)).toList() as T;
    }
    if (t == List<_i63.People>) {
      return (data as List).map((e) => deserialize<_i63.People>(e)).toList()
          as T;
    }
    if (t == List<_i64.Placeatts>) {
      return (data as List).map((e) => deserialize<_i64.Placeatts>(e)).toList()
          as T;
    }
    if (t == List<_i65.Places>) {
      return (data as List).map((e) => deserialize<_i65.Places>(e)).toList()
          as T;
    }
    if (t == _i1.getType<List<dynamic>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<dynamic>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_i66.Principal>) {
      return (data as List).map((e) => deserialize<_i66.Principal>(e)).toList()
          as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, dynamic>>(e))
              .toList()
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == List<_i67.Seas>) {
      return (data as List).map((e) => deserialize<_i67.Seas>(e)).toList() as T;
    }
    if (t == List<_i68.Space>) {
      return (data as List).map((e) => deserialize<_i68.Space>(e)).toList()
          as T;
    }
    if (t == List<_i69.Stars>) {
      return (data as List).map((e) => deserialize<_i69.Stars>(e)).toList()
          as T;
    }
    if (t == List<_i70.StarsInvolved>) {
      return (data as List)
              .map((e) => deserialize<_i70.StarsInvolved>(e))
              .toList()
          as T;
    }
    if (t == List<_i71.Target>) {
      return (data as List).map((e) => deserialize<_i71.Target>(e)).toList()
          as T;
    }
    if (t == List<_i72.Terms>) {
      return (data as List).map((e) => deserialize<_i72.Terms>(e)).toList()
          as T;
    }
    if (t == List<_i73.Universe>) {
      return (data as List).map((e) => deserialize<_i73.Universe>(e)).toList()
          as T;
    }
    if (t == List<_i74.WithGlobe>) {
      return (data as List).map((e) => deserialize<_i74.WithGlobe>(e)).toList()
          as T;
    }
    if (t == List<_i75.WithMap>) {
      return (data as List).map((e) => deserialize<_i75.WithMap>(e)).toList()
          as T;
    }
    if (t == List<_i76.WithQgis>) {
      return (data as List).map((e) => deserialize<_i76.WithQgis>(e)).toList()
          as T;
    }
    try {
      return _i77.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Announcement => 'Announcement',
      _i3.AppConfig => 'AppConfig',
      _i4.AppConfigResponse => 'AppConfigResponse',
      _i5.CountryInvolved => 'CountryInvolved',
      _i6.Categories => 'Categories',
      _i7.CattsInvolved => 'CattsInvolved',
      _i8.Countryatts => 'Countryatts',
      _i9.Detail => 'Detail',
      _i10.Japanese => 'Japanese',
      _i11.LaunchSites => 'LaunchSites',
      _i12.MyClass => 'MyClass',
      _i13.Oceans => 'Oceans',
      _i14.Organisations => 'Organisations',
      _i15.PrincipalUser => 'PrincipalUser',
      _i16.PrincipalCategories => 'PrincipalCategories',
      _i17.PrincipalCatt => 'PrincipalCatt',
      _i18.PrincipalDetail => 'PrincipalDetail',
      _i19.PlaceInvolved => 'PlaceInvolved',
      _i20.PrincipalOrgs => 'PrincipalOrgs',
      _i21.PrincipalPatt => 'PrincipalPatt',
      _i22.PrincipalPeople => 'PrincipalPeople',
      _i23.PrincipalTerms => 'PrincipalTerms',
      _i24.PattsInvolved => 'PattsInvolved',
      _i25.Pays => 'Pays',
      _i26.People => 'People',
      _i27.Placeatts => 'Placeatts',
      _i28.Places => 'Places',
      _i29.Principal => 'Principal',
      _i30.PrincipalSites => 'PrincipalSites',
      _i31.Seas => 'Seas',
      _i32.Space => 'Space',
      _i33.Stars => 'Stars',
      _i34.StarsInvolved => 'StarsInvolved',
      _i35.Target => 'Target',
      _i36.Terms => 'Terms',
      _i37.Universe => 'Universe',
      _i38.WithGlobe => 'WithGlobe',
      _i39.WithMap => 'WithMap',
      _i40.WithQgis => 'WithQgis',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('acorn.', '');
    }

    switch (data) {
      case _i2.Announcement():
        return 'Announcement';
      case _i3.AppConfig():
        return 'AppConfig';
      case _i4.AppConfigResponse():
        return 'AppConfigResponse';
      case _i5.CountryInvolved():
        return 'CountryInvolved';
      case _i6.Categories():
        return 'Categories';
      case _i7.CattsInvolved():
        return 'CattsInvolved';
      case _i8.Countryatts():
        return 'Countryatts';
      case _i9.Detail():
        return 'Detail';
      case _i10.Japanese():
        return 'Japanese';
      case _i11.LaunchSites():
        return 'LaunchSites';
      case _i12.MyClass():
        return 'MyClass';
      case _i13.Oceans():
        return 'Oceans';
      case _i14.Organisations():
        return 'Organisations';
      case _i15.PrincipalUser():
        return 'PrincipalUser';
      case _i16.PrincipalCategories():
        return 'PrincipalCategories';
      case _i17.PrincipalCatt():
        return 'PrincipalCatt';
      case _i18.PrincipalDetail():
        return 'PrincipalDetail';
      case _i19.PlaceInvolved():
        return 'PlaceInvolved';
      case _i20.PrincipalOrgs():
        return 'PrincipalOrgs';
      case _i21.PrincipalPatt():
        return 'PrincipalPatt';
      case _i22.PrincipalPeople():
        return 'PrincipalPeople';
      case _i23.PrincipalTerms():
        return 'PrincipalTerms';
      case _i24.PattsInvolved():
        return 'PattsInvolved';
      case _i25.Pays():
        return 'Pays';
      case _i26.People():
        return 'People';
      case _i27.Placeatts():
        return 'Placeatts';
      case _i28.Places():
        return 'Places';
      case _i29.Principal():
        return 'Principal';
      case _i30.PrincipalSites():
        return 'PrincipalSites';
      case _i31.Seas():
        return 'Seas';
      case _i32.Space():
        return 'Space';
      case _i33.Stars():
        return 'Stars';
      case _i34.StarsInvolved():
        return 'StarsInvolved';
      case _i35.Target():
        return 'Target';
      case _i36.Terms():
        return 'Terms';
      case _i37.Universe():
        return 'Universe';
      case _i38.WithGlobe():
        return 'WithGlobe';
      case _i39.WithMap():
        return 'WithMap';
      case _i40.WithQgis():
        return 'WithQgis';
    }
    className = _i77.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'Announcement') {
      return deserialize<_i2.Announcement>(data['data']);
    }
    if (dataClassName == 'AppConfig') {
      return deserialize<_i3.AppConfig>(data['data']);
    }
    if (dataClassName == 'AppConfigResponse') {
      return deserialize<_i4.AppConfigResponse>(data['data']);
    }
    if (dataClassName == 'CountryInvolved') {
      return deserialize<_i5.CountryInvolved>(data['data']);
    }
    if (dataClassName == 'Categories') {
      return deserialize<_i6.Categories>(data['data']);
    }
    if (dataClassName == 'CattsInvolved') {
      return deserialize<_i7.CattsInvolved>(data['data']);
    }
    if (dataClassName == 'Countryatts') {
      return deserialize<_i8.Countryatts>(data['data']);
    }
    if (dataClassName == 'Detail') {
      return deserialize<_i9.Detail>(data['data']);
    }
    if (dataClassName == 'Japanese') {
      return deserialize<_i10.Japanese>(data['data']);
    }
    if (dataClassName == 'LaunchSites') {
      return deserialize<_i11.LaunchSites>(data['data']);
    }
    if (dataClassName == 'MyClass') {
      return deserialize<_i12.MyClass>(data['data']);
    }
    if (dataClassName == 'Oceans') {
      return deserialize<_i13.Oceans>(data['data']);
    }
    if (dataClassName == 'Organisations') {
      return deserialize<_i14.Organisations>(data['data']);
    }
    if (dataClassName == 'PrincipalUser') {
      return deserialize<_i15.PrincipalUser>(data['data']);
    }
    if (dataClassName == 'PrincipalCategories') {
      return deserialize<_i16.PrincipalCategories>(data['data']);
    }
    if (dataClassName == 'PrincipalCatt') {
      return deserialize<_i17.PrincipalCatt>(data['data']);
    }
    if (dataClassName == 'PrincipalDetail') {
      return deserialize<_i18.PrincipalDetail>(data['data']);
    }
    if (dataClassName == 'PlaceInvolved') {
      return deserialize<_i19.PlaceInvolved>(data['data']);
    }
    if (dataClassName == 'PrincipalOrgs') {
      return deserialize<_i20.PrincipalOrgs>(data['data']);
    }
    if (dataClassName == 'PrincipalPatt') {
      return deserialize<_i21.PrincipalPatt>(data['data']);
    }
    if (dataClassName == 'PrincipalPeople') {
      return deserialize<_i22.PrincipalPeople>(data['data']);
    }
    if (dataClassName == 'PrincipalTerms') {
      return deserialize<_i23.PrincipalTerms>(data['data']);
    }
    if (dataClassName == 'PattsInvolved') {
      return deserialize<_i24.PattsInvolved>(data['data']);
    }
    if (dataClassName == 'Pays') {
      return deserialize<_i25.Pays>(data['data']);
    }
    if (dataClassName == 'People') {
      return deserialize<_i26.People>(data['data']);
    }
    if (dataClassName == 'Placeatts') {
      return deserialize<_i27.Placeatts>(data['data']);
    }
    if (dataClassName == 'Places') {
      return deserialize<_i28.Places>(data['data']);
    }
    if (dataClassName == 'Principal') {
      return deserialize<_i29.Principal>(data['data']);
    }
    if (dataClassName == 'PrincipalSites') {
      return deserialize<_i30.PrincipalSites>(data['data']);
    }
    if (dataClassName == 'Seas') {
      return deserialize<_i31.Seas>(data['data']);
    }
    if (dataClassName == 'Space') {
      return deserialize<_i32.Space>(data['data']);
    }
    if (dataClassName == 'Stars') {
      return deserialize<_i33.Stars>(data['data']);
    }
    if (dataClassName == 'StarsInvolved') {
      return deserialize<_i34.StarsInvolved>(data['data']);
    }
    if (dataClassName == 'Target') {
      return deserialize<_i35.Target>(data['data']);
    }
    if (dataClassName == 'Terms') {
      return deserialize<_i36.Terms>(data['data']);
    }
    if (dataClassName == 'Universe') {
      return deserialize<_i37.Universe>(data['data']);
    }
    if (dataClassName == 'WithGlobe') {
      return deserialize<_i38.WithGlobe>(data['data']);
    }
    if (dataClassName == 'WithMap') {
      return deserialize<_i39.WithMap>(data['data']);
    }
    if (dataClassName == 'WithQgis') {
      return deserialize<_i40.WithQgis>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i77.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
