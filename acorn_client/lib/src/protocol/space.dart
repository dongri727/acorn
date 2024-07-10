/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Space implements _i1.SerializableModel {
  Space._({
    this.id,
    required this.annee,
    required this.month,
    required this.day,
    required this.point,
    required this.affair,
    required this.distance,
  });

  factory Space({
    int? id,
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String distance,
  }) = _SpaceImpl;

  factory Space.fromJson(Map<String, dynamic> jsonSerialization) {
    return Space(
      id: jsonSerialization['id'] as int?,
      annee: jsonSerialization['annee'] as String,
      month: jsonSerialization['month'] as int,
      day: jsonSerialization['day'] as int,
      point: jsonSerialization['point'] as int,
      affair: jsonSerialization['affair'] as String,
      distance: jsonSerialization['distance'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String annee;

  int month;

  int day;

  int point;

  String affair;

  String distance;

  Space copyWith({
    int? id,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? distance,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'annee': annee,
      'month': month,
      'day': day,
      'point': point,
      'affair': affair,
      'distance': distance,
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
    required String annee,
    required int month,
    required int day,
    required int point,
    required String affair,
    required String distance,
  }) : super._(
          id: id,
          annee: annee,
          month: month,
          day: day,
          point: point,
          affair: affair,
          distance: distance,
        );

  @override
  Space copyWith({
    Object? id = _Undefined,
    String? annee,
    int? month,
    int? day,
    int? point,
    String? affair,
    String? distance,
  }) {
    return Space(
      id: id is int? ? id : this.id,
      annee: annee ?? this.annee,
      month: month ?? this.month,
      day: day ?? this.day,
      point: point ?? this.point,
      affair: affair ?? this.affair,
      distance: distance ?? this.distance,
    );
  }
}
