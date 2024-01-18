/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Countryatts extends _i1.SerializableEntity {
  Countryatts._({
    this.id,
    required this.countryatt,
  });

  factory Countryatts({
    int? id,
    required String countryatt,
  }) = _CountryattsImpl;

  factory Countryatts.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Countryatts(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      countryatt: serializationManager
          .deserialize<String>(jsonSerialization['countryatt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String countryatt;

  Countryatts copyWith({
    int? id,
    String? countryatt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'countryatt': countryatt,
    };
  }
}

class _Undefined {}

class _CountryattsImpl extends Countryatts {
  _CountryattsImpl({
    int? id,
    required String countryatt,
  }) : super._(
          id: id,
          countryatt: countryatt,
        );

  @override
  Countryatts copyWith({
    Object? id = _Undefined,
    String? countryatt,
  }) {
    return Countryatts(
      id: id is int? ? id : this.id,
      countryatt: countryatt ?? this.countryatt,
    );
  }
}
