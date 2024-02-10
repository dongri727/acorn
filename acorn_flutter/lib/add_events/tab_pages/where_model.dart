import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:provider/provider.dart';
import '../../confirm/confirm.dart';
import 'package:acorn_flutter/serverpod_client.dart';

import '../../lists/where_options_list.dart';
import 'dart:math' as math;

import '../../utils/chips_format.dart';

class WhereModel extends ChangeNotifier {
  final String keyCountry;
  WhereModel({required this.keyCountry});
  
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

  ///Stars
  List<Stars> listStars = [];

  ///Place
  List<Places> listPlaces = [];

  ///Seas
  List<Seas> listSeas = [];

  List<Countryatts> listCountryatts = [];
  List<Map<String, String>> displayListCountryatts = [];
  final List<String> _filtersCountryatts = <String>[];
  //final List<int> _fltersCountryattsId = <int>[];

  ///当時の地名
  List<Placeatts> listPlaceatts = [];
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

  ///gets stars from DB
  fetchStars() async {
    try {
      listStars = await client.stars.getStars();
      currentDisplayList = listStars;
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規starを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addStarsAndFetch(String newStar) async {
    try {
      var stars = Stars(star: newStar);
      listStars = await client.stars.addAndReturnStars(stars);
      currentDisplayList = listStars;
      notifyListeners();
      print('getStars');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBからPlaceを取得
  fetchPlaces(keyCountry) async {
    try {
      listPlaces = await client.places.getPlaces(keyword: keyCountry);
      currentDisplayList = listPlaces;
      print('getPlaces with $keyCountry');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  addPlacesAndFetch(String newPlace, String keyCountry) async {
    try {
      var places = Places(place: newPlace, country: keyCountry);
      var keyword = keyCountry;
      listPlaces =
          await client.places.addAndReturnPlacesWithKeyCountry(places, keyword);
      currentDisplayList = listPlaces;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBからSeasを取得
  fetchSeas() async {
    try {
      listSeas = await client.seas.getSeas();
      currentDisplayList = listSeas;
      print('getSeas');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規seaを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addSeasAndFetch(String newSea) async {
    try {
      var seas = Seas(sea: newSea);
      listSeas = await client.seas.addAndReturnSeas(seas);
      currentDisplayList = listSeas;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///CATT
  ///DBからCATTを取得
  Future<void> fetchCountryATT() async {
    try {
      listCountryatts = await client.countryatts.getCountryATTs();
      currentDisplayList = listCountryatts;
      print('getCatts');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規CATTを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addCountryATTandFetch(String newPaysatt) async {
    try {
      var catts = Countryatts(countryatt: newPaysatt);
      listCountryatts = await client.countryatts.addAndReturnCatts(catts);
      currentDisplayList = listCountryatts;
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBからPATTを取得
  Future<void> fetchPlaceATT() async {
    try {
      listPlaceatts = await client.placeatts.getPlaceATTs();
      currentDisplayList = listPlaceatts;
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規PATTを挿入・再取得･再描画
  addPlaceATTandFetch(String newPlaceatt) async {
    try {
      var patts = Placeatts(placeatt: newPlaceatt);
      listPlaceatts = await client.placeatts.addAndGetPatts(patts);
      currentDisplayList = listPlaceatts;
      print('getNewPatts');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Stars':
        await fetchStars();
        break;
      case 'Current Place-name':
        await fetchPlaces(keyCountry);
        break;
      case 'Sea-name':
        await fetchSeas();
        break;
      case 'Country-name at that time':
        await fetchCountryATT();
        break;
      case 'Place-name at that time':
        await fetchPlaceATT();
        break;
    }
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Stars':
        newStar = text;
        notifyListeners();
        break;
      case 'Current Place-name':
        newPlace = text;
        notifyListeners();
        break;
      case 'Sea-name':
        newSea = text;
        notifyListeners();
        break;
      case 'Country-name at that time':
        newPaysatt = text;
        notifyListeners();
        break;
      case 'Place-name at that time':
        newPlaceatt = text;
        notifyListeners();
        break;
    }
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      //country must not be added
      case 'Stars':
        await addStarsAndFetch(newStar);
        break;
      case 'Current Place-name':
        await addPlacesAndFetch(newPlace, keyCountry);
        break;
      case 'Sea-name':
        await addSeasAndFetch(newSea);
        break;
      case 'Country-name at that time':
        await addCountryATTandFetch(newPaysatt);
        break;
      case 'Place-name at that time':
        await addPlaceATTandFetch(newPlaceatt);
        break;
    }
  }

  Widget buildItemWidget(dynamic item) {
    String itemType = _getItemType(item);
    switch (itemType) {
      case 'Stars':
        return _buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Stars).star,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
              print(choiceKey);
            });
      case 'Current Place-name':
        return _buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Places).place,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
              print(choiceKey);
            });
      case 'Sea-name':
        return _buildChoiceSIFormat(
            choiceSIList: _filtersLocationPrecise,
            choiceSIKey: (item as Seas).sea,
            onChoiceSISelected: (choiceKey) {
              chosenLocationPrecise = choiceKey;
              updateLocationPrecise(choiceKey);
              print(choiceKey);
            });
      case 'Country-name at that time':
        return _buildChoiceFormat(
            choiceList: _filtersCountryatts,
            choiceKey: (item as Countryatts).countryatt,
            choiceId: item.id!,
            onChoiceSelected: (choiceKey, choiceId) {
              chosenCatt = choiceKey;
              chosenCattId = choiceId;
              updateChosenCatt(choiceKey);
              print(choiceKey);
            });
      case 'Place-name at that time':
        return _buildChoiceFormat(
            choiceList: _filtersPlaceatts,
            choiceKey: (item as Placeatts).placeatt,
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

  String _getItemType(dynamic item) {
    if (item is Stars) return 'Stars';
    if (item is Places) return 'Current Place-name';
    if (item is Seas) return 'Sea-name';
    if (item is Countryatts) return 'Country-name at that time';
    if (item is Placeatts) return 'Place-name at that time';
    return 'Unknown';
  }

  Widget _buildChoiceSIFormat({
    required List<String> choiceSIList,
    required String choiceSIKey,
    required OnChoiceSISelected onChoiceSISelected,
  }) {
    return ChoiceSIFormat(
        choiceSIList: choiceSIList,
        choiceSIKey: choiceSIKey,
        onChoiceSISelected: onChoiceSISelected);
  }

  Widget _buildChoiceFormat({
    required List<String> choiceList,
    required String choiceKey,
    required int choiceId,
    required OnChoiceSelected onChoiceSelected,
  }) {
    return ChoiceFormat(
        choiceList: choiceList,
        choiceKey: choiceKey,
        choiceId: choiceId,
        onChoiceSelected: onChoiceSelected);
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

/*   ///RadioButton
  String selectedOption = ''; */
/*   String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  } */

  ///仮表示
  //String _chosenStar = '';
  //int _chosenStarId = 0;
  //String get chosenStar => _chosenStar;
  //int get chosenStarId => _chosenStarId;

/*   set chosenStar(String choice) {
    _chosenStar = choice;
    print(chosenStar);
    notifyListeners();
  } */
/*  set chosenStarId(int value){
    _chosenStarId = value;
    print(chosenStarId);
    notifyListeners();
  }*/

/*   String _chosenPlace = '';
  //int _chosenPlaceId = 0;
  String get chosenPlace => _chosenPlace;
  //int get chosenPlaceId => _chosenPlaceId;

  set chosenPlace(String choice) {
    _chosenPlace = choice;
    print(chosenPlace);
    notifyListeners();
  } */

/*  set chosenPlaceId(int value) {
    _chosenPlaceId = value;
    print(chosenPlaceId);
    notifyListeners();
  }*/

/*   String _chosenSea = '';
  //int _chosenSeaId = 0;
  String get chosenSea => _chosenSea;
  //int get chosenSeaId => _chosenSeaId;

  set chosenSea(String choice) {
    _chosenSea = choice;
    notifyListeners();
  } */

/*  set chosenSeaId(int value) {
    _chosenSeaId = value;
    notifyListeners();
  }*/

  String chosenLocationPrecise = '';
  //int _chosenLocationPreciseId = 0;
  //String get chosenLocationPrecise => _chosenLocationPrecise;
  //int get chosenLocationPreciseId => _chosenLocationPreciseId;

/*  set chosenLocationPrecise(String locationPrecise) {
    _chosenLocationPrecise = "";
    notifyListeners();
  }*/

/*  set chosenLocationPreciseId(int value) {
    _chosenLocationPreciseId = value;
    notifyListeners();
  }*/

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

/*   String get chosenCatt => _chosenCatt;
  int get chosenCattId => _chosenCattId; */

/*   set chosenCatt(String choice) {
    _chosenCatt = choice;
    notifyListeners();
  }
 */
/*   set chosenCattId(int value) {
    _chosenCattId = value;
    notifyListeners();
  } */

  String chosenPatt = '';
  int chosenPattId = 0;
/*   String get chosenPatt => _chosenPatt;
  int get chosenPattId => _chosenPattId;
 */
/*   set chosenPatt(String choice) {
    _chosenPatt = choice;
    print(_chosenPatt);
    notifyListeners();
  }
 */
/*   set chosenPattId(int value) {
    _chosenPattId = value;
    print(chosenPattId);
    notifyListeners();
  } */
}
