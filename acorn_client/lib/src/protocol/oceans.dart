/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Oceans extends _i1.SerializableEntity {
  Oceans._({
    this.id,
    required this.ocean,
  });

  factory Oceans({
    int? id,
    required String ocean,
  }) = _OceansImpl;

  factory Oceans.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Oceans(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ocean:
          serializationManager.deserialize<String>(jsonSerialization['ocean']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String ocean;

  Oceans copyWith({
    int? id,
    String? ocean,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ocean': ocean,
    };
  }
}

class _Undefined {}

class _OceansImpl extends Oceans {
  _OceansImpl({
    int? id,
    required String ocean,
  }) : super._(
          id: id,
          ocean: ocean,
        );

  @override
  Oceans copyWith({
    Object? id = _Undefined,
    String? ocean,
  }) {
    return Oceans(
      id: id is int? ? id : this.id,
      ocean: ocean ?? this.ocean,
    );
  }
}
