//import 'dart:core';
import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_fetch.dart';
import 'package:acorn_flutter/export/export_list.dart';
import 'package:acorn_flutter/search/result_page.dart';
import 'package:acorn_client/acorn_client.dart';
import '../scatter_view/globe_page.dart';
import '../scatter_view/map_page.dart';
import '../timeline/scalable.dart';
import '../unity_view/four_d_page.dart';
import '../unity_view/mr_page.dart';
import '../unity_view/three_d_page.dart';
import '../utils/build_chips.dart';

class MultipleSearchModel extends ChangeNotifier {
  late final FetchSeasRepository _fetchSeasRepository;
  late final FetchPlaceRepository _fetchPlaceRepository;
  late final FetchStarsRepository _fetchStarsRepository;
  late final FetchCattRepository _fetchCattRepository;
  late final FetchPattRepository _fetchPattRepository;
  late final FetchOrgsRepository _fetchOrgsRepository;
  late final FetchUnivsRepository _fetchUnivsRepository;
  late final FetchPublisherRepository _fetchPublisherRepository;
  late final FetchPeopleRepository _fetchPeopleRepository;
  late final FetchShipsRepository _fetchShipsRepository;
  late final FetchCategoriesRepository _fetchCategoriesRepository;
  late final FetchTermsRepository _fetchTermsRepository;

  late final FetchPrincipalRepository _fetchPrincipalRepository;

  MultipleSearchModel() {
    _fetchSeasRepository = FetchSeasRepository();
    _fetchPlaceRepository = FetchPlaceRepository();
    _fetchStarsRepository = FetchStarsRepository();
    _fetchCattRepository = FetchCattRepository();
    _fetchPattRepository = FetchPattRepository();
    _fetchOrgsRepository = FetchOrgsRepository();
    _fetchUnivsRepository = FetchUnivsRepository();
    _fetchPublisherRepository = FetchPublisherRepository();
    _fetchPeopleRepository = FetchPeopleRepository();
    _fetchShipsRepository = FetchShipsRepository();
    _fetchCategoriesRepository = FetchCategoriesRepository();
    _fetchTermsRepository = FetchTermsRepository();

    _fetchPrincipalRepository = FetchPrincipalRepository();
  }

  final List<String> formats = [
    'CLASSIC',
    'SCALABLE',
    'Map',
    'Globe',
    //'3D',
    //'4D',
    //'MR',
    //'GIS',
  ];

  //radioButton
  String selectedFormat = 'CLASSIC';

  List<String> options = searchOptions;
  List<String> optionsFr = searchOptionsFr;
  List<String> optionsJa = searchOptionsJa;

  //dropdownButton
  String selectedOption = 'Period';
  List<dynamic> currentDisplayList = [];

  void updateDisplayList(List<String> newList) {
    currentDisplayList = newList;
    notifyListeners();
  }

  ///Period
  final List<String> period = epoch;
  final List<String> filtersPeriod = <String>[];

  String selectedPeriod = '';
  int selectedPeriodId = 0;

  void updateSelectedPeriod(String newSelectedPeriod) {
    selectedPeriod = newSelectedPeriod;
    notifyListeners();
  }

  ///Universe
  final List<String> universe = cosmos;
  final List<String> filtersUniverse = <String>[];

  String selectedUniverse = '';

  void updateSelectedUniverse(String newSelectedUniverse) {
    selectedUniverse = newSelectedUniverse;
    notifyListeners();
  }

  //Stars(where it happened)
  final List<String> filtersStars = <String>[];

  String selectedStar = '';

  void updateSelectedStar(String newSelectedStar) {
    selectedStar = newSelectedStar;
    notifyListeners();
  }

  //Current Country where it happened
  //Pays is country in french
  final List<Map<String, dynamic>> pays = countries;
  final List<String> filtersPays = <String>[];

  String selectedPays = '';
  int selectedPaysId = 0;

  void updateSelectedPays(String newSelectedPays) {
    selectedPays = newSelectedPays;
    notifyListeners();
  }

  //Current Place-name where it happened
  //ville is city in french
  final List<String> filtersVilles = <String>[];
  final List<int> filtersVillesId = <int>[];

  String selectedPlace = '';
  int selectedPlaceId = 0;

  void updateSelectedPlace(String newSelectedPlace) {
    selectedPlace = newSelectedPlace;
    notifyListeners();
  }

  //Oceans
  final List<String> oceans = mer;
  final List<String> filtersOceans = <String>[];

  String selectedOcean = '';
  int selectedOceanId = 0;

  void updateSelectedOcean(String newSelectedOcean) {
    selectedOcean = newSelectedOcean;
    notifyListeners();
  }

  //Seas
  final List<String> filtersSeas = <String>[];
  final List<int> filtersSeasId = <int>[];

  String selectedSea = '';
  int selectedSeaId = 0;

  void updateSelectedSea(String newSelectedSea) {
    selectedSea = newSelectedSea;
    notifyListeners();
  }

  ///Country-name at that time(unique)
  final List<String> filtersCatts = <String>[];
  final List<int> filtersCattsId = <int>[];

  String selectedCatt = '';
  int selectedCattId = 0;

  void updateSelectedCatt(String newSelectedCatt) {
    selectedCatt = newSelectedCatt;
    notifyListeners();
  }

  //Place-name at that time(unique)
  final List<String> filtersPatts = <String>[];
  final List<int> filtersPattsId = <int>[];

  String selectedPatt = '';
  int selectedPattId = 0;

  void updateSelectedPatt(String newSelectedPatt) {
    selectedPatt = newSelectedPatt;
    notifyListeners();
  }

  //Countries involved
  List<Map<String, dynamic>> listPaysInv = countries;
  final List<String> filtersPaysInv = <String>[];
  final List<int> filtersPaysInvId = <int>[];

  String selectedCountryInvolved = '';
  int selectedCountryInvolvedId = 0;

  void updateSelectedCountryInvolved(String newSelectedCountryInvolved) {
    selectedCountryInvolved = newSelectedCountryInvolved;
    notifyListeners();
  }

  //Places involved
  List<dynamic> placeInvIds = [];
  List<Places> listPlaceInv = [];
  final List<String> filtersPlaceInv = <String>[];
  final List<int> filtersPlaceInvId = <int>[];

  String selectedPlaceInvolved = '';
  int selectedPlaceInvolvedId = 0;

  void updateSelectedPlaceInvolve(String newSelectedPlaceInvolved) {
    selectedPlaceInvolved = newSelectedPlaceInvolved;
    notifyListeners();
  }

  //Names of Countries involved at that time
  final List<String> filtersPaysInvATT = <String>[];
  final List<int> filtersPaysInvATTId = <int>[];

  String selectedCountryInvolvedATT = '';
  int selectedCountryInvolvedATTId = 0;

  void updateSelectedCountryInvolvedATT(String newSelectedCountryInvolvedATT) {
    selectedCountryInvolvedATT = newSelectedCountryInvolvedATT;
    notifyListeners();
  }

  //Names of Places involved at that time
  final List<String> filtersPlaceInvATT = <String>[];
  final List<int> filtersPlaceInvATTId = <int>[];

  String selectedPlaceInvolvedATT = '';
  int selectedPlaceInvolvedATTId = 0;

  void updateSelectedPlaceInvolvedATT(String newSelectedPlaceInvolvedATT) {
    selectedPlaceInvolvedATT = newSelectedPlaceInvolvedATT;
    notifyListeners();
  }

  //Star Observed or Aimed
  final List<String> filtersStarsObserved = <String>[];
  final List<int> filtersStarsObservedId = <int>[];

  String selectedStarsObserved = '';
  int selectedStarsObservedId = 0;

  //Organisation
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  String selectedOrg = '';
  int selectedOrgId = 0;

  void updateSelectedOrg(String newSelectedOrg) {
    selectedOrg = newSelectedOrg;
    notifyListeners();
  }

  //Universities
  final List<String> filtersUnivs = <String>[];
  final List<int> filtersUnivsId = <int>[];

  String selectedUniv = '';
  int selectedUnivId = 0;

  void updateSelectedUniv(String newSelectedUniv) {
    selectedUniv = newSelectedUniv;
    notifyListeners();
  }

  //Publisher
  final List<String> filtersPublisher = <String>[];
  final List<int> filtersPublisherId = <int>[];

  String selectedPublisher = '';
  int selectedPublisherId = 0;

  void updateSelectedPublisher(String newSelectedPublisher) {
    selectedPublisher = newSelectedPublisher;
    notifyListeners();
  }

  //People
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  String selectedPeople = '';
  int selectedPeopleId = 0;

  void updateSelectedPeople(String newSelectedPeople) {
    selectedPeople = newSelectedPeople;
    notifyListeners();
  }

  //Ships
  final List<String> filtersShips = <String>[];
  final List<int> filtersShipsId = <int>[];

  String selectedShips = '';
  int selectedShopsId = 0;

  void updateSelectedShips(String newSelectedShips) {
    selectedPeople = newSelectedShips;
    notifyListeners();
  }

  //Categories
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  String selectedCategory = '';
  int selectedCategoryId = 0;

  void updateSelectedCategory(String newSelectedCategory) {
    selectedCategory = newSelectedCategory;
    notifyListeners();
  }

  //Other Terms
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  String selectedTerm = '';
  int selectedTermId = 0;

  void updateSelectedTerm(String newSelectedTerm) {
    selectedTerm = newSelectedTerm;
    notifyListeners();
  }

  Future<void> fetchDropdownButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Period':
      case 'Période':
      case '時代':
        currentDisplayList = period;
        //updateDisplayList(period);
        break;

      case 'Universe':
      case 'Univers':
      case '宇宙':
        currentDisplayList = universe;
        //updateDisplayList(universe);
        break;

      case 'Stars':
      case 'Étoiles':
      case '恒星・惑星など(起こった場所)':
        await _fetchStarsRepository.fetchStarsInDetail();
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;

      case 'Current Country where it happened':
      case 'Pays actuel où cela s\'est passé':
      case '現在の国名(起こった場所)':
        currentDisplayList =
            pays.map((country) => country['name'] as String).toList();
        //updateDisplayList(pays.map((country) => country['name'] as String).toList());
        break;
      case 'Current Place-name where it happened':
      case 'Nom de lieu actuel où cela s\'est passé':
      case '現在の地名(起こった場所)':
        await _fetchPlaceRepository.fetchPlaceInvolvedInDetail();
        currentDisplayList = _fetchPlaceRepository.listDetailPlaces;
        break;
      case 'Oceans':
      case 'Océans':
      case '海洋名':
        currentDisplayList = oceans;
        //updateDisplayList(oceans);
        break;
      case 'Seas':
      case 'Mers':
      case '海域名':
        await _fetchSeasRepository.fetchSeas();
        currentDisplayList = _fetchSeasRepository.listSeas;
        break;
      case 'Country-name at that time':
      case 'Nom de pays à cette époque':
      case '当時の国名(起こった場所)':
        await _fetchCattRepository.fetchCattsInDetail();
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Place-name at that time':
      case 'Nom de lieu à cette époque':
      case '当時の地名(起こった場所)':
        await _fetchPattRepository.fetchPattsInDetail();
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
      case 'Countries involved':
      case 'Pays impliqués':
      case '関係国名':
        currentDisplayList = listPaysInv;
        break;
      case 'Places involved':
      case 'Lieux impliqués':
      case '関係都市名':
        await _fetchPlaceRepository.fetchPlaceInvolvedInDetail();
        currentDisplayList = _fetchPlaceRepository.listDetailPlaces;
        break;
      case 'Names of Countries involved at that time':
      case 'Noms des pays impliqués à cette époque':
      case '関係国の当時の名称':
        await _fetchCattRepository.fetchCattsInDetail();
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Names of Places involved at that time':
      case 'Noms des lieux impliqués à cette époque':
      case '関係都市の当時の名称':
        await _fetchPattRepository.fetchPattsInDetail();
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
      case 'Stars Observed':
      case 'Étoiles observées':
      case '観測された星、目指した星など':
        await _fetchStarsRepository.fetchStarsInDetail();
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;
      case 'Organisations':
      case 'Organisations':
      case '機関、組織、施設など':
        await _fetchOrgsRepository.fetchOrgsInDetail();
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'Universities':
      case 'Universités':
      case '大学':
        await _fetchUnivsRepository.fetchUnivsInDetail();
        currentDisplayList = _fetchUnivsRepository.listDetailUnivs;
        break;
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
        await _fetchPublisherRepository.fetchPublisherInDetail();
        currentDisplayList = _fetchPublisherRepository.listDetailPublisher;
        break;
      case 'People':
      case 'Personnes':
      case '人物':
        await _fetchPeopleRepository.fetchPeopleInDetail();
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
      case 'Ships':
      case 'Nom du navire':
      case '船名':
        await _fetchShipsRepository.fetchShipsInDetail();
        currentDisplayList = _fetchShipsRepository.listDetailShips;
        break;
      case 'Categories':
      case 'Catégories':
      case '分類':
        await _fetchCategoriesRepository.fetchCategoriesInDetail();
        currentDisplayList = _fetchCategoriesRepository.listDetailCategories;
        break;
      case 'Other Terms':
      case 'Autres termes':
      case 'その他の用語':
        await _fetchTermsRepository.fetchTermsInDetail();
        currentDisplayList = _fetchTermsRepository.listDetailTerms;
        break;
    }
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Period':
      case 'Période':
      case '時代':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersPeriod,
            filterKey: item,
            onSelected: (filterImSiKey) {
              selectedPeriod = filterImSiKey;
              updateSelectedPeriod(filterImSiKey);
            });
      case 'Universe':
      case 'Univers':
      case '宇宙':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersUniverse,
            filterKey: item,
            onSelected: (filterImSiKey) {
              selectedUniverse = filterImSiKey;
              updateSelectedUniverse(filterImSiKey);
            });
      case 'Stars':
      case 'Étoiles':
      case '恒星・惑星など(起こった場所)':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersStars,
            filterKey: item.mot,
            onSelected: (filterImSiKey) {
              selectedStar = filterImSiKey;
              updateSelectedStar(filterImSiKey);
            });
      case 'Current Country where it happened':
      case 'Pays actuel où cela s\'est passé':
      case '現在の国名(起こった場所)':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersPays,
            filterKey: item,
            onSelected: (filterImSiKey) {
              selectedPays = filterImSiKey;
              updateSelectedPays(filterImSiKey);
            });
      case 'Current Place-name where it happened':
      case 'Nom de lieu actuel où cela s\'est passé':
      case '現在の地名(起こった場所)':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersVilles,
            filterKey: item.mot,
            onSelected: (filterImSiKey) {
              selectedPlace = filterImSiKey;
              updateSelectedPlace(filterImSiKey);
            });
      case 'Oceans':
      case 'Océans':
      case '海洋名':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersOceans,
            filterKey: item,
            onSelected: (filterImSiKey) {
              selectedOcean = filterImSiKey;
              updateSelectedOcean(filterImSiKey);
            });
      case 'Seas':
      case 'Mers':
      case '海域名':
        return buildFilterFormatImediatSI(
            filteredKeys: filtersSeas,
            filterKey: item.sea,
            onSelected: (filterImSiKey) {
              selectedSea = filterImSiKey;
              updateSelectedSea(filterImSiKey);
            });
      case 'Country-name at that time':
      case 'Nom de pays à cette époque':
      case '当時の国名(起こった場所)':
        return buildFilterFormatImediat(
            filteredKeys: filtersCatts,
            filteredValues: filtersCattsId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedCatt = filterKey;
              selectedCattId = filterId;
              updateSelectedCatt(filterKey);
            });
      case 'Place-name at that time':
      case 'Nom de lieu à cette époque':
      case '当時の地名(起こった場所)':
        return buildFilterFormatImediat(
            filteredKeys: filtersPatts,
            filteredValues: filtersPattsId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedPatt = filterKey;
              selectedPattId = filterId;
              updateSelectedPatt(filterKey);
            });
      case 'Countries involved':
      case 'Pays impliqués':
      case '関係国名':
        return buildFilterFormatImediat(
            filteredKeys: filtersPaysInv,
            filteredValues: filtersPaysInvId,
            filterKey: item['name'],
            filterValue: item['detailId'],
            onSelected: (filterKey, filterId) {
              selectedPays = filterKey;
              selectedPaysId = filterId;
              updateSelectedPays(filterKey);
            });
      case 'Places involved':
      case 'Lieux impliqués':
      case '関係都市名':
        return buildFilterFormatImediat(
            filteredKeys: filtersPlaceInv,
            filteredValues: filtersPlaceInvId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedPlace = filterKey;
              selectedPlaceId = filterId;
              updateSelectedPlace(filterKey);
            });
      case 'Names of Countries involved at that time':
      case 'Noms des pays impliqués à cette époque':
      case '関係国の当時の名称':
        return buildFilterFormatImediat(
            filteredKeys: filtersPaysInvATT,
            filteredValues: filtersPaysInvATTId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedCountryInvolvedATT = filterKey;
              selectedCountryInvolvedATTId = filterId;
              updateSelectedCountryInvolved(filterKey);
            });
      case 'Names of Places involved at that time':
      case 'Noms des lieux impliqués à cette époque':
      case '関係都市の当時の名称':
        return buildFilterFormatImediat(
            filteredKeys: filtersPlaceInvATT,
            filteredValues: filtersPlaceInvATTId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedPlaceInvolvedATT = filterKey;
              selectedPlaceInvolvedATTId = filterId;
              updateSelectedPlaceInvolve(filterKey);
            });
      case 'Stars Observed':
      case 'Étoiles observées':
      case '観測された星、目指した星など':
        return buildFilterFormatImediat(
            filteredKeys: filtersStarsObserved,
            filteredValues: filtersStarsObservedId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedStarsObserved = filterKey;
              selectedStarsObservedId = filterId;
              updateSelectedStar(filterKey);
            });
      case 'Organisations':
      //case 'Organisations':
      case '機関、組織、施設など':
        return buildFilterFormatImediat(
            filteredKeys: filtersOrgs,
            filteredValues: filtersOrgsId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedOrg = filterKey;
              selectedOrgId = filterId;
              updateSelectedOrg(filterKey);
            });
      case 'Universities':
      case 'Universités':
      case '大学':
        return buildFilterFormatImediat(
            filteredKeys: filtersUnivs,
            filteredValues: filtersUnivsId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedUniv = filterKey;
              selectedUnivId = filterId;
              updateSelectedOrg(filterKey);
            });
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
        return buildFilterFormatImediat(
            filteredKeys: filtersPublisher,
            filteredValues: filtersPublisherId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedPublisher = filterKey;
              selectedPublisherId = filterId;
              updateSelectedOrg(filterKey);
            });
      case 'People':
      case 'Personnes':
      case '人物':
        return buildFilterFormatImediat(
            filteredKeys: filtersPeople,
            filteredValues: filtersPeopleId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedPeople = filterKey;
              selectedPeopleId = filterId;
              updateSelectedPeople(filterKey);
            });
      case 'Ships':
      case 'Nom du Navire':
      case '船名':
        return buildFilterFormatImediat(
            filteredKeys: filtersShips,
            filteredValues: filtersShipsId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedShips = filterKey;
              selectedShopsId = filterId;
              updateSelectedPeople(filterKey);
            });
      case 'Categories':
      case 'Catégories':
      case '分類':
        return buildFilterFormatImediat(
            filteredKeys: filtersCategories,
            filteredValues: filtersCategoriesId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedCategory = filterKey;
              selectedCategoryId = filterId;
              updateSelectedCategory(filterKey);
            });
      case 'Other Terms':
      case 'Autres termes':
      case 'その他の用語':
        return buildFilterFormatImediat(
            filteredKeys: filtersTerms,
            filteredValues: filtersTermsId,
            filterKey: item.mot,
            filterValue: item.id,
            onSelected: (filterKey, filterId) {
              selectedTerm = filterKey;
              selectedTermId = filterId;
              updateSelectedTerm(filterKey);
            });
    }
    return const SizedBox.shrink();
  }

  void clearSearch() {
    period.clear();
    universe.clear();
    _fetchStarsRepository.listDetailStars.clear();
    filtersStars.clear();
    pays.clear();
    _fetchPlaceRepository.listPlaces.clear();
    filtersVilles.clear();
    oceans.clear();
    _fetchSeasRepository.listSeas.clear();
    filtersSeas.clear();
    listPaysInv.clear();
    filtersPaysInv.clear();
    listPlaceInv.clear();
    filtersPlaceInv.clear();
    _fetchCattRepository.listDetailCatts.clear();
    filtersPaysInvATT.clear();
    _fetchPattRepository.listDetailPatts.clear();
    filtersPlaceInvATT.clear();
    _fetchStarsRepository.listDetailStars.clear();
    filtersStarsObserved.clear();
    _fetchCategoriesRepository.listDetailCategories.clear();
    filtersCategories.clear();
    _fetchPeopleRepository.listDetailPeople.clear();
    filtersPeople.clear();
    _fetchOrgsRepository.listDetailOrgs.clear();
    filtersOrgs.clear();
    _fetchUnivsRepository.listDetailUnivs.clear();
    filtersUnivs.clear();
    _fetchTermsRepository.listDetailTerms.clear();
    filtersTerms.clear();
    filtersCatts.clear();
    filtersPatts.clear();

    notifyListeners(); // 状態が変更されたことを通知
  }

  void submitSelection() {
    switch (selectedOption) {
      case 'Period':
      case 'Période':
      case '時代':
        _fetchPrincipalRepository.fetchPrincipalByPeriod(period: filtersPeriod);
        break;
      case 'Universe':
      case 'Univers':
      case '宇宙':
        _fetchPrincipalRepository.fetchPrincipalByLocation(
            location: filtersUniverse);
        break;
      case 'Stars':
      case 'Étoiles':
      case '恒星・惑星など(起こった場所)':
        _fetchPrincipalRepository.fetchPrincipalByPrecise(
            precise: filtersStars);
        break;
      case 'Current Country where it happened':
      case 'Pays actuel où cela s\'est passé':
      case '現在の国名(起こった場所)':
        _fetchPrincipalRepository.fetchPrincipalByLocation(
            location: filtersPays);
        break;
      case 'Current Place-name where it happened':
      case 'Nom de lieu actuel où cela s\'est passé':
      case '現在の地名(起こった場所)':
        _fetchPrincipalRepository.fetchPrincipalByPrecise(
            precise: filtersVilles);
        break;
      case 'Oceans':
      case 'Océans':
      case '海洋名':
        _fetchPrincipalRepository.fetchPrincipalByLocation(
            location: filtersOceans);
        break;
      case 'Seas':
      case 'Mers':
      case '海域名':
        _fetchPrincipalRepository.fetchPrincipalByPrecise(precise: filtersSeas);
        break;
      case 'Country-name at that time':
      case 'Nom de pays à cette époque':
      case '当時の国名(起こった場所)':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersCattsId);
        break;
      case 'Place-name at that time':
      case 'Nom de lieu à cette époque':
      case '当時の地名(起こった場所)':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersPattsId);
        break;
      case 'Countries involved':
      case 'Pays impliqués':
      case '関係国名':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersPaysInvId);
        break;

      case 'Places involved':
      case 'Lieux impliqués':
      case '関係都市名':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersPlaceInvId);
        break;
      case 'Names of Countries involved at that time':
      case 'Noms des pays impliqués à cette époque':
      case '関係国の当時の名称':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersPaysInvATTId);
        break;
      case 'Names of Places involved at that time':
      case 'Noms des lieux impliqués à cette époque':
      case '関係都市の当時の名称':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersPlaceInvATTId);
        break;
      case 'Stars Observed':
      case 'Étoiles observées':
      case '観測された星、目指した星など':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersStarsObservedId);
        break;
      case 'Organisations':
      //case 'Organisations':
      case '機関、組織、施設など':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersOrgsId);
        break;
      case 'Universities':
      case 'Universités':
      case '大学':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersUnivsId);
        break;
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
      _fetchPrincipalRepository.fetchPrincipalByDetailId(
          detailIds: filtersPublisherId);
        break;
      case 'People':
      case 'Personnes':
      case '人物':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersPeopleId);
        break;
      case 'Ships':
      case 'Nom du Navire':
      case '船名':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersShipsId);
        break;
      case 'Categories':
      case 'Catégories':
      case '分類':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersCategoriesId);
        break;
      case 'Other Terms':
      case 'Autres termes':
      case 'その他の用語':
        _fetchPrincipalRepository.fetchPrincipalByDetailId(
            detailIds: filtersTermsId);
        break;
    }
    notifyListeners();
  }

  void navigateBasedOnSelection(BuildContext context, String isSelectedFormat) {
    // ダイアログを表示する関数
    void showNoItemDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Sorry'),
            content: const Text('No applicable events.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop(); // ダイアログを閉じる
                },
              ),
            ],
          );
        },
      );
    }

    // 選択に基づいて処理を分岐
    switch (isSelectedFormat) {
      case 'CLASSIC':
        if (_fetchPrincipalRepository.listPrincipal.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                  principal: _fetchPrincipalRepository.listPrincipal),
            ),
          );
        }
        break;
      case 'SCALABLE':
        if (_fetchPrincipalRepository.listPrincipal.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Scalable(principal: _fetchPrincipalRepository.listPrincipal),
            ),
          );
        }
        break;
      case '3D':
        if (_fetchPrincipalRepository.principalIds.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThreeDViewPage(
                  principalIds: _fetchPrincipalRepository.principalIds),
            ),
          );
        }
        break;
      case '4D':
        if (_fetchPrincipalRepository.principalIds.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FourDViewPage(
                  principalIds: _fetchPrincipalRepository.principalIds),
            ),
          );
        }
        break;
      case 'MR':
        if (_fetchPrincipalRepository.principalIds.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MRViewPage(
                  principalIds: _fetchPrincipalRepository.principalIds),
            ),
          );
        }
        break;
        case 'Map':
        if (_fetchPrincipalRepository.principalIds.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapPage(
                  principalIds: _fetchPrincipalRepository.principalIds),
            ),
          );
        }
        break;
      case 'Globe':
        if (_fetchPrincipalRepository.principalIds.isEmpty) {
          showNoItemDialog();
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GlobePage(
                  principalIds: _fetchPrincipalRepository.principalIds),
            ),
          );
        }
        break;
      default:
        // 未知の選択肢に対する処理（必要に応じてここにコードを追加）
        break;
    }
  }
}
