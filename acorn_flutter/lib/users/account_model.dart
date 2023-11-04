import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class AccountModel extends ChangeNotifier {

  List<Principal> principal = [];

  fetchPrincipalByUserId({int? userId}) async {
    try {
      principal = await client.principal.getPrincipalByUserId(userId: userId);
      print("Getting principal with keywords: $userId");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}