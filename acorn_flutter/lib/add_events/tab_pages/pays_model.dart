import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class PaysModel extends ChangeNotifier {

  var keyCountry = '';

  ///関係国の現在名
  List<Pays> listPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  ///関係都市等の現在名
  List<Places> listPlaces = [];
  final List<String> filtersPlaces = <String>[];
  final List<int> filtersPlacesId = <int>[];

  ///関係国の当時の名称
  List<Countryatts> listCATTs = [];
  final List<String> filtersCATTs = <String>[];
  final List<int> filtersCATTId = <int>[];

  ///関係都市等の当時の名称
  List<Placeatts> listPATTs = [];
  final List<String> filtersPATTs = <String>[];
  final List<int> filtersPATTId = <int>[];

  ///観測された星
  List<Stars> listStars = [];
  final List<String> filtersStars = <String>[];
  final List<int> filtersStarId = <int>[];

  fetchPaysInvolved() async {
    try {
      listPays = await client.pays.getPays();
      print('list of pays gotten');
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchPlacesInvolved() async {
    try {
      listPlaces = await client.places.getPlaces();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchCountryAttInv() async {
    try {
      listCATTs = await client.countryatts.getCountryATTs();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchPattInv() async {
    try {
      listPATTs = await client.placeatts.getPlaceATTs();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchStarsObserved() async {
    try {
      listStars = await client.stars.getStars();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addPlaceAndFetch(String newPlace) async {
    try {
      var place = Places(place: newPlace, country: keyCountry);
      await client.places.addPlaces(place);
      await fetchPlacesInvolved();
      print(place);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addCountryATTandFetch(String newCATT) async {
    try {
    var catts = Countryatts(countryatt: newCATT);
    await client.countryatts.addCountryATTs(catts);
    await fetchCountryAttInv();
    print(catts);
    notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addPATTandFetch(String newPATT) async {
    try {
      var patts = Placeatts(placeatt: newPATT);
      await client.placeatts.addPlaceATTs(patts);
      await fetchPattInv();
      print(patts);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addStarAndFetch(String newStar) async {
    try {
      var stars = Stars(star: newStar);
      await client.stars.addStars(stars);
      await fetchStarsObserved();
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

  String _selectedPlaceInv = '';
  int _selectedPlaceInvId = 0;
  String get selectedPlaceInv => _selectedPlaceInv;
  int get selectedPlaceInvId => _selectedPlaceInvId;

  set selectedPlaceInv(String place) {
    _selectedPlaceInv = place;
    notifyListeners();
  }

  set selectedPlaceInvId(int value) {
    _selectedPlaceInvId = value;
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

  String _selectedPattInv = '';
  int _selectedPattInvId = 0;
  String get selectedPattInv => _selectedPattInv;
  int get selectedPattInvId => _selectedPattInvId;

  set selectedPattInv(String catt) {
    _selectedPattInv = catt;
    notifyListeners();
  }

  set selectedPattInvId(int value) {
    _selectedPattInvId = value;
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