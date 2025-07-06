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

abstract class Placeatts implements _i1.SerializableModel {
  Placeatts._({
    this.id,
    required this.placeatt,
  });

  factory Placeatts({
    int? id,
    required String placeatt,
  }) = _PlaceattsImpl;

  factory Placeatts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Placeatts(
      id: jsonSerialization['id'] as int?,
      placeatt: jsonSerialization['placeatt'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String placeatt;

  /// Returns a shallow copy of this [Placeatts]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Placeatts copyWith({
    int? id,
    String? placeatt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'placeatt': placeatt,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlaceattsImpl extends Placeatts {
  _PlaceattsImpl({
    int? id,
    required String placeatt,
  }) : super._(
          id: id,
          placeatt: placeatt,
        );

  /// Returns a shallow copy of this [Placeatts]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Placeatts copyWith({
    Object? id = _Undefined,
    String? placeatt,
  }) {
    return Placeatts(
      id: id is int? ? id : this.id,
      placeatt: placeatt ?? this.placeatt,
    );
  }
}
