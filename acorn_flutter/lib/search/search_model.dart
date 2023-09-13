import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class SearchByOptionsModel extends ChangeNotifier {
  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();


  List<Principal> _principal = [];

  List<Principal> get principal => _principal;
  List<Principal> get principalByPlaces => _principal;
  List<Principal> get principalByCatts => _principal;
  List<Principal> get principalByPatts => _principal;
  List<Principal> get principalByOrgs => _principal;
  List<Principal> get principalByPeople => _principal;


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

  fetchPrincipalByCatts({List<int>? listCattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCatt(keynumbers: listCattIds);
      print("Getting principal with keynumbers: $listCattIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPatts({List<int>? listPattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPatt(keynumbers: listPattIds);
      print("Getting principal with keynumbers: $listPattIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByOrgs({List<int>? listOrgIds}) async {
    try {
      _principal = await client.principal.getPrincipalByOrgs(keynumbers: listOrgIds);
      print("Getting principal with keynumbers: $listOrgIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPeople({List<int>? listPersonIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPeople(keynumbers: listPersonIds);
      print("Getting principal with keynumbers: $listPersonIds");
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

  fetchPrincipalByTerms({List<int>? listTermIds}) async {
    try {
      _principal = await client.principal.getPrincipalByTerms(keynumbers: listTermIds);
      print("Getting principal with keynumbers: $listTermIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

