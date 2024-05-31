import 'package:acorn_flutter/fetch/fetch_place.dart';
import 'package:acorn_flutter/fetch/fetch_seas.dart';
import 'package:acorn_flutter/fetch/fetch_stars.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import '../../lists/where_options_list.dart';
//import 'dart:math' as math;
import '../../utils/build_chips.dart';
import '../serverpod_client.dart';

class AddPlaceModel extends ChangeNotifier {

  late final FetchStarsRepository _fetchStarsRepository;
  late final FetchPlaceRepository _fetchPlaceRepository;
  late final FetchSeasRepository _fetchSeasRepository;

  final String keyCountry;

  AddPlaceModel({required this.keyCountry}){
    _fetchStarsRepository = FetchStarsRepository();
    _fetchPlaceRepository = FetchPlaceRepository();
    _fetchSeasRepository = FetchSeasRepository();
  }


  var newStar = '';
  var newPlace = '';
  var newSea = '';

  var newLatitude = 0.0;
  var newLongitude = 0.0;
  double cx = 0.0;
  double cy = 0.0;
  double cz = 0.0;

  List<dynamic> currentDisplayList = [];

  String? selectedOption = '';

  List<String> options = addPlaceOptions;

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

  String chosenLocationPrecise = '';

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Stars':
        await _fetchStarsRepository.fetchStarsInDetail();
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;
      case 'Current Place-name':
        await _fetchPlaceRepository.fetchPlaces(keyCountry);
        currentDisplayList = _fetchPlaceRepository.listPlaces;
        break;
      case 'Sea-name':
        await _fetchSeasRepository.fetchSeas();
        currentDisplayList = _fetchSeasRepository.listSeas;
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
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
    //country must not be added
      case 'Stars':
        await _fetchStarsRepository.addDetailStarsAndFetch('stars_involved', newStar);
        currentDisplayList = _fetchStarsRepository.listDetailStars;
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
    }
    notifyListeners();
  }

  void updateLocationPrecise(String newLocationPrecise) {
    locationPrecise = newLocationPrecise;
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Stars':
        return buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Detail).mot,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
            });
      case 'Current Place-name':
        return buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Places).place,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
            });
      case 'Sea-name':
        return buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Seas).sea,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
            });
      default:
        return const SizedBox.shrink();
    }
  }

  Principal? newData;
  Future<void> savePrecise(int principalId, String locationPrecise) async {
    try {
      var updatedPrincipalData = await client.principal.updatePrincipalAndReturn(principalId, locationPrecise);
      newData = updatedPrincipalData;
      print(newData);
      notifyListeners();
    } catch (e) {
      print('Error updating precise: $e');
    }
  }
}

