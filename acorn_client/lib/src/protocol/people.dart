/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class People extends _i1.SerializableEntity {
  People._({
    this.id,
    required this.person,
  });

  factory People({
    int? id,
    required String person,
  }) = _PeopleImpl;

  factory People.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return People(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      person:
          serializationManager.deserialize<String>(jsonSerialization['person']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String person;

  People copyWith({
    int? id,
    String? person,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'person': person,
    };
  }
}

class _Undefined {}

class _PeopleImpl extends People {
  _PeopleImpl({
    int? id,
    required String person,
  }) : super._(
          id: id,
          person: person,
        );

  @override
  People copyWith({
    Object? id = _Undefined,
    String? person,
  }) {
    return People(
      id: id is int? ? id : this.id,
      person: person ?? this.person,
    );
  }
}
