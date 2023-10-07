import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class PaysModel extends ChangeNotifier {

  ///関係国の現在名
  List<Pays> listPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  ///関係国の当時の名称
  List<Countryatts> listCATTs = [];
  final List<String> filtersCATTs = <String>[];
  final List<int> filtersCATTId = <int>[];

  ///観測された星
  List<Stars> listStars = [];
  final List<String> filtersStars = <String>[];
  final List<int> filtersStarId = <int>[];

  fetchPaysInvolved() async {
    try {
      listPays = await client.pays.getPays();
      print(listPays);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchCountriesAtt() async {
    try {
      listCATTs = await client.countryatts.getCountryATTs();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchStars() async {
    try {
      listStars = await client.stars.getStars();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addCountryATTandFetch(String newCATT) async {
    try {
    var catts = Countryatts(countryatt: newCATT);
    await client.countryatts.addCountryATTs(catts);
    await fetchCountriesAtt();
    print(catts);
    notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addStarAndFetch(String newStar) async {
    try {
      var stars = Stars(star: newStar);
      await client.stars.addStars(stars);
      await fetchStars();
      print(stars);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  String _selectedPaysInv = '';
  int _selectedPaysInvId = 0;
  String get selectedPaysInv => _selectedPaysInv;
  int get selectedPaysInvId => _selectedPaysInvId;

  set selectedPaysInv(String pays) {
    _selectedPaysInv = pays;
    notifyListeners();
  }

  set selectedPaysInvId(int value) {
    _selectedPaysInvId = value;
    notifyListeners();
  }

  String _selectedCattInv = '';
  int _selectedCattInvId = 0;
  String get selectedCattInv => _selectedCattInv;
  int get selectedCattInvId => _selectedCattInvId;

  set selectedCattInv(String catt) {
    _selectedCattInv = catt;
    notifyListeners();
  }

  set selectedCattInvId(int value) {
    _selectedCattInvId = value;
    notifyListeners();
  }

  String _selectedStarInv = '';
  int _selectedStarInvId = 0;
  String get selectedStarInv => _selectedStarInv;
  int get selectedStarInvId => _selectedStarInvId;

  set selectedStarInv(String star) {
    _selectedStarInv = star;
    notifyListeners();
  }

  set selectedStarInvId(int value) {
    _selectedStarInvId = value;
    notifyListeners();
  }

  ///RadioButton
  String _selectedOption = '';
  String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }

}