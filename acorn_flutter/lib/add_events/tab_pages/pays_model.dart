import 'dart:core';
import 'package:acorn_flutter/lists/pays_options_list.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import '../../confirm/confirm.dart';
import 'package:provider/provider.dart';
import '../../fetch/fetch_catt.dart';
import '../../fetch/fetch_patt.dart';
import '../../fetch/fetch_stars.dart';
import '../../utils/build_chips.dart';


class PaysModel extends ChangeNotifier {

  late final FetchStarsRepository  _fetchStarsRepository;
  late final FetchCattRepository _fetchCattRepository;
  late final FetchPattRepository _fetchPattRepository;

  PaysModel(){
    _fetchStarsRepository = FetchStarsRepository();
    _fetchCattRepository = FetchCattRepository();
    _fetchPattRepository = FetchPattRepository();
  }

  var newPlace = '';
  var newCATT = '';
  var newPATT = '';
  var newStar = '';

  List<String> options = paysOptions;
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

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
      currentDisplayList = listPays;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  // without KeyCountry
  fetchPlacesInvolved() async {
    try {
      listPlaces = await client.places.getPlaces();
      currentDisplayList = listPlaces;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 都市名を追加するには国名が必要だが･･･。
  addPlaceAndFetch(String newPlace) async {
    try {
      var place = Places(place: newPlace, country: keyCountry);
      listPlaces = await client.places.addAndReturnPlaces(place);
      currentDisplayList = listPlaces;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addCattAndFetch(String newCatt) async {
    try {
      var catt = Countryatts(countryatt: newCatt);
      listCATTs = await client.countryatts.addAndReturnCatts(catt);
      currentDisplayList = listCATTs;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }
//todo 複数語同時挿入に対応する
/*  addCountryATTandFetch(String newCATT) async {
    List<string> newCatts = newCATT.split(,).map((s) => s.trim()).toList();
    try {
      var catts = Countryatts(countryatt: newCatts);
      await client.countryatts.addListAndGetCatts(catts);
      print(catts);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }*/

  addPATTandFetch(String newPATT) async {
    try {
      var patts = Placeatts(placeatt: newPATT);
      listPATTs = await client.placeatts.addAndGetPatts(patts);
      currentDisplayList = listPATTs;
    } catch (e) {
      debugPrint('$e');
    }
  }

  addStarAndFetch(String newStar) async {
    try {
      var stars = Stars(star: newStar);
      listStars = await client.stars.addAndReturnStars(stars);
      currentDisplayList = listStars;
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Current Name of Country Involved':
        await fetchPaysInvolved();
        break;
      case 'Current Name of Place Involved':
        await fetchPlacesInvolved();
        break;
      case 'Name of Country Involved at that time':
        await _fetchCattRepository.fetchCatt();
        currentDisplayList = _fetchCattRepository.listCatt;
        notifyListeners();
        break;
      case 'Name of Place Involved at that time':
        await _fetchPattRepository.fetchPatt();
        currentDisplayList = _fetchPattRepository.listPatt;
        notifyListeners();
        break;
      case 'Stars Observed or Aimed at':
        await _fetchStarsRepository.fetchStars();
        currentDisplayList = _fetchStarsRepository.listStars;
        notifyListeners();
        break;
    }
  }

  setNewWord(text) {
    switch (selectedOption) {
      //country must not be added
      case 'Current Name of Place Involved':
        newPlace = text;
        notifyListeners();
        break;
      case 'Name of Country Involved at that time':
        newCATT = text;
        notifyListeners();
        break;
      case 'Name of Place Involved at that time':
        newPATT = text;
        notifyListeners();
        break;
      case 'Stars Observed or Aimed at':
        newStar = text;
        notifyListeners();
        break;
    }
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      //country must not be added
      case 'Current Name of Place Involved':
        await addPlaceAndFetch(newPlace);
        break;
      case 'Name of Country Involved at that time':
        await addCattAndFetch(newCATT);
        break;
      case 'Name of Place Involved at that time':
        await addPATTandFetch(newPATT);
        break;
      case 'Stars Observed or Aimed at':
        await addStarAndFetch(newStar);
        break;
    }
  }

  Widget buildItemWidget(dynamic item) {
    //String itemType = _getItemType(item);
    switch (selectedOption) {
      case 'Current Name of Country Involved':
        return buildFilterFormatImediat(
          filteredKeys: filtersPays,
          filteredValues: filtersPaysId,
          filterKey: (item as Pays).pays,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPaysInv = key;
            selectedPaysInvId = value;
            updateSelectedPaysInv(key);
          });
      case 'Current Name of Place Involved':
        return buildFilterFormatImediat(
          filteredKeys: filtersPlaces,
          filteredValues: filtersPlacesId,
          filterKey: (item as Places).place,
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
          filterKey: (item as Countryatts).countryatt,
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
          filterKey: (item as Placeatts).placeatt,
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
          filterKey: (item as Stars).star,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedStarInv = key;
            selectedStarInvId = value;
            updateSelectedStarInv(key);
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


  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedCountries = filtersPays;
    confirm.selectedCountriesId = filtersPaysId;
    print("pays:$filtersPays");

    confirm.selectedPlaces = filtersPlaces;
    confirm.selectedPlacesId = filtersPlacesId;
    print("places:$filtersPlaces");

    confirm.selectedATT = filtersCATTs;
    confirm.selectedATTId = filtersCATTId;
    print("catt:$filtersCATTs");

    confirm.selectedPATT = filtersPATTs;
    confirm.selectedPATTId = filtersPATTId;
    print("patt:$filtersPATTs");

    confirm.selectedStar = filtersStars;
    confirm.selectedStarId = filtersStarId;
    print("stars:$filtersStars");
  }  

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

  ///RadioButton
  String selectedOption = '';
}
