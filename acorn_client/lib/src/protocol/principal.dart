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

abstract class Principal implements _i1.SerializableModel {
  Principal._({
    this.id,
    required this.period,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.precise,
  });

  factory Principal({
    int? id,
    required String period,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
  }) = _PrincipalImpl;

  factory Principal.fromJson(Map<String, dynamic> jsonSerialization) {
    return Principal(
      id: jsonSerialization['id'] as int?,
      period: jsonSerialization['period'] as String,
      annee: jsonSerialization['annee'] as String,
      month: jsonSerialization['month'] as int,
      day: jsonSerialization['day'] as int,
      point: jsonSerialization['point'] as int,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String period;

  String annee;

  int month;

  int day;

  int point;

  String affair;

  String location;

  String precise;

  /// Returns a shallow copy of this [Principal]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Principal copyWith({
    int? id,
    String? period,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'period': period,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrincipalImpl extends Principal {
  _PrincipalImpl({
    int? id,
    required String period,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
  }) : super._(
          id: id,
          period: period,
          annee: annee,
          month: month,
          day: day,
          point: point,
          affair: affair,
          location: location,
          precise: precise,
        );

  /// Returns a shallow copy of this [Principal]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Principal copyWith({
    Object? id = _Undefined,
    String? period,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
  }) {
    return Principal(
      id: id is int? ? id : this.id,
      period: period ?? this.period,
      annee: annee ?? this.annee,
      month: month ?? this.month,
      day: day ?? this.day,
      point: point ?? this.point,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
    );
  }
}
