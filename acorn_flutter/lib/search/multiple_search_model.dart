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

  List<String> currentDisplayList = [];

  ///時代別検索

  ///宇宙の検索

  ///星の検索
  List<Stars> listStars = [];
  final List<String> filtersStars = <String>[];

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

  ///検索対象海洋名

  ///検索対象海域名
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
  List<Pays> listPaysInv = [];
  final List<String> filtersPaysInv = <String>[];
  final List<int> filtersPaysInvId = <int>[];

  fetchPaysInvolvedLookedFor() async {
    try {
      listPaysInv = await client.pays.getPays();
      print(listPaysInv);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///関係地域の現在名
  List<Places> listPlaceInv = [];
  final List<String> filtersPlaceInv = <String>[];
  final List<int> filtersPlaceInvId = <int>[];

  fetchPlaceInvolvedLookedFor() async {
    try {
      listPlaceInv = await client.places.getPlaces();
      print(listPlaceInv);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///当時の関係国名
  List<Countryatts> listPaysInvATT = [];
  final List<String> filtersPaysInvATT = <String>[];
  final List<int> filtersPaysInvATTId = <int>[];

  fetchPaysInvolvedATTLookedFor() async {
    try {
      listPaysInvATT = await client.countryatts.getCountryATTs();
      print(listPaysInvATT);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///当時の関係国名
  List<Placeatts> listPlaceInvATT = [];
  final List<String> filtersPlaceInvATT = <String>[];
  final List<int> filtersPlaceInvATTId = <int>[];

  fetchPlaceInvolvedATTLookedFor() async {
    try {
      listPlaceInvATT = await client.placeatts.getPlaceATTs();
      print(listPlaceInvATT);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///観測された星
  List<Stars> listStarsObserved = [];
  final List<String> filtersStarsObserved = <String>[];
  final List<int> filtersStarsObservedId = <int>[];

  fetchStarsObservedLookedFor() async {
    try {
      listStarsObserved = await client.stars.getStars();
      print(listStarsObserved);
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
    listStars.clear();
    filtersStars.clear();
    listVilles.clear();
    filtersVilles.clear();
    listSeas.clear();
    filtersSeas.clear();
    listPaysInv.clear();
    filtersPaysInv.clear();
    listPlaceInv.clear();
    filtersPlaceInv.clear();
    listPaysInvATT.clear();
    filtersPaysInvATT.clear();
    listPlaceInvATT.clear();
    filtersPlaceInvATT.clear();
    listStarsObserved.clear();
    filtersStarsObserved.clear();
    listCategories.clear();
    filtersCategories.clear();
    listPeople.clear();
    filtersPeople.clear();
    listOrganisations.clear();
    filtersOrgs.clear();
    listTerms.clear();
    filtersTerms.clear();
    listCatts.clear();
    filtersCatts.clear();
    listPatts.clear();
    filtersPatts.clear();

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

  String _selectedCountryInvolved = '';
  int _selectedCountryInvolvedId = 0;
  String get selectedCountryInvolved => _selectedCountryInvolved;
  int get selectedCountryInvolvedId => _selectedCountryInvolvedId;

  set selectedCountryInvolved(String cInvolved) {
    _selectedCountryInvolved = cInvolved;
    notifyListeners();
  }

  set selectedCountryInvolvedId(int value) {
    _selectedCountryInvolvedId = value;
    notifyListeners();
  }

  String _selectedPlaceInvolved = '';
  int _selectedPlaceInvolvedId = 0;
  String get selectedPlaceInvolved => _selectedPlaceInvolved;
  int get selectedPlaceInvolvedId => _selectedPlaceInvolvedId;

  set selectedPlaceInvolved(String pInvolved) {
    _selectedPlaceInvolved = pInvolved;
    notifyListeners();
  }

  set selectedPlaceInvolvedId(int value) {
    _selectedPlaceInvolvedId = value;
    notifyListeners();
  }

  String _selectedCountryInvolvedATT = '';
  int _selectedCountryInvolvedATTId = 0;
  String get selectedCountryInvolvedATT => _selectedCountryInvolvedATT;
  int get selectedCountryInvolvedATTId => _selectedCountryInvolvedATTId;

  set selectedCountryInvolvedATT(String attsInvolved) {
    _selectedCountryInvolvedATT = attsInvolved;
    notifyListeners();
  }

  set selectedCountryInvolvedATTId(int value) {
    _selectedCountryInvolvedATTId = value;
    notifyListeners();
  }

  String _selectedPlaceInvolvedATT = '';
  int _selectedPlaceInvolvedATTId = 0;
  String get selectedPlaceInvolvedATT => _selectedPlaceInvolvedATT;
  int get selectedPlaceInvolvedATTId => _selectedPlaceInvolvedATTId;

  set selectedPlaceInvolvedATT(String pattsInvolved) {
    _selectedPlaceInvolvedATT = pattsInvolved;
    notifyListeners();
  }

  set selectedPlaceInvolvedATTId(int value) {
    _selectedPlaceInvolvedATTId = value;
    notifyListeners();
  }

  String _selectedStarsObserved = '';
  int _selectedStarsObservedId = 0;
  String get selectedStarsObserved => _selectedStarsObserved;
  int get selectedStarsInvolvedATTId => _selectedStarsObservedId;

  set selectedStarsObserved(String starsObserved) {
    _selectedStarsObserved = starsObserved;
    notifyListeners();
  }

  set selectedStarsObservedId(int value) {
    _selectedStarsObservedId = value;
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

  String _selectedPeriod = '';
  int _selectedPeriodId = 0;
  String get selectedPeriod => _selectedPeriod;
  int get selectedPeriodId => _selectedPeriodId;

  set selectedPeriod(String period) {
    _selectedPeriod = period;
    notifyListeners();
  }

  set selectedPeriodId(int value) {
    _selectedPeriodId = value;
    notifyListeners();
  }

  void updateDisplayList(List<String> newList) {
    currentDisplayList = newList;
    notifyListeners();
  }

  List<Principal> _principal = [];
  List<Principal> get principal => _principal;

  Future<void>fetchPrincipalByPeriod({List<String>? period}) async {
    try {
      _principal = await client.principal.getPrincipalByPeriod(keywords: period);
      print('got: $_principal');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void>fetchPrincipal({List<String>? location}) async {
    try {
      _principal = await client.principal.getPrincipal(keywords: location);
      print("Getting principal with keywords: $location");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPrecise({List<String>? precise}) async {
    try {
      _principal = await client.principal.getPrincipalByPrecise(keywords: precise);
      print("Getting principal with keywords: $precise");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCattId({List<int>? cattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCattId(cattIds: cattIds);
      print("Getting principal with CattIds: $cattIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPattId({List<int>? pattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPattId(pattIds: pattIds);
      print("Getting principal with PattIds: $pattIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCInvolvedId({List<int>? cInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCInvolvedId(cInvolvedIds: cInvolvedIds);
      print("Getting principal with CInvolvedIds: $cInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPInvolvedId({List<int>? pInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPInvolvedId(pInvolvedIds: pInvolvedIds);
      print("Getting principal with PInvolvedIds: $pInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByAttInvolvedId({List<int>? attsInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByAttInvolvedId(attInvolvedIds: attsInvolvedIds);
      print("Getting principal with AttsInvolvedIds: $attsInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPAttInvolvedId({List<int>? pattsInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPInvolvedId(pInvolvedIds: pattsInvolvedIds);
      print("Getting principal with PattsInvolvedIds: $pattsInvolvedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByStarsObservedId({List<int>? starObservedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByStarsInvolvedId(starInvolvedIds: starObservedIds);
      print("Getting principal with StarObservedIds: $starObservedIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByOrgsId({List<int>? orgIds}) async {
    try {
      _principal = await client.principal.getPrincipalByOrgsId(orgIds: orgIds);
      print("Getting principal with OrgIds: $orgIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPersonId({List<int>? personIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPersonId(personIds: personIds);
      print("Getting principal with PersonIds: $personIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCategoryId({List<int>? categoryIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCategoryId(categoryIds: categoryIds);
      print("Getting principal with CategoryIds: $categoryIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByTermId({List<int>? termIds}) async {
    try {
      _principal = await client.principal.getPrincipalByTermId(termIds: termIds);
      print("Getting principal with TermIds: $termIds");
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  set principal (dynamic value) {
    _principal = [];
    notifyListeners();
  }
}