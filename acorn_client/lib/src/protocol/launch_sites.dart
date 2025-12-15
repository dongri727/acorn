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

abstract class LaunchSites implements _i1.SerializableModel {
  LaunchSites._({
    this.id,
    required this.location,
    required this.precise,
    required this.site,
    required this.lat,
    required this.lon,
  });

  factory LaunchSites({
    int? id,
    required String location,
    required String precise,
    required String site,
    required double lat,
    required double lon,
  }) = _LaunchSitesImpl;

  factory LaunchSites.fromJson(Map<String, dynamic> jsonSerialization) {
    return LaunchSites(
      id: jsonSerialization['id'] as int?,
      location: jsonSerialization['location'] as String,
      precise: jsonSerialization['precise'] as String,
      site: jsonSerialization['site'] as String,
      lat: (jsonSerialization['lat'] as num).toDouble(),
      lon: (jsonSerialization['lon'] as num).toDouble(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String location;

  String precise;

  String site;

  double lat;

  double lon;

  /// Returns a shallow copy of this [LaunchSites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LaunchSites copyWith({
    int? id,
    String? location,
    String? precise,
    String? site,
    double? lat,
    double? lon,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'LaunchSites',
      if (id != null) 'id': id,
      'location': location,
      'precise': precise,
      'site': site,
      'lat': lat,
      'lon': lon,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LaunchSitesImpl extends LaunchSites {
  _LaunchSitesImpl({
    int? id,
    required String location,
    required String precise,
    required String site,
    required double lat,
    required double lon,
  }) : super._(
         id: id,
         location: location,
         precise: precise,
         site: site,
         lat: lat,
         lon: lon,
       );

  /// Returns a shallow copy of this [LaunchSites]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LaunchSites copyWith({
    Object? id = _Undefined,
    String? location,
    String? precise,
    String? site,
    double? lat,
    double? lon,
  }) {
    return LaunchSites(
      id: id is int? ? id : this.id,
      location: location ?? this.location,
      precise: precise ?? this.precise,
      site: site ?? this.site,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
    );
  }
}
