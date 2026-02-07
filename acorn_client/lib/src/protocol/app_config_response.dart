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

abstract class AppConfigResponse implements _i1.SerializableModel {
  AppConfigResponse._({
    required this.minBuild,
    required this.latestBuild,
    required this.message,
    this.storeUrlIos,
    this.storeUrlAndroid,
    this.webUrl,
    required this.maintenance,
  });

  factory AppConfigResponse({
    required int minBuild,
    required int latestBuild,
    required String message,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    required bool maintenance,
  }) = _AppConfigResponseImpl;

  factory AppConfigResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return AppConfigResponse(
      minBuild: jsonSerialization['minBuild'] as int,
      latestBuild: jsonSerialization['latestBuild'] as int,
      message: jsonSerialization['message'] as String,
      storeUrlIos: jsonSerialization['storeUrlIos'] as String?,
      storeUrlAndroid: jsonSerialization['storeUrlAndroid'] as String?,
      webUrl: jsonSerialization['webUrl'] as String?,
      maintenance: jsonSerialization['maintenance'] as bool,
    );
  }

  int minBuild;

  int latestBuild;

  String message;

  String? storeUrlIos;

  String? storeUrlAndroid;

  String? webUrl;

  bool maintenance;

  /// Returns a shallow copy of this [AppConfigResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AppConfigResponse copyWith({
    int? minBuild,
    int? latestBuild,
    String? message,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    bool? maintenance,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AppConfigResponse',
      'minBuild': minBuild,
      'latestBuild': latestBuild,
      'message': message,
      if (storeUrlIos != null) 'storeUrlIos': storeUrlIos,
      if (storeUrlAndroid != null) 'storeUrlAndroid': storeUrlAndroid,
      if (webUrl != null) 'webUrl': webUrl,
      'maintenance': maintenance,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AppConfigResponseImpl extends AppConfigResponse {
  _AppConfigResponseImpl({
    required int minBuild,
    required int latestBuild,
    required String message,
    String? storeUrlIos,
    String? storeUrlAndroid,
    String? webUrl,
    required bool maintenance,
  }) : super._(
         minBuild: minBuild,
         latestBuild: latestBuild,
         message: message,
         storeUrlIos: storeUrlIos,
         storeUrlAndroid: storeUrlAndroid,
         webUrl: webUrl,
         maintenance: maintenance,
       );

  /// Returns a shallow copy of this [AppConfigResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AppConfigResponse copyWith({
    int? minBuild,
    int? latestBuild,
    String? message,
    Object? storeUrlIos = _Undefined,
    Object? storeUrlAndroid = _Undefined,
    Object? webUrl = _Undefined,
    bool? maintenance,
  }) {
    return AppConfigResponse(
      minBuild: minBuild ?? this.minBuild,
      latestBuild: latestBuild ?? this.latestBuild,
      message: message ?? this.message,
      storeUrlIos: storeUrlIos is String? ? storeUrlIos : this.storeUrlIos,
      storeUrlAndroid: storeUrlAndroid is String?
          ? storeUrlAndroid
          : this.storeUrlAndroid,
      webUrl: webUrl is String? ? webUrl : this.webUrl,
      maintenance: maintenance ?? this.maintenance,
    );
  }
}
