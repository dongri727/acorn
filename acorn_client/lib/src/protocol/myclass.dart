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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;

abstract class MyClass implements _i1.SerializableModel {
  MyClass._({required this.userInfo});

  factory MyClass({required _i2.UserInfo userInfo}) = _MyClassImpl;

  factory MyClass.fromJson(Map<String, dynamic> jsonSerialization) {
    return MyClass(
        userInfo: _i2.UserInfo.fromJson(
            (jsonSerialization['userInfo'] as Map<String, dynamic>)));
  }

  _i2.UserInfo userInfo;

  MyClass copyWith({_i2.UserInfo? userInfo});
  @override
  Map<String, dynamic> toJson() {
    return {'userInfo': userInfo.toJson()};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _MyClassImpl extends MyClass {
  _MyClassImpl({required _i2.UserInfo userInfo}) : super._(userInfo: userInfo);

  @override
  MyClass copyWith({_i2.UserInfo? userInfo}) {
    return MyClass(userInfo: userInfo ?? this.userInfo.copyWith());
  }
}
