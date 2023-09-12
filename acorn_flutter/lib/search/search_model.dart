import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class SearchByOptionsModel extends ChangeNotifier {
  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();


  List<Principal> _principal = [];

  List<Principal> get principal => _principal;
  List<Principal> get principalByPlaces => _principal;


  fetchPrincipal({List<String>? countries}) async {
    try {
      _principal = await client.principal.getPrincipal(keywords: countries);
      print("Getting principal with keywords: $countries");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPlaces({List<int>? listPlaceIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPlaces(keynumbers: listPlaceIds);
      print("Getting principal with keynumbers: $listPlaceIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCategories({List<int>? listCategoryIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCategory(keynumbers: listCategoryIds);
      print("Getting principal with keynumbers: $listCategoryIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPeople({List<int>? listPeopleIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPeople(keynumbers: listPeopleIds);
      print("Getting principal with keynumbers: $listPeopleIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

