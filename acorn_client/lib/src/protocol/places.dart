/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Places implements _i1.SerializableModel {
  Places._({
    this.id,
    required this.place,
    required this.country,
  });

  factory Places({
    int? id,
    required String place,
    required String country,
  }) = _PlacesImpl;

  factory Places.fromJson(Map<String, dynamic> jsonSerialization) {
    return Places(
      id: jsonSerialization['id'] as int?,
      place: jsonSerialization['place'] as String,
      country: jsonSerialization['country'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String place;

  String country;

  Places copyWith({
    int? id,
    String? place,
    String? country,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'place': place,
      'country': country,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlacesImpl extends Places {
  _PlacesImpl({
    int? id,
    required String place,
    required String country,
  }) : super._(
          id: id,
          place: place,
          country: country,
        );

  @override
  Places copyWith({
    Object? id = _Undefined,
    String? place,
    String? country,
  }) {
    return Places(
      id: id is int? ? id : this.id,
      place: place ?? this.place,
      country: country ?? this.country,
    );
  }
}
