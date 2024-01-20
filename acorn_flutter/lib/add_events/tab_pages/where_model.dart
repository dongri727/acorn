import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../../confirm/confirm.dart';
import 'package:acorn_flutter/serverpod_client.dart';

/*var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();*/

class WhereModel extends ChangeNotifier {

  String locationPrecise = '';

  // todo なぜこれが必要か考える
  var newCountryatt = '';
  var newPlaceatt = '';

  ///Stars gotten from DB
  List<Stars> listStars = [];

  ///Place gotten from DB
  List<Places> listPlaces = [];

  ///Seas gotten from DB
  List<Seas> listSeas = [];

  ///当時の国名
  List<Countryatts> listCountryatts = [];
  List<Map<String, String>> displayListCountryatts = [];

  ///当時の地名
  List<Placeatts> listPlaceatts = [];
  List<Map<String, String>> displayListPlaceatts = [];

  ///gets stars from DB
  fetchStars() async {
    try {
      listStars = await client.stars.getStars();
      print('getStars');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///adds and gets again stars, and rebuilds listStars
  addStarsAndFetch(String newStar) async {
    var stars = Stars(star: newStar);
    await client.stars.addStars(stars);
    await fetchStars();
    notifyListeners();
  }

  ///DBからPlaceを取得
  fetchPlaces(keyCountry) async {
    try {
      listPlaces = await client.places.getPlaces(keyword: keyCountry);
      print('getPlaces with $keyCountry');
      print(listPlaces);
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規placeを挿入・再取得･再描画
  addPlacesAndFetch(String newPlace, keyCountry) async {
    var places = Places(place: newPlace, country: keyCountry);
    await client.places.addPlaces(places);
    await fetchPlaces(keyCountry);
    notifyListeners();
    print('save place with $keyCountry');
  }

  ///DBからSeasを取得
  fetchSeas() async {
    try {
      listSeas = await client.seas.getSeas();
      print('getSeas');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規seaを挿入・再取得･再描画
  addSeasAndFetch(String newSea) async {
    var seas = Seas(sea: newSea);
    await client.seas.addSeas(seas);
    fetchSeas();
    notifyListeners();
  }

  ///CATT
  ///DBからCATTを取得
  Future<void> fetchCountryATT() async {
    try {
      listCountryatts = await client.countryatts.getCountryATTs();
      print('getCatt');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  int? countryattId;
  ///DBに新規CATTを挿入・再取得･再描画
  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCountryatt);
    countryattId = await client.countryatts.addCountryATTs(catts);
    fetchCountryATT();
    notifyListeners();
  }

  ///DBからPATTを取得
  Future<void> fetchPlaceATT() async {
    try {
      listPlaceatts = await client.placeatts.getPlaceATTs();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  int? placeattId;
  ///DBに新規PATTを挿入・再取得･再描画
  addPlaceATTandFetch() async {
    var patts = Placeatts(placeatt: newPlaceatt);
    placeattId = await client.placeatts.addPlaceATTs(patts);
    fetchPlaceATT();
    notifyListeners();
  }

  ///RadioButton
  String _selectedOption = '';
  String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }

  ///仮表示
  String _chosenStar = '';
  //int _chosenStarId = 0;
  String get chosenStar => _chosenStar;
  //int get chosenStarId => _chosenStarId;

  set chosenStar(String choice){
    _chosenStar = choice;
    print(chosenStar);
    notifyListeners();
  }
/*  set chosenStarId(int value){
    _chosenStarId = value;
    print(chosenStarId);
    notifyListeners();
  }*/

  String _chosenPlace = '';
  //int _chosenPlaceId = 0;
  String get chosenPlace => _chosenPlace;
  //int get chosenPlaceId => _chosenPlaceId;

  set chosenPlace(String choice) {
    _chosenPlace = choice;
    print(chosenPlace);
    notifyListeners();
  }

/*  set chosenPlaceId(int value) {
    _chosenPlaceId = value;
    print(chosenPlaceId);
    notifyListeners();
  }*/

  String _chosenSea = '';
  //int _chosenSeaId = 0;
  String get chosenSea => _chosenSea;
  //int get chosenSeaId => _chosenSeaId;

  set chosenSea(String choice) {
    _chosenSea = choice;
    notifyListeners();
  }

/*  set chosenSeaId(int value) {
    _chosenSeaId = value;
    notifyListeners();
  }*/

  String _chosenLocationPrecise = '';
  //int _chosenLocationPreciseId = 0;
  String get chosenLocationPrecise => _chosenLocationPrecise;
  //int get chosenLocationPreciseId => _chosenLocationPreciseId;

  List<dynamic> currentDisplayList = [];

  set chosenLocationPrecise(String locationPrecise) {
    _chosenLocationPrecise = "";
    notifyListeners();
  }

/*  set chosenLocationPreciseId(int value) {
    _chosenLocationPreciseId = value;
    notifyListeners();
  }*/

  void updateLocationPrecise(String newLocationPrecise) {
    locationPrecise = newLocationPrecise;
    notifyListeners();
  }

  String _chosenCatt = '';
  int _chosenCattId = 0;
  String get chosenCatt => _chosenCatt;
  int get chosenCattId => _chosenCattId;

  set chosenCatt(String choice) {
    _chosenCatt = choice;
    notifyListeners();
  }

  set chosenCattId(int value) {
    _chosenCattId = value;
    notifyListeners();
  }

  String _chosenPatt = '';
  int _chosenPattId = 0;
  String get chosenPatt => _chosenPatt;
  int get chosenPattId => _chosenPattId;

  set chosenPatt(String choice) {
    _chosenPatt = choice;
    print(_chosenPatt);
    notifyListeners();
  }
  set chosenPattId(int value) {
    _chosenPattId = value;
    print(chosenPattId);
    notifyListeners();
  }
}