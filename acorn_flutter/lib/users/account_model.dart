import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';

class AccountModel extends ChangeNotifier {

  List<Principal> principal = [];

  fetchPrincipalByUserId({int? userId}) async {
    try {
      principal = await client.principal.getPrincipalByUserId(userId: userId);
      principal.sort((a,b) => a.point.compareTo(b.point));
      print("Getting principal with keywords: $userId");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}