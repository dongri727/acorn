import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class SearchByOptionsModel extends ChangeNotifier {
  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();

  List<Principal> _principal = [];

  List<Principal> get principal => _principal;
  List<Principal> get principalByPrecise => _principal;
  List<Principal> get principalByCatts => _principal;
  List<Principal> get principalByPatts => _principal;
  List<Principal> get principalByStars => _principal;
  List<Principal> get principalByOrgs => _principal;
  List<Principal> get principalByPeople => _principal;

  Future<void>fetchPrincipalByPeriod({List<String>? period}) async {
    try {
      print(period);
      _principal = await client.principal.getPrincipalByPeriod(keywords: period);
      print("Getting principal with keywords: $period");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void>fetchPrincipal({List<String>? location}) async {
    try {
      print(location);
      _principal = await client.principal.getPrincipal(keywords: location);
      print("Getting principal with keywords: $location");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPrecise({List<String>? listPrecise}) async {
    try {
      _principal = await client.principal.getPrincipalByPrecise(keywords: listPrecise);
      print("Getting principal with keywords: $listPrecise");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCattId({List<int>? listCattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCattId(cattIds: listCattIds);
      print("Getting principal with CattIds: $listCattIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPattId({List<int>? listPattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPattId(pattIds: listPattIds);
      print("Getting principal with PattIds: $listPattIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCInvolvedId({List<int>? listCInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCInvolvedId(cInvolvedIds: listCInvolvedIds);
      print("Getting principal with CInvolvedIds: $listCInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByAttInvolvedId({List<int>? listAttsInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByAttInvolvedId(attInvolvedIds: listAttsInvolvedIds);
      print("Getting principal with AttsInvolvedIds: $listAttsInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByStarsInvolvedId({List<int>? listStarInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByStarsInvolvedId(starInvolvedIds: listStarInvolvedIds);
      print("Getting principal with StarInvolvedIds: $listStarInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPersonId({List<int>? listPersonIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPersonId(personIds: listPersonIds);
      print("Getting principal with PersonIds: $listPersonIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByOrgsId({List<int>? listOrgIds}) async {
    try {
      _principal = await client.principal.getPrincipalByOrgsId(orgIds: listOrgIds);
      print("Getting principal with OrgIds: $listOrgIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCategoryId({List<int>? listCategoryIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCategoryId(categoryIds: listCategoryIds);
      print("Getting principal with CategoryIds: $listCategoryIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByTermId({List<int>? listTermIds}) async {
    try {
      _principal = await client.principal.getPrincipalByTermId(termIds: listTermIds);
      print("Getting principal with TermIds: $listTermIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

