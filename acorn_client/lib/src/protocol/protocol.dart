/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'categories.dart' as _i2;
import 'countryatts.dart' as _i3;
import 'days.dart' as _i4;
import 'example.dart' as _i5;
import 'lieux.dart' as _i6;
import 'months.dart' as _i7;
import 'organisations.dart' as _i8;
import 'pays.dart' as _i9;
import 'people.dart' as _i10;
import 'placeatts.dart' as _i11;
import 'places.dart' as _i12;
import 'principal.dart' as _i13;
import 'terms.dart' as _i14;
import 'package:acorn_client/src/protocol/categories.dart' as _i15;
import 'package:acorn_client/src/protocol/countryatts.dart' as _i16;
import 'package:acorn_client/src/protocol/days.dart' as _i17;
import 'package:acorn_client/src/protocol/lieux.dart' as _i18;
import 'package:acorn_client/src/protocol/months.dart' as _i19;
import 'package:acorn_client/src/protocol/organisations.dart' as _i20;
import 'package:acorn_client/src/protocol/pays.dart' as _i21;
import 'package:acorn_client/src/protocol/people.dart' as _i22;
import 'package:acorn_client/src/protocol/placeatts.dart' as _i23;
import 'package:acorn_client/src/protocol/places.dart' as _i24;
import 'package:acorn_client/src/protocol/principal.dart' as _i25;
import 'package:acorn_client/src/protocol/terms.dart' as _i26;
export 'categories.dart';
export 'countryatts.dart';
export 'days.dart';
export 'example.dart';
export 'lieux.dart';
export 'months.dart';
export 'organisations.dart';
export 'pays.dart';
export 'people.dart';
export 'placeatts.dart';
export 'places.dart';
export 'principal.dart';
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
    if (t == _i2.Categories) {
      return _i2.Categories.fromJson(data, this) as T;
    }
    if (t == _i3.Countryatts) {
      return _i3.Countryatts.fromJson(data, this) as T;
    }
    if (t == _i4.Days) {
      return _i4.Days.fromJson(data, this) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data, this) as T;
    }
    if (t == _i6.Lieux) {
      return _i6.Lieux.fromJson(data, this) as T;
    }
    if (t == _i7.Months) {
      return _i7.Months.fromJson(data, this) as T;
    }
    if (t == _i8.Organisations) {
      return _i8.Organisations.fromJson(data, this) as T;
    }
    if (t == _i9.Pays) {
      return _i9.Pays.fromJson(data, this) as T;
    }
    if (t == _i10.People) {
      return _i10.People.fromJson(data, this) as T;
    }
    if (t == _i11.Placeatts) {
      return _i11.Placeatts.fromJson(data, this) as T;
    }
    if (t == _i12.Places) {
      return _i12.Places.fromJson(data, this) as T;
    }
    if (t == _i13.Principal) {
      return _i13.Principal.fromJson(data, this) as T;
    }
    if (t == _i14.Terms) {
      return _i14.Terms.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Categories?>()) {
      return (data != null ? _i2.Categories.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Countryatts?>()) {
      return (data != null ? _i3.Countryatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Days?>()) {
      return (data != null ? _i4.Days.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Lieux?>()) {
      return (data != null ? _i6.Lieux.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Months?>()) {
      return (data != null ? _i7.Months.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Organisations?>()) {
      return (data != null ? _i8.Organisations.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i9.Pays?>()) {
      return (data != null ? _i9.Pays.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.People?>()) {
      return (data != null ? _i10.People.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Placeatts?>()) {
      return (data != null ? _i11.Placeatts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Places?>()) {
      return (data != null ? _i12.Places.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.Principal?>()) {
      return (data != null ? _i13.Principal.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.Terms?>()) {
      return (data != null ? _i14.Terms.fromJson(data, this) : null) as T;
    }
    if (t == List<_i15.Categories>) {
      return (data as List).map((e) => deserialize<_i15.Categories>(e)).toList()
          as dynamic;
    }
    if (t == List<_i16.Countryatts>) {
      return (data as List)
          .map((e) => deserialize<_i16.Countryatts>(e))
          .toList() as dynamic;
    }
    if (t == List<_i17.Days>) {
      return (data as List).map((e) => deserialize<_i17.Days>(e)).toList()
          as dynamic;
    }
    if (t == List<_i18.Lieux>) {
      return (data as List).map((e) => deserialize<_i18.Lieux>(e)).toList()
          as dynamic;
    }
    if (t == List<_i19.Months>) {
      return (data as List).map((e) => deserialize<_i19.Months>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.Organisations>) {
      return (data as List)
          .map((e) => deserialize<_i20.Organisations>(e))
          .toList() as dynamic;
    }
    if (t == List<_i21.Pays>) {
      return (data as List).map((e) => deserialize<_i21.Pays>(e)).toList()
          as dynamic;
    }
    if (t == List<_i22.People>) {
      return (data as List).map((e) => deserialize<_i22.People>(e)).toList()
          as dynamic;
    }
    if (t == List<_i23.Placeatts>) {
      return (data as List).map((e) => deserialize<_i23.Placeatts>(e)).toList()
          as dynamic;
    }
    if (t == List<_i24.Places>) {
      return (data as List).map((e) => deserialize<_i24.Places>(e)).toList()
          as dynamic;
    }
    if (t == List<_i25.Principal>) {
      return (data as List).map((e) => deserialize<_i25.Principal>(e)).toList()
          as dynamic;
    }
    if (t == List<_i26.Terms>) {
      return (data as List).map((e) => deserialize<_i26.Terms>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Categories) {
      return 'Categories';
    }
    if (data is _i3.Countryatts) {
      return 'Countryatts';
    }
    if (data is _i4.Days) {
      return 'Days';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Lieux) {
      return 'Lieux';
    }
    if (data is _i7.Months) {
      return 'Months';
    }
    if (data is _i8.Organisations) {
      return 'Organisations';
    }
    if (data is _i9.Pays) {
      return 'Pays';
    }
    if (data is _i10.People) {
      return 'People';
    }
    if (data is _i11.Placeatts) {
      return 'Placeatts';
    }
    if (data is _i12.Places) {
      return 'Places';
    }
    if (data is _i13.Principal) {
      return 'Principal';
    }
    if (data is _i14.Terms) {
      return 'Terms';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Categories') {
      return deserialize<_i2.Categories>(data['data']);
    }
    if (data['className'] == 'Countryatts') {
      return deserialize<_i3.Countryatts>(data['data']);
    }
    if (data['className'] == 'Days') {
      return deserialize<_i4.Days>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (data['className'] == 'Lieux') {
      return deserialize<_i6.Lieux>(data['data']);
    }
    if (data['className'] == 'Months') {
      return deserialize<_i7.Months>(data['data']);
    }
    if (data['className'] == 'Organisations') {
      return deserialize<_i8.Organisations>(data['data']);
    }
    if (data['className'] == 'Pays') {
      return deserialize<_i9.Pays>(data['data']);
    }
    if (data['className'] == 'People') {
      return deserialize<_i10.People>(data['data']);
    }
    if (data['className'] == 'Placeatts') {
      return deserialize<_i11.Placeatts>(data['data']);
    }
    if (data['className'] == 'Places') {
      return deserialize<_i12.Places>(data['data']);
    }
    if (data['className'] == 'Principal') {
      return deserialize<_i13.Principal>(data['data']);
    }
    if (data['className'] == 'Terms') {
      return deserialize<_i14.Terms>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
