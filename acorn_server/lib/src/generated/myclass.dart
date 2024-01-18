/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/module.dart' as _i2;

abstract class MyClass extends _i1.SerializableEntity {
  MyClass._({required this.userInfo});

  factory MyClass({required _i2.UserInfo userInfo}) = _MyClassImpl;

  factory MyClass.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MyClass(
        userInfo: serializationManager
            .deserialize<_i2.UserInfo>(jsonSerialization['userInfo']));
  }

  _i2.UserInfo userInfo;

  MyClass copyWith({_i2.UserInfo? userInfo});
  @override
  Map<String, dynamic> toJson() {
    return {
      'userInfo': userInfo,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {'userInfo': userInfo};
  }
}

class _MyClassImpl extends MyClass {
  _MyClassImpl({required _i2.UserInfo userInfo}) : super._(userInfo: userInfo);

  @override
  MyClass copyWith({_i2.UserInfo? userInfo}) {
    return MyClass(userInfo: userInfo ?? this.userInfo.copyWith());
  }
}
