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

abstract class Space implements _i1.SerializableModel {
  Space._({
    this.id,
    required this.principalId,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.location,
    required this.precise,
    required this.hecX,
    required this.hecY,
    required this.hecZ,
    required this.julianD,
    required this.gLat,
    required this.gLon,
    required this.lightYear,
  });

  factory Space({
    int? id,
    required int principalId,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
    required double hecX,
    required double hecY,
    required double hecZ,
    required int julianD,
    required double gLat,
    required double gLon,
    required double lightYear,
  }) = _SpaceImpl;

  factory Space.fromJson(Map<String, dynamic> jsonSerialization) {
    return Space(
      id: jsonSerialization['id'] as int?,
      principalId: jsonSerialization['principalId'] as int,
      annee: jsonSerialization['annee'] as String,
      month: jsonSerialization['month'] as int,
      day: jsonSerialization['day'] as int,
      point: jsonSerialization['point'] as int,
      affair: jsonSerialization['affair'] as String,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      hecX: (jsonSerialization['hecX'] as num).toDouble(),
      hecY: (jsonSerialization['hecY'] as num).toDouble(),
      hecZ: (jsonSerialization['hecZ'] as num).toDouble(),
      julianD: jsonSerialization['julianD'] as int,
      gLat: (jsonSerialization['gLat'] as num).toDouble(),
      gLon: (jsonSerialization['gLon'] as num).toDouble(),
      lightYear: (jsonSerialization['lightYear'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int principalId;

  String annee;

  int month;

  int day;

  int point;

  String affair;

  String location;

  String precise;

  double hecX;

  double hecY;

  double hecZ;

  int julianD;

  double gLat;

  double gLon;

  double lightYear;

  /// Returns a shallow copy of this [Space]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Space copyWith({
    int? id,
    int? principalId,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
    double? hecX,
    double? hecY,
    double? hecZ,
    int? julianD,
    double? gLat,
    double? gLon,
    double? lightYear,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Space',
      if (id != null) 'id': id,
      'principalId': principalId,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'location': location,
      'precise': precise,
      'hecX': hecX,
      'hecY': hecY,
      'hecZ': hecZ,
      'julianD': julianD,
      'gLat': gLat,
      'gLon': gLon,
      'lightYear': lightYear,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SpaceImpl extends Space {
  _SpaceImpl({
    int? id,
    required int principalId,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String location,
    required String precise,
    required double hecX,
    required double hecY,
    required double hecZ,
    required int julianD,
    required double gLat,
    required double gLon,
    required double lightYear,
  }) : super._(
         id: id,
         principalId: principalId,
         annee: annee,
         month: month,
         day: day,
         point: point,
         affair: affair,
         location: location,
         precise: precise,
         hecX: hecX,
         hecY: hecY,
         hecZ: hecZ,
         julianD: julianD,
         gLat: gLat,
         gLon: gLon,
         lightYear: lightYear,
       );

  /// Returns a shallow copy of this [Space]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Space copyWith({
    Object? id = _Undefined,
    int? principalId,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? location,
    String? precise,
    double? hecX,
    double? hecY,
    double? hecZ,
    int? julianD,
    double? gLat,
    double? gLon,
    double? lightYear,
  }) {
    return Space(
      id: id is int? ? id : this.id,
      principalId: principalId ?? this.principalId,
      annee: annee ?? this.annee,
      month: month ?? this.month,
      day: day ?? this.day,
      point: point ?? this.point,
      affair: affair ?? this.affair,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      hecX: hecX ?? this.hecX,
      hecY: hecY ?? this.hecY,
      hecZ: hecZ ?? this.hecZ,
      julianD: julianD ?? this.julianD,
      gLat: gLat ?? this.gLat,
      gLon: gLon ?? this.gLon,
      lightYear: lightYear ?? this.lightYear,
    );
  }
}
