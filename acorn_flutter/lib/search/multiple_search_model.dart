import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MultipleSearchModel extends ChangeNotifier {

  String _isSelectedOption = '';
  String get selectedOption => _isSelectedOption;

  set isSelectedOption(String value) {
    _isSelectedOption = value;
    notifyListeners();
  }

  final List<dynamic> _currentDisplayList = [];
  List<dynamic> get currentDisplayList => _currentDisplayList;

  ///宇宙の検索
  List<Universe> listUniverse = [];
  final List<String> filtersUniverse = <String>[];
  final List<int> filtersUniverseId = <int>[];

  fetchUniverseLookedFor() async {
    try {
      listUniverse = await client.universe.getUniverse();
      print(listUniverse);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///宇宙の検索
  List<Stars> listStars = [];
  final List<String> filtersStars = <String>[];
  final List<int> filtersStarsId = <int>[];

  fetchStarsLookedFor() async {
    try {
      listStars = await client.stars.getStars();
      print(listStars);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象国の現在名
  List<Pays> listPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  fetchPaysLookedFor() async {
    try {
      listPays = await client.pays.getPays();
      print(listPays);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象都市の現在名
  List<Places> listVilles = [];
  final List<String> filtersVilles = <String>[];
  final List<int> filtersVillesId = <int>[];

  fetchVillesLookedFor() async {
    try {
      listVilles = await client.places.getPlaces();
      print(listVilles);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象海域
  List<Oceans> listOceans = [];
  final List<String> filtersOceans = <String>[];
  final List<int> filtersOceansId = <int>[];

  fetchOceansLookedFor() async {
    try {
      listOceans = await client.oceans.getOceans();
      print(listOceans);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象海域の現在名
  List<Seas> listSeas = [];
  final List<String> filtersSeas = <String>[];
  final List<int> filtersSeasId = <int>[];

  fetchSeasLookedFor() async {
    try {
      listSeas = await client.seas.getSeas();
      print(listSeas);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///当時の国名
  List<Countryatts> listCatts = [];
  final List<String> filtersCatts = <String>[];
  final List<int> filtersCattsId = <int>[];

  fetchCattLookedFor() async {
    try {
      listCatts = await client.countryatts.getCountryATTs();
      print(listCatts);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///当時の地名
  List<Placeatts> listPatts = [];
  final List<String> filtersPatts = <String>[];
  final List<int> filtersPattsId = <int>[];

  fetchPattLookedFor() async {
    try {
      listPatts = await client.placeatts.getPlaceATTs();
      print(listPatts);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///関係国の現在名
  List<Pays> listPaysInvolved = [];
  final List<String> filtersPaysInvolved = <String>[];
  final List<int> filtersPaysInvolvedId = <int>[];

  fetchPaysInvolvedLookedFor() async {
    try {
      listPaysInvolved = await client.pays.getPays();
      print(listPaysInvolved);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///当時の関係国名
  List<Countryatts> listPaysInvolvedATT = [];
  final List<String> filtersPaysInvolvedATT = <String>[];
  final List<int> filtersPaysInvolvedATTId = <int>[];

  fetchPaysInvolvedATTLookedFor() async {
    try {
      listPaysInvolvedATT = await client.countryatts.getCountryATTs();
      print(listPaysInvolvedATT);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象の団体名
  List<Organisations> listOrganisations = [];
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  fetchOrgsLookedFor() async {
    try {
      listOrganisations = await client.organisations.getOrganisations();
      print(listOrganisations);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象の人名
  List<People> listPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  fetchPeopleLookedFor() async {
    try {
      listPeople = await client.people.getPeople();
      print(listPeople);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///検索対象のカテゴリー名
  List<Categories> listCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  fetchCategoriesLookedFor() async {
    try {
      listCategories = await client.categories.getCategories();
      print(listCategories);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///その他の検索語
  List<Terms> listTerms = [];
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  fetchTermsLookedFor() async {
    try {
      listTerms = await client.terms.getTerms();
      print(listTerms);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  void clearSearch() {
    listUniverse.clear();
    filtersUniverse.clear();
    listStars.clear();
    filtersStars.clear();
    listPays.clear();
    filtersPays.clear();
    listVilles.clear();
    filtersVilles.clear();
    listSeas.clear();
    filtersSeas.clear();
    listPaysInvolvedATT.clear();
    filtersPaysInvolved.clear();
    listPaysInvolvedATT.clear();
    filtersPaysInvolved.clear();
    listCategories.clear();
    filtersCategories.clear();
    listPeople.clear();
    filtersPeople.clear();
    listOrganisations.clear();
    filtersOrgs.clear();
    listTerms.clear();
    filtersTerms.clear();

    notifyListeners(); // 状態が変更されたことを通知
  }

  String _selectedPays = '';
  int _selectedPaysId = 0;
  String get selectedPays => _selectedPays;
  int get selectedPaysId => _selectedPaysId;

  set selectedPays(String pays) {
    _selectedPays = pays;
    notifyListeners();
  }

  set selectedPaysId(int value) {
    _selectedPaysId = value;
    notifyListeners();
  }

  String _selectedPlace = '';
  int _selectedPlaceId = 0;
  String get selectedPlace => _selectedPlace;
  int get selectedPlaceId => _selectedPlaceId;

  set selectedPlace(String place) {
    _selectedPlace = place;
    notifyListeners();
  }

  set selectedPlaceId(int value) {
    _selectedPlaceId = value;
    notifyListeners();
  }

  String _selectedUniverse = '';
  int _selectedUniverseId = 0;
  String get selectedUniverse => _selectedUniverse;
  int get selectedUniverseId => _selectedUniverseId;

  set selectedUniverse(String place) {
    _selectedUniverse = place;
    notifyListeners();
  }

  set selectedUniverseId(int value) {
    _selectedUniverseId = value;
    notifyListeners();
  }

  String _selectedStar = '';
  int _selectedStarId = 0;
  String get selectedStar => _selectedStar;
  int get selectedStarId => _selectedStarId;

  set selectedStar(String star) {
    _selectedStar = star;
    notifyListeners();
  }

  set selectedStarId(int value) {
    _selectedStarId = value;
    notifyListeners();
  }

  String _selectedOcean = '';
  int _selectedOceanId = 0;
  String get selectedOcean => _selectedOcean;
  int get selectedOceanId => _selectedOceanId;

  set selectedOcean(String ocean) {
    _selectedOcean = ocean;
    notifyListeners();
  }

  set selectedOceanId(int value) {
    _selectedOceanId = value;
    notifyListeners();
  }

  String _selectedSea = '';
  int _selectedSeaId = 0;
  String get selectedSea => _selectedSea;
  int get selectedSeaId => _selectedSeaId;

  set selectedSea(String sea) {
    _selectedSea = sea;
    notifyListeners();
  }

  set selectedSeaId(int value) {
    _selectedSeaId = value;
    notifyListeners();
  }

  String _selectedCatt = '';
  int _selectedCattId = 0;
  String get selectedCatt => _selectedCatt;
  int get selectedCattId => _selectedCattId;

  set selectedCatt(String catt) {
    _selectedCatt = catt;
    notifyListeners();
  }

  set selectedCattId(int value) {
    _selectedCattId = value;
    notifyListeners();
  }

  String _selectedPatt = '';
  int _selectedPattId = 0;
  String get selectedPatt => _selectedPatt;
  int get selectedPattId => _selectedPattId;

  set selectedPatt(String patt) {
    _selectedPatt = patt;
    notifyListeners();
  }

  set selectedPattId(int value) {
    _selectedPattId = value;
    notifyListeners();
  }

  String _selectedOrg = '';
  int _selectedOrgId = 0;
  String get selectedOrg => _selectedOrg;
  int get selectedOrgId => _selectedOrgId;

  set selectedOrg(String org) {
    _selectedOrg = org;
    notifyListeners();
  }

  set selectedOrgId(int value) {
    _selectedOrgId = value;
    notifyListeners();
  }

  String _selectedPeople = '';
  int _selectedPeopleId = 0;
  String get selectedPeople => _selectedPeople;
  int get selectedPeopleId => _selectedPeopleId;

  set selectedPeople(String people) {
    _selectedPeople = people;
    notifyListeners();
  }

  set selectedPeopleId(int value) {
    _selectedPeopleId = value;
    notifyListeners();
  }

  String _selectedCategory = '';
  int _selectedCategoryId = 0;
  String get selectedCategory => _selectedCategory;
  int get selectedCategoryId => _selectedCategoryId;

  set selectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  set selectedCategoryId(int value) {
    _selectedCategoryId = value;
    notifyListeners();
  }

  String _selectedTerm = '';
  int _selectedTermId = 0;
  String get selectedTerm => _selectedTerm;
  int get selectedTermId => _selectedTermId;

  set selectedTerm(String term) {
    _selectedTerm = term;
    notifyListeners();
  }

  set selectedTermId(int value) {
    _selectedTermId = value;
    notifyListeners();
  }

}