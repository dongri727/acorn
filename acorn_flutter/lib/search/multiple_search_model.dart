import 'dart:core';
import 'package:acorn_flutter/fetch/fetch_catt.dart';
import 'package:acorn_flutter/fetch/fetch_orgs.dart';
import 'package:acorn_flutter/fetch/fetch_patt.dart';
import 'package:acorn_flutter/fetch/fetch_people.dart';
import 'package:acorn_flutter/fetch/fetch_seas.dart';
import 'package:acorn_flutter/fetch/fetch_stars.dart';
import 'package:acorn_flutter/search/result_page.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import '../../lists/search_options_list.dart';
import '../fetch/fetch_categories.dart';
import '../fetch/fetch_principal.dart';
import '../fetch/fetch_terms.dart';
import '../fetch/fetch_place.dart';
import '../lists/countries_list.dart';
import '../lists/oceans_list.dart';
import '../lists/period_list.dart';
import '../lists/universe_list.dart';
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
  late final FetchPeopleRepository _fetchPeopleRepository;
  late final FetchCategoriesRepository _fetchCategoriesRepository;
  late final FetchTermsRepository _fetchTermsRepository;

  late final FetchPrincipalRepository _fetchPrincipalRepository;

  MultipleSearchModel(){
    _fetchSeasRepository = FetchSeasRepository();
    _fetchPlaceRepository = FetchPlaceRepository();
    _fetchStarsRepository = FetchStarsRepository();
    _fetchCattRepository = FetchCattRepository();
    _fetchPattRepository = FetchPattRepository();
    _fetchOrgsRepository = FetchOrgsRepository();
    _fetchPeopleRepository = FetchPeopleRepository();
    _fetchCategoriesRepository = FetchCategoriesRepository();
    _fetchTermsRepository = FetchTermsRepository();

    _fetchPrincipalRepository = FetchPrincipalRepository();
  }

  final List<String> formats = [
    'CLASSIC',
    'SCALABLE',
    '3D',
    '4D',
    'MR',
  ];
  //radioButton
  String selectedFormat = 'CLASSIC';

  List<String> options = searchOptions;
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

/*   fetchPlaceInvolvedLookedFor() async {
    try {
      placeInvIds = await client.principalPlace.getPPlaceNarrowed();  //HERE
      listPlaceInv = await client.places.getPlacesInv(placeInvIds: placeInvIds);
      print(listPlaceInv);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  } */

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
  //List<Stars> listStarsObserved = [];
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

  //People
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  String selectedPeople = '';
  int selectedPeopleId = 0;

  void updateSelectedPeople(String newSelectedPeople) {
    selectedPeople = newSelectedPeople;
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

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Period':
        currentDisplayList = period;
        updateDisplayList(period);
        print(period);
        break;

        case 'Universe':
          currentDisplayList = universe;
          updateDisplayList(universe);
          print(universe);
          break;

          case 'Stars':
          await _fetchStarsRepository.fetchStars();
          currentDisplayList = _fetchStarsRepository.listStars;
          break;

        case 'Current Country where it happened':
          currentDisplayList = pays.map((country) => country['name'] as String).toList();
          //updateDisplayList(pays.map((country) => country['name'] as String).toList());
          break;
        case 'Current Place-name where it happened':
          await _fetchPlaceRepository.fetchVillesLookedFor();
          currentDisplayList = _fetchPlaceRepository.listPlaces;
          break;
        case 'Oceans':
          currentDisplayList = oceans;
          updateDisplayList(oceans);
          break;
        case 'Seas':
          await _fetchSeasRepository.fetchSeas();
          currentDisplayList = _fetchSeasRepository.listSeas;
          break;
        case 'Country-name at that time':
          await _fetchCattRepository.fetchCatt();
          currentDisplayList = _fetchCattRepository.listCatt;
          break;
        case 'Place-name at that time':
          await _fetchPattRepository.fetchPatt();
          currentDisplayList = _fetchPattRepository.listPatt;
          break;
        case 'Countries involved':
          currentDisplayList = listPaysInv;
          break;
        case 'Places involved':
        //await fetchPlaceInvolvedLookedFor();
          currentDisplayList = listPlaceInv;
          break;
        case 'Names of Countries involved at that time':
          await _fetchCattRepository.fetchCatt();
          currentDisplayList = _fetchCattRepository.listCatt;
          break;
        case 'Names of Places involved at that time':
          await _fetchPattRepository.fetchPatt();
          currentDisplayList = _fetchPattRepository.listPatt;
          break;
        case 'Stars Observed':
          await _fetchStarsRepository.fetchStars();
          currentDisplayList = _fetchStarsRepository.listStars;
          break;
        case 'Organisations':
          await _fetchOrgsRepository.fetchOrgs();
          currentDisplayList = _fetchOrgsRepository.listOrgs;
          break;
        case 'People':
          await _fetchPeopleRepository.fetchPeople();
          currentDisplayList = _fetchPeopleRepository.listPeople;
          break;
        case 'Categories':
          await _fetchCategoriesRepository.fetchCategories();
          currentDisplayList = _fetchCategoriesRepository.listCategories;
          break;
        case 'Other Terms':
          await _fetchTermsRepository.fetchTerms();
          currentDisplayList = _fetchTermsRepository.listTerms;
          break;
      }
      notifyListeners();
    }

    Widget buildItemWidget(dynamic item) {
      switch (selectedOption) {
        case 'Period':
          return buildFilterFormatImediatSI(
              filteredKeys: filtersPeriod,
              filterKey: item,
              onSelected: (filterImSiKey) {
                selectedPeriod = filterImSiKey;
                updateSelectedPeriod(filterImSiKey);
              });
        case 'Universe':
          return buildFilterFormatImediatSI(
              filteredKeys: filtersUniverse,
              filterKey: item,
              onSelected: (filterImSiKey) {
                selectedUniverse = filterImSiKey;
                updateSelectedUniverse(filterImSiKey);
              });
        case 'Stars':
          return buildFilterFormatImediatSI(
              filteredKeys: filtersStars,
              filterKey: item.star,
              onSelected: (filterImSiKey) {
                selectedStar = filterImSiKey;
                updateSelectedStar(filterImSiKey);
              });
        case 'Current Country where it happened':
          return buildFilterFormatImediatSI(
              filteredKeys: filtersPays,
              filterKey: item,
              onSelected: (filterImSiKey) {
                selectedPays = filterImSiKey;
                updateSelectedPays(filterImSiKey);
              });
        case 'Current Place-name where it happened':
          return buildFilterFormatImediatSI(
              filteredKeys: filtersVilles,
              filterKey: item.place,
              onSelected: (filterImSiKey) {
                selectedPlace = filterImSiKey;
                updateSelectedPlace(filterImSiKey);
              });
        case 'Oceans':
          return buildFilterFormatImediatSI(
              filteredKeys: filtersOceans,
              filterKey: item,
              onSelected: (filterImSiKey) {
                selectedOcean = filterImSiKey;
                updateSelectedOcean(filterImSiKey);
              });
        case 'Seas': //機能している
          return buildFilterFormatImediatSI(
              filteredKeys: filtersSeas,
              filterKey: item.sea,
              onSelected: (filterImSiKey) {
                selectedSea = filterImSiKey;
                updateSelectedSea(filterImSiKey);
              });
        case 'Country-name at that time':
          return buildFilterFormatImediat(
              filteredKeys: filtersCatts,
              filteredValues: filtersCattsId,
              filterKey: item.countryatt,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedCatt = filterKey;
                selectedCattId = filterId;
                updateSelectedCatt(filterKey);
              });
        case 'Place-name at that time':
          return buildFilterFormatImediat(
              filteredKeys: filtersPatts,
              filteredValues: filtersPattsId,
              filterKey: item.placeatt,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedPatt = filterKey;
                selectedPattId = filterId;
                updateSelectedPatt(filterKey);
              });
        case 'Countries involved':
          return buildFilterFormatImediat(
              filteredKeys: filtersPaysInv,
              filteredValues:
              filtersPaysInvId,
              filterKey: item['name'],
              filterValue: item['id'],
              onSelected: (filterKey, filterId) {
                selectedPays = filterKey;
                selectedPaysId = filterId;
                updateSelectedPays(filterKey);
              });
        case 'Places involved':
          return buildFilterFormatImediat(
              filteredKeys: filtersPlaceInv,
              filteredValues:
              filtersPlaceInvId,
              filterKey: item.place,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedPlace = filterKey;
                selectedPlaceId = filterId;
                updateSelectedPlace(filterKey);
              });
        case 'Names of Countries involved at that time':
          return buildFilterFormatImediat(
              filteredKeys: filtersPaysInvATT,
              filteredValues:
              filtersPaysInvATTId,
              filterKey: item.countryatt,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedCountryInvolvedATT =
                    filterKey;
                selectedCountryInvolvedATTId =
                    filterId;
                updateSelectedCountryInvolved(filterKey);
              });
        case 'Names of Places involved at that time':
          return buildFilterFormatImediat(
              filteredKeys:
              filtersPlaceInvATT,
              filteredValues:
              filtersPlaceInvATTId,
              filterKey: item.placeatt,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedPlaceInvolvedATT =
                    filterKey;
                selectedPlaceInvolvedATTId =
                    filterId;
                updateSelectedPlaceInvolve(filterKey);
              });
        case 'Stars Observed':
          return buildFilterFormatImediat(
              filteredKeys:
              filtersStarsObserved,
              filteredValues:
              filtersStarsObservedId,
              filterKey: item.star,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedStarsObserved =
                    filterKey;
                selectedStarsObservedId =
                    filterId;
                updateSelectedStar(filterKey);
              });
        case 'Organisations':
          return buildFilterFormatImediat(
              filteredKeys: filtersOrgs,
              filteredValues: filtersOrgsId,
              filterKey: item.organisation,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedOrg = filterKey;
                selectedOrgId = filterId;
                updateSelectedOrg(filterKey);
              });
        case 'People':
          return buildFilterFormatImediat(
              filteredKeys: filtersPeople,
              filteredValues: filtersPeopleId,
              filterKey: item.person,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedPeople = filterKey;
                selectedPeopleId = filterId;
                updateSelectedPeople(filterKey);
              });
        case 'Categories':
          return buildFilterFormatImediat(
              filteredKeys: filtersCategories,
              filteredValues:
              filtersCategoriesId,
              filterKey: item.category,
              filterValue: item.id,
              onSelected: (filterKey, filterId) {
                selectedCategory = filterKey;
                selectedCategoryId = filterId;
                updateSelectedCategory(filterKey);
              });
        case 'Other Terms':
          return buildFilterFormatImediat(
              filteredKeys: filtersTerms,
              filteredValues: filtersTermsId,
              filterKey: item.term,
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
      _fetchStarsRepository.listStars.clear();
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
      _fetchCattRepository.listCatt.clear();
      filtersPaysInvATT.clear();
      _fetchPattRepository.listPatt.clear();
      filtersPlaceInvATT.clear();
      _fetchStarsRepository.listStars.clear();
      filtersStarsObserved.clear();
      _fetchCategoriesRepository.listCategories.clear();
      filtersCategories.clear();
      _fetchPeopleRepository.listPeople.clear();
      filtersPeople.clear();
      _fetchOrgsRepository.listOrgs.clear();
      filtersOrgs.clear();
      _fetchTermsRepository.listTerms.clear();
      filtersTerms.clear();
      //listCatts.clear();
      filtersCatts.clear();
      //listPatts.clear();
      filtersPatts.clear();

      notifyListeners(); // 状態が変更されたことを通知
    }

    //List<int> principalIds = [];

    void submitSelection() {
      switch (selectedOption) {
        case 'Period':
          _fetchPrincipalRepository.fetchPrincipalByPeriod(
              period: filtersPeriod);
          break;
        case 'Universe':
          _fetchPrincipalRepository.fetchPrincipalByLocation(
              location: filtersUniverse);
          break;
        case 'Stars':
          _fetchPrincipalRepository.fetchPrincipalByPrecise(
              precise: filtersStars);
          break;
        case 'Current Country where it happened':
          _fetchPrincipalRepository.fetchPrincipalByLocation(location: filtersPays);
          break;
        case 'Current Place-name where it happened':
          _fetchPrincipalRepository.fetchPrincipalByPrecise(
              precise: filtersVilles);
          break;
        case 'Oceans':
          _fetchPrincipalRepository.fetchPrincipalByLocation(
              location: filtersOceans);
          break;
        case 'Seas':
          _fetchPrincipalRepository.fetchPrincipalByPrecise(
              precise: filtersSeas);
          break;
        case 'Country-name at that time':
          _fetchPrincipalRepository.fetchPrincipalByCattId(
              cattIds: filtersCattsId);
          break;
        case 'Place-name at that time':
          _fetchPrincipalRepository.fetchPrincipalByPattId(
              pattIds: filtersPattsId);
          break;
        case 'Countries involved':
          _fetchPrincipalRepository.fetchPrincipalByCInvolvedId(
              cInvolvedIds: filtersPaysInvId);
          break;

/*          case 'Places involved':
            _fetchPrincipalRepository.fetchPrincipalByPInvolvedId(pInvolvedIds: filtersPlaceInvId);
            break;*/
        case 'Names of Countries involved at that time':
          _fetchPrincipalRepository.fetchPrincipalByCattInvolvedId(cattsInvolvedIds: filtersPaysInvATTId);
          break;
        case 'Names of Places involved at that time':
          _fetchPrincipalRepository.fetchPrincipalByPattInvolvedId(pattsInvolvedIds: filtersPlaceInvATTId);
          break;
        case 'Stars Observed':
          _fetchPrincipalRepository.fetchPrincipalByStarsObservedId(
              starObservedIds:
              filtersStarsObservedId);
          break;
        case 'Organisations':
          _fetchPrincipalRepository.fetchPrincipalByOrgsId(
              orgIds: filtersOrgsId);
          break;
        case 'People':
          _fetchPrincipalRepository.fetchPrincipalByPersonId(
              personIds: filtersPeopleId);
          break;
        case 'Categories':
          _fetchPrincipalRepository.fetchPrincipalByCategoryId(
              categoryIds: filtersCategoriesId);
          break;
        case 'Other Terms':
          _fetchPrincipalRepository.fetchPrincipalByTermId(
              termIds: filtersTermsId);
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
              builder: (context) => ResultPage(principal: _fetchPrincipalRepository.listPrincipal),
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
              builder: (context) => Scalable(principal: _fetchPrincipalRepository.listPrincipal),
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
              builder: (context) => ThreeDViewPage(principalIds: _fetchPrincipalRepository.principalIds),
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
              builder: (context) => FourDViewPage(principalIds: _fetchPrincipalRepository.principalIds),
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
              builder: (context) => MRViewPage(principalIds: _fetchPrincipalRepository.principalIds),
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