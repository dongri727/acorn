import 'dart:core';
import 'package:acorn_flutter/add_events/tab_pages/pays_model.dart';
import 'package:acorn_flutter/lists/pays_options_list.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import '../../confirm/confirm.dart';
import 'package:provider/provider.dart';

class PaysModel extends ChangeNotifier {
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

  fetchCountryAttInv() async {
    try {
      listCATTs = await client.countryatts.getCountryATTs();
      currentDisplayList = listCATTs;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchPattInv() async {
    try {
      listPATTs = await client.placeatts.getPlaceATTs();
      currentDisplayList = listPATTs;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchStarsObserved() async {
    try {
      listStars = await client.stars.getStars();
      currentDisplayList = listStars;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

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
        await fetchCountryAttInv();
        break;
      case 'Name of Place Involved at that time':
        await fetchPattInv();
        break;
      case 'Stars Observed or Aimed at':
        await fetchStarsObserved();
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
        await fetchCountryAttInv();
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
    String itemType = _getItemType(item);
    switch (itemType) {
      case 'Pays':
        return _buildFilterFormatImediat(
          filteredKeys: filtersPays,
          filteredValues: filtersPaysId,
          filterKey: (item as Pays).pays,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPaysInv = key;
            selectedPaysInvId = value;
          },
        );
      case 'Places':
        return _buildFilterFormatImediat(
          filteredKeys: filtersPlaces,
          filteredValues: filtersPlacesId,
          filterKey: (item as Places).place,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPlaceInv = key;
            selectedPlaceInvId = value;
          },
        );
      case 'Catts':
        return _buildFilterFormatImediat(
          filteredKeys: filtersCATTs,
          filteredValues: filtersCATTId,
          filterKey: (item as Countryatts).countryatt,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedCattInv = key;
            selectedCattInvId = value;
          },
        ); 
      case 'Patts':
        return _buildFilterFormatImediat(
          filteredKeys: filtersPATTs,
          filteredValues: filtersPATTId,
          filterKey: (item as Placeatts).placeatt,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPattInv = key;
            selectedPattInvId = value;
          },
        ); 
      case 'Stars':
        return _buildFilterFormatImediat(
          filteredKeys: filtersStars,
          filteredValues: filtersStarId,
          filterKey: (item as Stars).star,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedStarInv = key;
            selectedStarInvId = value;
          },
        );            
      default:
        return const SizedBox.shrink();
    }
  }

  String _getItemType(dynamic item) {
    if (item is Pays) return 'Pays';
    if (item is Places) return 'Places';
    if (item is Countryatts) return 'Catts';
    if (item is Placeatts) return 'Patts';
    if (item is Stars) return 'Stars';
    return 'Unknown';
  }

  Widget _buildFilterFormatImediat({
    required List<String> filteredKeys,
    required List<int> filteredValues,
    required String filterKey,
    required int filterValue,
    required Function(String, int) onSelected,
  }) {
    return FilterFormatImediat(
        filteredImKeys: filteredKeys,
        filteredImValues: filteredValues,
        filterImKey: filterKey,
        filterImValue: filterValue,
        onSelected: onSelected);
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
