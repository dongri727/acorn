import 'package:acorn_flutter/fetch/fetch_catt.dart';
import 'package:acorn_flutter/fetch/fetch_patt.dart';
import 'package:acorn_flutter/fetch/fetch_place.dart';
import 'package:acorn_flutter/fetch/fetch_seas.dart';
import 'package:acorn_flutter/fetch/fetch_stars.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:provider/provider.dart';
import '../../confirm/confirm.dart';
import '../../lists/where_options_list.dart';
import 'dart:math' as math;
import '../../utils/build_chips.dart';

class WhereModel extends ChangeNotifier {

  late final FetchStarsRepository _fetchStarsRepository;
  late final FetchPlaceRepository _fetchPlaceRepository;
  late final FetchSeasRepository _fetchSeasRepository;
  late final FetchCattRepository _fetchCattRepository;
  late final FetchPattRepository _fetchPattRepository;

  final String keyCountry;

  WhereModel({required this.keyCountry}){
    _fetchStarsRepository = FetchStarsRepository();
    _fetchPlaceRepository = FetchPlaceRepository();
    _fetchSeasRepository = FetchSeasRepository();
    _fetchCattRepository = FetchCattRepository();
    _fetchPattRepository = FetchPattRepository();
  }
  
  var newStar = '';
  var newPlace = '';
  var newSea = '';
  var newPaysatt = '';
  var newPlaceatt = '';

  var newLatitude = 0.0;
  var newLongitude = 0.0;
  double cx = 0.0;
  double cy = 0.0;
  double cz = 0.0;

  ///当時の国名
  List<Map<String, String>> displayListCountryatts = [];
  final List<String> _filtersCountryatts = <String>[];
  //final List<int> _fltersCountryattsId = <int>[];

  ///当時の地名
  List<Map<String, String>> displayListPlaceatts = [];
  final List<String> _filtersPlaceatts = <String>[];
  //final List<int> _filtersPlaceattsId = <int>[];

  List<dynamic> currentDisplayList = [];

  String? selectedOption = '';

  List<String> options = whereOptions;

  List<String> ns = [
    'N',
    'S',
  ];

  nsSwitch(value) async {
    switch (selectedOption) {
      case 'N':
        newLatitude = double.tryParse(value)!;
        break;
      case 'S':
        newLatitude = -double.tryParse(value)!;
        break;
    }
  }

  List<String> ew = [
    'E',
    'W',
  ];

  ewSwitch(value) async {
    switch (selectedOption) {
      case 'E':
        newLongitude = double.tryParse(value)!;
        break;
      case 'W':
        newLongitude = -double.tryParse(value)!;
        break;
    }
  }

  final List<String> _filtersLocationPrecise = <String>[];

  String locationPrecise = '';

  String chosenCatt = '';
  int chosenCattId = 0;

  String chosenPatt = '';
  int chosenPattId = 0;

  String chosenLocationPrecise = '';

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Stars':
        await _fetchStarsRepository.fetchStarsInDetail();
        currentDisplayList = _fetchStarsRepository.listDetailStars;
/*        await _fetchStarsRepository.fetchStars();
        currentDisplayList = _fetchStarsRepository.listStars;*/
        break;
      case 'Current Place-name':
        await _fetchPlaceRepository.fetchPlaces(keyCountry);
        currentDisplayList = _fetchPlaceRepository.listPlaces;
        break;
      case 'Sea-name':
        await _fetchSeasRepository.fetchSeas();
        currentDisplayList = _fetchSeasRepository.listSeas;
        break;
      case 'Country-name at that time':
        await _fetchCattRepository.fetchCattsInDetail();
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Place-name at that time':
        await _fetchPattRepository.fetchPattsInDetail();
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
    }
    notifyListeners();
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Stars':
        newStar = text;
        break;
      case 'Current Place-name':
        newPlace = text;
        break;
      case 'Sea-name':
        newSea = text;
        break;
      case 'Country-name at that time':
        newPaysatt = text;
        break;
      case 'Place-name at that time':
        newPlaceatt = text;
        break;
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      //country must not be added
      case 'Stars':
        await _fetchStarsRepository.addDetailStarsAndFetch('stars_involved', newStar);
        currentDisplayList = _fetchStarsRepository.listDetailStars;
/*        await _fetchStarsRepository.addStarsAndFetch(newStar);
        currentDisplayList = _fetchStarsRepository.listStars;*/
        break;

        //keyCountryが取得されているので、国名付きで保存される。
      case 'Current Place-name':
        await _fetchPlaceRepository.addPlacesAndFetch(newPlace, keyCountry);
        currentDisplayList = _fetchPlaceRepository.listPlaces;
        break;
      case 'Sea-name':
        await _fetchSeasRepository.addSeasAndFetch(newSea);
        currentDisplayList = _fetchSeasRepository.listSeas;
        break;
      case 'Country-name at that time':
        await _fetchCattRepository.addDetailCattsAndFetch('countryatts', newPaysatt);
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Place-name at that time':
        await _fetchPattRepository.addDetailPattsAndFetch('placeatts', newPlaceatt);
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
    }
    notifyListeners();
  }

  void updateLocationPrecise(String newLocationPrecise) {
    locationPrecise = newLocationPrecise;
    notifyListeners();
  }

  void updateChosenCatt(String newChosenCatt) {
    chosenCatt = newChosenCatt;
    notifyListeners();
  }

  void updateChosenPatt(String newChosenPatt) {
    chosenPatt = newChosenPatt;
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Stars':
        return buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Detail).mot,
            //choiceSIKey: (item as Stars).star,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
              print(choiceKey);
            });
      case 'Current Place-name':
        return buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Places).place,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
              print(choiceKey);
            });
      case 'Sea-name':
        return buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Seas).sea,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
              print(choiceKey);
            });
      case 'Country-name at that time':
        return buildChoiceFormat(
            choiceList: _filtersCountryatts,
            choiceKey: (item as Detail).mot,
            choiceId: item.id!,
            onChoiceSelected: (choiceKey, choiceId) {
              chosenCatt = choiceKey;
              chosenCattId = choiceId;
              updateChosenCatt(choiceKey);
              print(choiceKey);
            });
      case 'Place-name at that time':
        return buildChoiceFormat(
            choiceList: _filtersPlaceatts,
            choiceKey: (item as Detail).mot,
            choiceId: item.id!,
            onChoiceSelected: (choiceKey, choiceId) {
              chosenPatt = choiceKey;
              chosenPattId = choiceId;
              updateChosenPatt(choiceKey);
              print(choiceKey);
            });
      default:
        return const SizedBox.shrink();
    }
  }

  void temporarilySaveData(
      Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    double ns = (math.pi * newLatitude) / 180;
    double ew = (math.pi * newLongitude) / 180;
    cx = math.cos(ns) * math.cos(ew) * confirm.coefficient;
    cy = math.sin(ns) * confirm.coefficient;
    cz = math.cos(ns) * math.sin(ew) * confirm.coefficient;

    ///選択されたLocationPrecise
    confirm.selectedPrecise = locationPrecise;

    ///選択されたCatt
    if (chosenCatt != '') {
      confirm.selectedCatt = chosenCatt;
      confirm.selectedCattId = chosenCattId;
    }

    ///選択されたPatt
    if (chosenPatt != '') {
      confirm.selectedPatt = chosenPatt;
      confirm.selectedPattId = chosenPattId;
    }

    confirm.latitude = newLatitude;
    confirm.longitude = newLongitude;
    confirm.x = double.parse((cx).toStringAsFixed(4));
    confirm.y = double.parse((cy).toStringAsFixed(4));
    confirm.z = double.parse((cz).toStringAsFixed(4));
    print('save where');
  }
}
