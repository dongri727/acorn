/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;

class MyClass extends _i1.SerializableEntity {
  MyClass({required this.userInfo});

  factory MyClass.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return MyClass(
        userInfo: serializationManager
            .deserialize<_i2.UserInfo>(jsonSerialization['userInfo']));
  }

  _i2.UserInfo userInfo;

  @override
  Map<String, dynamic> toJson() {
    return {'userInfo': userInfo};
  }
}
