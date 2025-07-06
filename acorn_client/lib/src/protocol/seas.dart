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

abstract class Seas implements _i1.SerializableModel {
  Seas._({
    this.id,
    required this.sea,
    required this.area,
  });

  factory Seas({
    int? id,
    required String sea,
    required String area,
  }) = _SeasImpl;

  factory Seas.fromJson(Map<String, dynamic> jsonSerialization) {
    return Seas(
      id: jsonSerialization['id'] as int?,
      sea: jsonSerialization['sea'] as String,
      area: jsonSerialization['area'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String sea;

  String area;

  /// Returns a shallow copy of this [Seas]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Seas copyWith({
    int? id,
    String? sea,
    String? area,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'sea': sea,
      'area': area,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SeasImpl extends Seas {
  _SeasImpl({
    int? id,
    required String sea,
    required String area,
  }) : super._(
          id: id,
          sea: sea,
          area: area,
        );

  /// Returns a shallow copy of this [Seas]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Seas copyWith({
    Object? id = _Undefined,
    String? sea,
    String? area,
  }) {
    return Seas(
      id: id is int? ? id : this.id,
      sea: sea ?? this.sea,
      area: area ?? this.area,
    );
  }
}
