/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'c_involved.dart' as _i2;
import 'categories.dart' as _i3;
import 'countryatts.dart' as _i4;
import 'days.dart' as _i5;
import 'example.dart' as _i6;
import 'lieux.dart' as _i7;
import 'localdates.dart' as _i8;
import 'months.dart' as _i9;
import 'organisations.dart' as _i10;
import 'p_catt.dart' as _i11;
import 'p_place.dart' as _i12;
import 'p_seas.dart' as _i13;
import 'pays.dart' as _i14;
import 'people.dart' as _i15;
import 'placeatts.dart' as _i16;
import 'places.dart' as _i17;
import 'principal.dart' as _i18;
import 'seas.dart' as _i19;
import 'terms.dart' as _i20;
import 'package:acorn_client/src/protocol/c_involved.dart' as _i21;
import 'package:acorn_client/src/protocol/categories.dart' as _i22;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i23;
import 'package:acorn_client/src/protocol/days.dart' as _i24;
import 'package:acorn_client/src/protocol/lieux.dart' as _i25;
import 'package:acorn_client/src/protocol/localdates.dart' as _i26;
import 'package:acorn_client/src/protocol/months.dart' as _i27;
import 'package:acorn_client/src/protocol/organisations.dart' as _i28;
import 'package:acorn_client/src/protocol/p_catt.dart' as _i29;
import 'package:acorn_client/src/protocol/p_place.dart' as _i30;
import 'package:acorn_client/src/protocol/p_seas.dart' as _i31;
import 'package:acorn_client/src/protocol/pays.dart' as _i32;
import 'package:acorn_client/src/protocol/people.dart' as _i33;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i34;
import 'package:acorn_client/src/protocol/places.dart' as _i35;
import 'package:acorn_client/src/protocol/principal.dart' as _i36;
import 'package:acorn_client/src/protocol/seas.dart' as _i37;
import 'package:acorn_client/src/protocol/terms.dart' as _i38;
export 'c_involved.dart';
export 'categories.dart';
export 'countryatts.dart';
export 'days.dart';
export 'example.dart';
export 'lieux.dart';
export 'localdates.dart';
export 'months.dart';
export 'organisations.dart';
export 'p_catt.dart';
export 'p_place.dart';
export 'p_seas.dart';
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
    if (t == _i2.CountryInvolved) {
      return _i2.CountryInvolved.fromJson(data, this) as T;
    }
    if (t == _i3.Categories) {
      return _i3.Categories.fromJson(data, this) as T;
    }
    if (t == _i4.Countryatts) {
      return _i4.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i5.Days) {
      return _i5.Days.fromJson(data, this) as T;
    }
    if (t == _i6.Example) {
      return _i6.Example.fromJson(data, this) as T;
    }
    if (t == _i7.Lieux) {
      return _i7.Lieux.fromJson(data, this) as T;
    }
    if (t == _i8.LocalDates) {
      return _i8.LocalDates.fromJson(data, this) as T;
    }
    if (t == _i9.Months) {
      return _i9.Months.fromJson(data, this) as T;
    }
    if (t == _i10.Organisations) {
      return _i10.Organisations.fromJson(data, this) as T;
    }
    if (t == _i11.PrincipalCatt) {
      return _i11.PrincipalCatt.fromJson(data, this) as T;
    }
    if (t == _i12.PrincipalPlace) {
      return _i12.PrincipalPlace.fromJson(data, this) as T;
    }
    if (t == _i13.PrincipalSeas) {
      return _i13.PrincipalSeas.fromJson(data, this) as T;
    }
    if (t == _i14.Pays) {
      return _i14.Pays.fromJson(data, this) as T;
    }
    if (t == _i15.People) {
      return _i15.People.fromJson(data, this) as T;
    }
    if (t == _i16.Placeatts) {
      return _i16.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i17.Places) {
      return _i17.Places.fromJson(data, this) as T;
    }
    if (t == _i18.Principal) {
      return _i18.Principal.fromJson(data, this) as T;
    }
    if (t == _i19.Seas) {
      return _i19.Seas.fromJson(data, this) as T;
    }
    if (t == _i20.Terms) {
      return _i20.Terms.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.CountryInvolved?>()) {
      return (data != null ? _i2.CountryInvolved.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i3.Categories?>()) {
      return (data != null ? _i3.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Countryatts?>()) {
      return (data != null ? _i4.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Days?>()) {
      return (data != null ? _i5.Days.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Example?>()) {
      return (data != null ? _i6.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Lieux?>()) {
      return (data != null ? _i7.Lieux.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.LocalDates?>()) {
      return (data != null ? _i8.LocalDates.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Months?>()) {
      return (data != null ? _i9.Months.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Organisations?>()) {
      return (data != null ? _i10.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.PrincipalCatt?>()) {
      return (data != null ? _i11.PrincipalCatt.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i12.PrincipalPlace?>()) {
      return (data != null ? _i12.PrincipalPlace.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.PrincipalSeas?>()) {
      return (data != null ? _i13.PrincipalSeas.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.Pays?>()) {
      return (data != null ? _i14.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.People?>()) {
      return (data != null ? _i15.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.Placeatts?>()) {
      return (data != null ? _i16.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.Places?>()) {
      return (data != null ? _i17.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i18.Principal?>()) {
      return (data != null ? _i18.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.Seas?>()) {
      return (data != null ? _i19.Seas.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i20.Terms?>()) {
      return (data != null ? _i20.Terms.fromJson(data, this) : null) as T;
    }
    if (t == List<_i21.CountryInvolved>) {
      return (data as List)
          .map((e) => deserialize<_i21.CountryInvolved>(e))
          .toList() as dynamic;
    }
    if (t == List<_i22.Categories>) {
      return (data as List).map((e) => deserialize<_i22.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i23.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i23.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i24.Days>) {
      return (data as List).map((e) => deserialize<_i24.Days>(e)).toList()
          as dynamic;
    }
    if (t == List<_i25.Lieux>) {
      return (data as List).map((e) => deserialize<_i25.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i26.LocalDates>) {
      return (data as List).map((e) => deserialize<_i26.LocalDates>(e)).toList()
          as dynamic;
    }
    if (t == List<_i27.Months>) {
      return (data as List).map((e) => deserialize<_i27.Months>(e)).toList()
          as dynamic;
    }
    if (t == List<_i28.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i28.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i29.PrincipalCatt>) {
      return (data as List)
          .map((e) => deserialize<_i29.PrincipalCatt>(e))
          .toList() as dynamic;
    }
    if (t == List<_i30.PrincipalPlace>) {
      return (data as List)
          .map((e) => deserialize<_i30.PrincipalPlace>(e))
          .toList() as dynamic;
    }
    if (t == List<_i31.PrincipalSeas>) {
      return (data as List)
          .map((e) => deserialize<_i31.PrincipalSeas>(e))
          .toList() as dynamic;
    }
    if (t == List<_i32.Pays>) {
      return (data as List).map((e) => deserialize<_i32.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i33.People>) {
      return (data as List).map((e) => deserialize<_i33.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i34.Placeatts>) {
      return (data as List).map((e) => deserialize<_i34.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i35.Places>) {
      return (data as List).map((e) => deserialize<_i35.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i36.Principal>) {
      return (data as List).map((e) => deserialize<_i36.Principal>(e)).toList()
          as dynamic;
    }
    if (t == List<_i37.Seas>) {
      return (data as List).map((e) => deserialize<_i37.Seas>(e)).toList()
          as dynamic;
    }
    if (t == List<_i38.Terms>) {
      return (data as List).map((e) => deserialize<_i38.Terms>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.CountryInvolved) {
      return 'CountryInvolved';
    }
    if (data is _i3.Categories) {
      return 'Categories';
    }
    if (data is _i4.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i5.Days) {
      return 'Days';
    }
    if (data is _i6.Example) {
      return 'Example';
    }
    if (data is _i7.Lieux) {
      return 'Lieux';
    }
    if (data is _i8.LocalDates) {
      return 'LocalDates';
    }
    if (data is _i9.Months) {
      return 'Months';
    }
    if (data is _i10.Organisations) {
      return 'Organisations';
    }
    if (data is _i11.PrincipalCatt) {
      return 'PrincipalCatt';
    }
    if (data is _i12.PrincipalPlace) {
      return 'PrincipalPlace';
    }
    if (data is _i13.PrincipalSeas) {
      return 'PrincipalSeas';
    }
    if (data is _i14.Pays) {
      return 'Pays';
    }
    if (data is _i15.People) {
      return 'People';
    }
    if (data is _i16.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i17.Places) {
      return 'Places';
    }
    if (data is _i18.Principal) {
      return 'Principal';
    }
    if (data is _i19.Seas) {
      return 'Seas';
    }
    if (data is _i20.Terms) {
      return 'Terms';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'CountryInvolved') {
      return deserialize<_i2.CountryInvolved>(data['data']);
    }
    if (data['className'] == 'Categories') {
      return deserialize<_i3.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i4.Countryatts>(data['data']);
    }
    if (data['className'] == 'Days') {
      return deserialize<_i5.Days>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i6.Example>(data['data']);
    }
    if (data['className'] == 'Lieux') {
      return deserialize<_i7.Lieux>(data['data']);
    }
    if (data['className'] == 'LocalDates') {
      return deserialize<_i8.LocalDates>(data['data']);
    }
    if (data['className'] == 'Months') {
      return deserialize<_i9.Months>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i10.Organisations>(data['data']);
    }
    if (data['className'] == 'PrincipalCatt') {
      return deserialize<_i11.PrincipalCatt>(data['data']);
    }
    if (data['className'] == 'PrincipalPlace') {
      return deserialize<_i12.PrincipalPlace>(data['data']);
    }
    if (data['className'] == 'PrincipalSeas') {
      return deserialize<_i13.PrincipalSeas>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i14.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i15.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i16.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i17.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i18.Principal>(data['data']);
    }
    if (data['className'] == 'Seas') {
      return deserialize<_i19.Seas>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i20.Terms>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
