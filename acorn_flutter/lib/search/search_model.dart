import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class ReadAllModel extends ChangeNotifier {
  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();

  List<Principal> _principal = [];
  List<Principal> get principal => _principal;
  final controller = TextEditingController();

  fetchPrincipal({String? country}) async {
    try {
      _principal = await client.principal.getPrincipal(keyword: country);
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}
