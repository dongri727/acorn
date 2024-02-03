import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../../confirm/confirm.dart';
import 'package:acorn_flutter/serverpod_client.dart';

class WhereModel extends ChangeNotifier {

    final Confirm _confirm;

  var newStar = '';
  var newPlace = '';
  var newSea = '';
  var newPaysatt = '';
  var newCountryatt = '';
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
  String keyCountry = '';

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

  String? isSelectedOption = '';

  List<String> options = [
    'Stars',
    'Current Place-name',
    'Sea-name',
    'Country-name at that time',
    'Place-name at that time'
  ];

  List<String> ns = [
    'N',
    'S',
  ];

  List<String> ew = [
    'E',
    'W',
  ];

  final List<String> _filtersLocationPrecise = <String>[];

  String locationPrecise = '';

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

  ///DBに新規starを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addStarsAndFetch(String newStar) async {
    try {
      var stars = Stars(star: newStar);
      listStars = await client.stars.addAndReturnStars(stars);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
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

  //todo 複数語を同時に挿入できるようにする
  addPlacesAndFetch(String newPlace, String keyCountry) async {
    try {
      var places = Places(place: newPlace, country: keyCountry);
      listPlaces = await client.places.addAndReturnPlacesWithKeyCountry(places);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
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
  //todo 複数語を同時に挿入できるようにする
  addSeasAndFetch(String newSea) async {
    try {
      var seas = Seas(sea: newSea);
      listSeas = await client.seas.addAndReturnSeas(seas);
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
      print('getCatts');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規CATTを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addCountryATTandFetch(String newCountryatt) async {
    try {
      var catts = Countryatts(countryatt: newCountryatt);
      listCountryatts = await client.countryatts.addAndReturnCatts(catts);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
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

/*  ///DBに新規PATTを挿入・再取得･再描画
  addPlaceATTandFetch() async {
    try {
      listPlaceatts = await client.placeatts.addAndGetPatts(newPlaceatt);
      print('getNewPatts');
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }*/

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