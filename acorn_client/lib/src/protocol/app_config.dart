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

abstract class AppConfig implements _i1.SerializableModel {
  AppConfig._({
    this.id,
    this.minBuildIos,
    this.latestBuildIos,
    this.minBuildAndroid,
    this.latestBuildAndroid,
    this.minBuildWeb,
    this.latestBuildWeb,
    this.messageJa,
    this.messageEn,
    this.storeUrlIos,
    this.storeUrlAndroid,
    this.webUrl,
    this.maintenance,
    this.updatedAt,
  });

  factory AppConfig({
    int? id,
    int? minBuildIos,
    int? latestBuildIos,
    int? minBuildAndroid,
    int? latestBuildAndroid,
    int? minBuildWeb,
    int? latestBuildWeb,
    String? messageJa,
    String? messageEn,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
    DateTime? updatedAt,
  }) = _AppConfigImpl;

  factory AppConfig.fromJson(Map<String, dynamic> jsonSerialization) {
    return AppConfig(
      id: jsonSerialization['id'] as int?,
      minBuildIos: jsonSerialization['minBuildIos'] as int?,
      latestBuildIos: jsonSerialization['latestBuildIos'] as int?,
      minBuildAndroid: jsonSerialization['minBuildAndroid'] as int?,
      latestBuildAndroid: jsonSerialization['latestBuildAndroid'] as int?,
      minBuildWeb: jsonSerialization['minBuildWeb'] as int?,
      latestBuildWeb: jsonSerialization['latestBuildWeb'] as int?,
      messageJa: jsonSerialization['messageJa'] as String?,
      messageEn: jsonSerialization['messageEn'] as String?,
      storeUrlIos: jsonSerialization['storeUrlIos'] as String?,
      storeUrlAndroid: jsonSerialization['storeUrlAndroid'] as String?,
      webUrl: jsonSerialization['webUrl'] as String?,
      maintenance: jsonSerialization['maintenance'] as bool?,
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? minBuildIos;

  int? latestBuildIos;

  int? minBuildAndroid;

  int? latestBuildAndroid;

  int? minBuildWeb;

  int? latestBuildWeb;

  String? messageJa;

  String? messageEn;

  String? storeUrlIos;

  String? storeUrlAndroid;

  String? webUrl;

  bool? maintenance;

  DateTime? updatedAt;

  /// Returns a shallow copy of this [AppConfig]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AppConfig copyWith({
    int? id,
    int? minBuildIos,
    int? latestBuildIos,
    int? minBuildAndroid,
    int? latestBuildAndroid,
    int? minBuildWeb,
    int? latestBuildWeb,
    String? messageJa,
    String? messageEn,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AppConfig',
      if (id != null) 'id': id,
      if (minBuildIos != null) 'minBuildIos': minBuildIos,
      if (latestBuildIos != null) 'latestBuildIos': latestBuildIos,
      if (minBuildAndroid != null) 'minBuildAndroid': minBuildAndroid,
      if (latestBuildAndroid != null) 'latestBuildAndroid': latestBuildAndroid,
      if (minBuildWeb != null) 'minBuildWeb': minBuildWeb,
      if (latestBuildWeb != null) 'latestBuildWeb': latestBuildWeb,
      if (messageJa != null) 'messageJa': messageJa,
      if (messageEn != null) 'messageEn': messageEn,
      if (storeUrlIos != null) 'storeUrlIos': storeUrlIos,
      if (storeUrlAndroid != null) 'storeUrlAndroid': storeUrlAndroid,
      if (webUrl != null) 'webUrl': webUrl,
      if (maintenance != null) 'maintenance': maintenance,
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AppConfigImpl extends AppConfig {
  _AppConfigImpl({
    int? id,
    int? minBuildIos,
    int? latestBuildIos,
    int? minBuildAndroid,
    int? latestBuildAndroid,
    int? minBuildWeb,
    int? latestBuildWeb,
    String? messageJa,
    String? messageEn,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         minBuildIos: minBuildIos,
         latestBuildIos: latestBuildIos,
         minBuildAndroid: minBuildAndroid,
         latestBuildAndroid: latestBuildAndroid,
         minBuildWeb: minBuildWeb,
         latestBuildWeb: latestBuildWeb,
         messageJa: messageJa,
         messageEn: messageEn,
         storeUrlIos: storeUrlIos,
         storeUrlAndroid: storeUrlAndroid,
         webUrl: webUrl,
         maintenance: maintenance,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [AppConfig]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AppConfig copyWith({
    Object? id = _Undefined,
    Object? minBuildIos = _Undefined,
    Object? latestBuildIos = _Undefined,
    Object? minBuildAndroid = _Undefined,
    Object? latestBuildAndroid = _Undefined,
    Object? minBuildWeb = _Undefined,
    Object? latestBuildWeb = _Undefined,
    Object? messageJa = _Undefined,
    Object? messageEn = _Undefined,
    Object? storeUrlIos = _Undefined,
    Object? storeUrlAndroid = _Undefined,
    Object? webUrl = _Undefined,
    Object? maintenance = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return AppConfig(
      id: id is int? ? id : this.id,
      minBuildIos: minBuildIos is int? ? minBuildIos : this.minBuildIos,
      latestBuildIos: latestBuildIos is int?
          ? latestBuildIos
          : this.latestBuildIos,
      minBuildAndroid: minBuildAndroid is int?
          ? minBuildAndroid
          : this.minBuildAndroid,
      latestBuildAndroid: latestBuildAndroid is int?
          ? latestBuildAndroid
          : this.latestBuildAndroid,
      minBuildWeb: minBuildWeb is int? ? minBuildWeb : this.minBuildWeb,
      latestBuildWeb: latestBuildWeb is int?
          ? latestBuildWeb
          : this.latestBuildWeb,
      messageJa: messageJa is String? ? messageJa : this.messageJa,
      messageEn: messageEn is String? ? messageEn : this.messageEn,
      storeUrlIos: storeUrlIos is String? ? storeUrlIos : this.storeUrlIos,
      storeUrlAndroid: storeUrlAndroid is String?
          ? storeUrlAndroid
          : this.storeUrlAndroid,
      webUrl: webUrl is String? ? webUrl : this.webUrl,
      maintenance: maintenance is bool? ? maintenance : this.maintenance,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}
