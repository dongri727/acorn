import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class SelectModel extends ChangeNotifier {
  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();

  final controller = TextEditingController();

  ///国だけで絞る
  ///country name
  List<Principal> _principal = [];
  List<Principal> get principal => _principal;


  fetchPrincipal({List<String>? countries}) async {
    try {
      _principal = await client.principal.getPrincipal(keyword: countries);
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}
