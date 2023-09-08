import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class PaysModel extends ChangeNotifier {
  var newCATT = '';

  ///関係国の現在名
  List<Pays> listPays = [];
  List<Map<String, String>> displayListPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  ///関係国の当時の名称
  List<Countryatts> listCATTs = [];
  List<Map<String, String>> displayListCATTs = [];
  final List<String> filtersCATTs = <String>[];
  final List<int> filtersCATTId = <int>[];

  fetchPaysInvolved() async {
    try {
      listPays = await client.pays.getPays();
      //displayListPays = listPays.cast<Map<String, String>>();
      print(listPays);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchCountriesAtt() async {
    try {
      listCATTs = await client.countryatts.getCountryATTs();
      //displayListCATTs = listCATTs.cast<Map<String, String>>();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  int? countryattId;

  addCountryATTandFetch(String newCATT) async {
    try {
    var catts = Countryatts(countryatt: newCATT);
    countryattId = await client.countryatts.addCountryATTs(catts);
    await fetchCountriesAtt();
    print(catts);
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

}