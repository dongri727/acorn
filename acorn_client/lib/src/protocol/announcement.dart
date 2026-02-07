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

abstract class Announcement implements _i1.SerializableModel {
  Announcement._({
    this.id,
    required this.title,
    required this.body,
    required this.publishedAt,
    required this.targetPlatforms,
    this.minBuild,
    this.isPublished,
    this.createdAt,
  });

  factory Announcement({
    int? id,
    required String title,
    required String body,
    required DateTime publishedAt,
    required String targetPlatforms,
    int? minBuild,
    bool? isPublished,
    DateTime? createdAt,
  }) = _AnnouncementImpl;

  factory Announcement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Announcement(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      body: jsonSerialization['body'] as String,
      publishedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['publishedAt'],
      ),
      targetPlatforms: jsonSerialization['targetPlatforms'] as String,
      minBuild: jsonSerialization['minBuild'] as int?,
      isPublished: jsonSerialization['isPublished'] as bool?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String body;

  DateTime publishedAt;

  String targetPlatforms;

  int? minBuild;

  bool? isPublished;

  DateTime? createdAt;

  /// Returns a shallow copy of this [Announcement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Announcement copyWith({
    int? id,
    String? title,
    String? body,
    DateTime? publishedAt,
    String? targetPlatforms,
    int? minBuild,
    bool? isPublished,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Announcement',
      if (id != null) 'id': id,
      'title': title,
      'body': body,
      'publishedAt': publishedAt.toJson(),
      'targetPlatforms': targetPlatforms,
      if (minBuild != null) 'minBuild': minBuild,
      if (isPublished != null) 'isPublished': isPublished,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AnnouncementImpl extends Announcement {
  _AnnouncementImpl({
    int? id,
    required String title,
    required String body,
    required DateTime publishedAt,
    required String targetPlatforms,
    int? minBuild,
    bool? isPublished,
    DateTime? createdAt,
  }) : super._(
         id: id,
         title: title,
         body: body,
         publishedAt: publishedAt,
         targetPlatforms: targetPlatforms,
         minBuild: minBuild,
         isPublished: isPublished,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Announcement]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Announcement copyWith({
    Object? id = _Undefined,
    String? title,
    String? body,
    DateTime? publishedAt,
    String? targetPlatforms,
    Object? minBuild = _Undefined,
    Object? isPublished = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return Announcement(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      publishedAt: publishedAt ?? this.publishedAt,
      targetPlatforms: targetPlatforms ?? this.targetPlatforms,
      minBuild: minBuild is int? ? minBuild : this.minBuild,
      isPublished: isPublished is bool? ? isPublished : this.isPublished,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
