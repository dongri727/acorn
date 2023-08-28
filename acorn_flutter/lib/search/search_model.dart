import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class SearchByPaysModel extends ChangeNotifier {
  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();

  ///国だけで絞る
  ///country name
  List<Principal> _principal = [];
  List<Principal> get principal => _principal;


  fetchPrincipal({List<String>? countries}) async {
    try {
      _principal = await client.principal.getPrincipal(keywords: countries);
      print("Getting principal with keywords: $countries");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

