/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Terms extends _i1.SerializableEntity {
  Terms._({
    this.id,
    required this.term,
  });

  factory Terms({
    int? id,
    required String term,
  }) = _TermsImpl;

  factory Terms.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Terms(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      term: serializationManager.deserialize<String>(jsonSerialization['term']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String term;

  Terms copyWith({
    int? id,
    String? term,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'term': term,
    };
  }
}

class _Undefined {}

class _TermsImpl extends Terms {
  _TermsImpl({
    int? id,
    required String term,
  }) : super._(
          id: id,
          term: term,
        );

  @override
  Terms copyWith({
    Object? id = _Undefined,
    String? term,
  }) {
    return Terms(
      id: id is int? ? id : this.id,
      term: term ?? this.term,
    );
  }
}
