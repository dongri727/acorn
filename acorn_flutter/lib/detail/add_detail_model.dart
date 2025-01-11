import 'dart:core';

import 'package:acorn_flutter/fetch/fetch_categories.dart';
import 'package:acorn_flutter/fetch/fetch_terms.dart';
import 'package:acorn_flutter/lists/detail_options_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import '../../utils/build_chips.dart';
import '../fetch/fetch_catt.dart';
import '../fetch/fetch_orgs.dart';
import '../fetch/fetch_patt.dart';
import '../fetch/fetch_people.dart';
import '../fetch/fetch_place.dart';
import '../fetch/fetch_publisher.dart';
import '../fetch/fetch_ships.dart';
import '../fetch/fetch_stars.dart';
import '../fetch/fetch_univs.dart';
import '../lists/countries_list.dart';
import '../serverpod_client.dart';

class AddDetailModel extends ChangeNotifier {

  final int principalId;

  late final FetchStarsRepository  _fetchStarsRepository;
  late final FetchCattRepository _fetchCattRepository;
  late final FetchPattRepository _fetchPattRepository;
  late final FetchPlaceRepository _fetchPlaceRepository;
  late final FetchOrgsRepository _fetchOrgsRepository;
  late final FetchUnivsRepository _fetchUnivsRepository;
  late final FetchPublisherRepository _fetchPublisherRepository;
  late final FetchPeopleRepository _fetchPeopleRepository;
  late final FetchShipsRepository _fetchShipsRepository;
  late final FetchCategoriesRepository _fetchCategoriesRepository;
  late final FetchTermsRepository _fetchTermsRepository;

  AddDetailModel({required this.principalId}){

    _fetchStarsRepository = FetchStarsRepository();
    _fetchCattRepository = FetchCattRepository();
    _fetchPattRepository = FetchPattRepository();
    _fetchPlaceRepository = FetchPlaceRepository();
    _fetchOrgsRepository = FetchOrgsRepository();
    _fetchUnivsRepository = FetchUnivsRepository();
    _fetchPublisherRepository = FetchPublisherRepository();
    _fetchPeopleRepository = FetchPeopleRepository();
    _fetchShipsRepository = FetchShipsRepository();
    _fetchCategoriesRepository = FetchCategoriesRepository();
    _fetchTermsRepository = FetchTermsRepository();
  }

  ///RadioButton
  String selectedOption = '';

  List<String> options = detailOptions;
  List<dynamic> currentDisplayList = [];

  var newPlace = '';
  var newCATT = '';
  var newPATT = '';
  var newStar = '';
  var newOrg = '';
  var newUniv = '';
  var newPublisher = '';
  var newPerson = '';
  var newShip = '';
  var newCategory = '';
  var newTerm = '';

  //関係国の現在名
  List<Map<String, dynamic>> listPaysInv = countries;
  final List<String> filtersPaysInv = <String>[];
  final List<int> filtersPaysInvId = <int>[];

  //関係都市等の現在名
  //List<Places> listPlaces = [];
  //List<Detail> listDetailPlaces = [];
  final List<String> filtersPlaces = <String>[];
  final List<int> filtersPlacesId = <int>[];

  //関係国の当時の名称
  //List<Countryatts> listCATTs = [];
  //List<Detail> listDetailCatts = [];
  final List<String> filtersCATTs = <String>[];
  final List<int> filtersCATTId = <int>[];

  //関係都市等の当時の名称
  //List<Placeatts> listPATTs = [];
  final List<String> filtersPATTs = <String>[];
  final List<int> filtersPATTId = <int>[];

  //観測された星
  //List<Detail> listDetailStars = [];
  final List<String> filtersStars = <String>[];
  final List<int> filtersStarId = <int>[];

  //関係団体・施設
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  //大学
  final List<String> filtersUnivs = <String>[];
  final List<int> filtersUnivsId = <int>[];

  //出版社、ウェブサイト
  final List<String> filtersPublisher = <String>[];
  final List<int> filtersPublisherId = <int>[];

  //関係者
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  //船舶
  final List<String> filtersShips = <String>[];
  final List<int> filtersShipsId = <int>[];

  //category
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  //用語
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  String selectedPaysInv = '';
  int selectedPaysInvId = 0;

  String selectedPlaceInv = '';
  int selectedPlaceInvId = 0;

  String selectedCattInv = '';
  int selectedCattInvId = 0;

  String selectedPattInv = '';
  int selectedPattInvId = 0;

  String selectedStarInv = '';
  int selectedStarInvId = 0;

  String selectedOrgs = '';
  int selectedOrgsId = 0;

  String selectedUnivs = '';
  int selectedUnivsId = 0;

  String selectedPublisher = '';
  int selectedPublisherId = 0;

  String selectedPeople = '';
  int selectedPeopleId = 0;

  String selectedShips = '';
  int selectedShipsId = 0;

  String selectedCategory = '';
  int selectedCategoryId = 0;

  String selectedTerm = '';
  int selectedTermId = 0;

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Current Name of Country Involved':
        currentDisplayList = listPaysInv;
        break;
      case 'Current Name of Place Involved':
        await _fetchPlaceRepository.fetchPlaceInvolvedInDetail();
        currentDisplayList = _fetchPlaceRepository.listDetailPlaces;
        break;
      case 'Name of Country Involved at that time':
        await _fetchCattRepository.fetchCattsInDetail();
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Name of Place Involved at that time':
        await _fetchPattRepository.fetchPattsInDetail();
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
      case 'Stars Observed or Aimed at':
        await _fetchStarsRepository.fetchStarsInDetail();
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;
      case 'Institutions,Organisations etc':
        await _fetchOrgsRepository.fetchOrgsInDetail();
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'Universities':
        await _fetchUnivsRepository.fetchUnivsInDetail();
        currentDisplayList = _fetchUnivsRepository.listDetailUnivs;
        break;
      case 'Publishers,Websites':
        await _fetchPublisherRepository.fetchPublisherInDetail();
        currentDisplayList = _fetchPublisherRepository.listDetailPublisher;
        break;
      case 'People':
        await _fetchPeopleRepository.fetchPeopleInDetail();
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
      case 'Ships':
        await _fetchShipsRepository.fetchShipsInDetail();
        currentDisplayList = _fetchShipsRepository.listDetailShips;
        break;
      case 'Categories':
        await _fetchCategoriesRepository.fetchCategoriesInDetail();
        currentDisplayList = _fetchCategoriesRepository.listDetailCategories;
        break;
      case 'Terms':
        await _fetchTermsRepository.fetchTermsInDetail();
        currentDisplayList = _fetchTermsRepository.listDetailTerms;
        break;
    }
    notifyListeners();
  }

  setNewWord(text) {
    switch (selectedOption) {
      //country must not be added
      case 'Current Name of Place Involved':
        newPlace = text;
        break;
      case 'Name of Country Involved at that time':
        newCATT = text;
        break;
      case 'Name of Place Involved at that time':
        newPATT = text;
        break;
      case 'Stars Observed or Aimed at':
        newStar = text;
        break;
      case 'Institutions,Organisations etc':
        newOrg = text;
        break;
      case 'Universities':
        newUniv = text;
        break;
      case 'Publishers,Websites':
        newPublisher = text;
        break;
      case 'People':
        newPerson = text;
        break;
      case 'Ships':
        newShip = text;
        break;
      case 'Categories':
        newCategory = text;
        break;
      case 'Terms':
        newTerm = text;
        break;
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      //country must not be added
      case 'Current Name of Place Involved':
        await _fetchPlaceRepository.addDetailPlacesAndFetch('places_involved', newPlace);
        currentDisplayList = _fetchPlaceRepository.listPlaces;
        break;
      case 'Name of Country Involved at that time':
        await _fetchCattRepository.addDetailCattsAndFetch('countryatts', newCATT);
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Name of Place Involved at that time':
        await _fetchPattRepository.addDetailPattsAndFetch('placeatts', newPATT);
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
      case 'Stars Observed or Aimed at':
        await _fetchStarsRepository.addDetailStarsAndFetch('stars_involved', newStar);
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;
      case 'Institutions,Organisations etc':
        await _fetchOrgsRepository.addDetailOrgsAndFetch('organisations', newOrg);
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'Universities':
        await _fetchUnivsRepository.addDetailUnivsAndFetch('universities', newUniv);
        currentDisplayList = _fetchUnivsRepository.listDetailUnivs;
        break;
      case 'Publishers,Websites':
        await _fetchPublisherRepository.addDetailPublisherAndFetch('publisher', newPublisher);
        currentDisplayList = _fetchPublisherRepository.listDetailPublisher;
        break;
      case 'People':
        await _fetchPeopleRepository.addDetailPeopleAndFetch('people', newPerson);
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
      case 'Ships':
        await _fetchShipsRepository.addDetailShipsAndFetch('ships', newShip);
        currentDisplayList = _fetchShipsRepository.listDetailShips;
        break;
      case 'Categories':
        await _fetchCategoriesRepository.addDetailCategoriesAndFetch('categories', newCategory);
        currentDisplayList = _fetchCategoriesRepository.listDetailCategories;
        break;
      case 'Terms':
        await _fetchTermsRepository.addDetailTermsAndFetch('terms', newTerm);
        currentDisplayList = _fetchTermsRepository.listDetailTerms;
        break;
    }
    notifyListeners();
  }
  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Current Name of Country Involved':
        return buildFilterFormatImediat(
            filteredKeys: filtersPaysInv,
            filteredValues: filtersPaysInvId,
            filterKey: item['name'],
            filterValue: item['detailId'],
            onSelected: (key, value) {
              selectedPaysInv = key;
              selectedPaysInvId = value;
              updateSelectedPaysInv(key);
            });
      case 'Current Name of Place Involved':
        return buildFilterFormatImediat(
          filteredKeys: filtersPlaces,
          filteredValues: filtersPlacesId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPlaceInv = key;
            selectedPlaceInvId = value;
            updateSelectedPlaceInv(key);
          },
        );
      case 'Name of Country Involved at that time':
        return buildFilterFormatImediat(
          filteredKeys: filtersCATTs,
          filteredValues: filtersCATTId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedCattInv = key;
            selectedCattInvId = value;
            updateSelectedCattInv(key);
          },
        );
      case 'Name of Place Involved at that time':
        return buildFilterFormatImediat(
          filteredKeys: filtersPATTs,
          filteredValues: filtersPATTId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPattInv = key;
            selectedPattInvId = value;
            updateSelectedPattInv(key);
          },
        );
      case 'Stars Observed or Aimed at':
        return buildFilterFormatImediat(
          filteredKeys: filtersStars,
          filteredValues: filtersStarId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedStarInv = key;
            selectedStarInvId = value;
            updateSelectedStarInv(key);
            print(value);
          },

        );
      case 'Institutions,Organisations etc':
        return buildFilterFormatImediat(
          filteredKeys: filtersOrgs,
          filteredValues: filtersOrgsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedOrgs = key;
            selectedOrgsId = value;
            updateSelectedOrgs(key);
          },
        );
      case 'Universities':
        return buildFilterFormatImediat(
          filteredKeys: filtersUnivs,
          filteredValues: filtersUnivsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedUnivs = key;
            selectedUnivsId = value;
            updateSelectedUnivs(key);
          },
        );
      case 'Publishers,Websites':
        return buildFilterFormatImediat(
          filteredKeys: filtersPublisher,
          filteredValues: filtersPublisherId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPublisher = key;
            selectedPublisherId = value;
            updateSelectedPublisher(key);
          },
        );
      case 'People':
        return buildFilterFormatImediat(
          filteredKeys: filtersPeople,
          filteredValues: filtersPeopleId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPeople = key;
            selectedPeopleId = value;
            updateSelectedPeople(key);
          },
        );
      case 'Ships':
        return buildFilterFormatImediat(
          filteredKeys: filtersShips,
          filteredValues: filtersShipsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedShips = key;
            selectedShipsId = value;
            updateSelectedPeople(key);
          },
        );
      case 'Categories':
        return buildFilterFormatImediat(
          filteredKeys: filtersCategories,
          filteredValues: filtersCategoriesId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedCategory = key;
            selectedCategoryId = value;
            updateSelectedCategory(key);
          },
        );
      case 'Terms':
        return buildFilterFormatImediat(
          filteredKeys: filtersTerms,
          filteredValues: filtersTermsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedTerm = key;
            selectedTermId = value;
            updateSelectedTerm(key);
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  void updateSelectedPaysInv(String newSelectedPaysInv) {
    selectedPaysInv = newSelectedPaysInv;
    notifyListeners();
  }

  void updateSelectedPlaceInv(String newSelectedPlaceInv) {
    selectedPlaceInv = newSelectedPlaceInv;
    notifyListeners();
  }

  void updateSelectedCattInv(String newSelectedCattInv) {
    selectedCattInv = newSelectedCattInv;
    notifyListeners();
  }

  void updateSelectedPattInv(String newSelectedPattInv) {
    selectedPattInv = newSelectedPattInv;
    notifyListeners();
  }

  void updateSelectedStarInv(String newSelectedStarInv) {
    selectedStarInv = newSelectedStarInv;
    notifyListeners();
  }

  void updateSelectedOrgs(String newSelectedOrgs) {
    selectedOrgs = newSelectedOrgs;
    notifyListeners();
  }

  void updateSelectedUnivs(String newSelectedUnivs) {
    selectedUnivs = newSelectedUnivs;
    notifyListeners();
  }

  void updateSelectedPublisher(String newSelectedPublisher) {
    selectedPublisher = newSelectedPublisher;
    notifyListeners();
  }

  void updateSelectedPeople(String newSelectedPeople) {
    selectedPeople = newSelectedPeople;
    notifyListeners();
  }

  void updateSelectedShips(String newSelectedShips) {
    selectedShips = newSelectedShips;
    notifyListeners();
  }

  void updateSelectedCategory(String newSelectedCategory) {
    selectedCategory = newSelectedCategory;
    notifyListeners();
  }

  void updateSelectedTerm(String newSelectedTerm) {
    selectedTerm = newSelectedTerm;
    notifyListeners();
  }

  Future<void> savePrincipalDetail() async {
    if (filtersPaysInvId.isNotEmpty) {
      for (var paysInvId in filtersPaysInvId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: paysInvId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }
    if (filtersPlacesId.isNotEmpty) {
      for (var placesId in filtersPlacesId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: placesId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersCATTId.isNotEmpty) {
      for (var cattId in filtersCATTId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: cattId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersPATTId.isNotEmpty) {
      for (var pattId in filtersPATTId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: pattId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersStarId.isNotEmpty) {
      for (var starId in filtersStarId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: starId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersOrgsId.isNotEmpty) {
      for (var orgId in filtersOrgsId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: orgId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersUnivsId.isNotEmpty) {
      for (var univId in filtersUnivsId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: univId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersPublisherId.isNotEmpty) {
      for (var publisherId in filtersPublisherId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: publisherId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersPeopleId.isNotEmpty) {
      for (var personId in filtersPeopleId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: personId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersShipsId.isNotEmpty) {
      for (var shipId in filtersShipsId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: shipId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersCategoriesId.isNotEmpty) {
      for (var categoryId in filtersCategoriesId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: categoryId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }

    if (filtersTermsId.isNotEmpty) {
      for (var termId in filtersTermsId) {
        var principalDetail = PrincipalDetail(principalId: principalId, detailId: termId);
        await client.principalDetail.addPDetail(principalDetail);
      }
    }
  }
}
