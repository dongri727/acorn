import 'dart:core';

import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/foundation.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class SearchModel extends ChangeNotifier {
  List<Principal> _principal = [];
  String? country;

  Future<void> fetchPrincipal(
      {String? country}) async {
      print("Fetching principal with country: $country");

    try {
      _principal = await client.principal.getPrincipal(keyword: country);
    }
    catch (e) {
      print('Error while getting principal: $e');
    }
  }
}