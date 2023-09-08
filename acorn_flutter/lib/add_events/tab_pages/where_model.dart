import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class WhereModel extends ChangeNotifier {

  var newPlace = '';
  var newSea = '';
  var newPaysatt = '';
  var newCountryatt = '';
  var newPlaceatt = '';

/*  var newLatitude = 0.0;
  var newLongitude = 0.0;
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;*/

  ///Place
  ///DBから取得したList
  List<Places> listPlaces = [];

  ///Chipに並べるList
  //List<Map<String, String>> displayListPlaces = [];

/*  ///表示されるplace
  final List<String> _filtersPlaces = <String>[];
  final List<int> _filtersPlacesId = <int>[];*/

  ///Seas
  List<Seas> listSeas = [];
  //List<Map<String, String>> displayListSeas = [];
/*  final List<String> _filtersSeas = <String>[];
  final List<int> _filtersSeasId = <int>[];*/

  ///当時の国名
  List<Countryatts> listCountryatts = [];
  //List<Map<String, String>> displayListCountryatts = [];
/*  final List<String> _filtersCountryatts = <String>[];
  final List<int> _fltersCountryattsId = <int>[];*/

  ///当時の地名
  List<Placeatts> listPlaceatts = [];
  List<Map<String, String>> displayListPlaceatts = [];
/*  final List<String> _filtersPlaceatts = <String>[];
  final List<int> _filtersPlaceattsId = <int>[];*/

  //List<dynamic> currentDisplayList = [];
  //String? isSelectedOption = 'Place';

  ///DBからPlaceを取得
  fetchPlaces() async {
    try {
      listPlaces = await client.places.getPlaces();
      print('getPlaces');
      //listPlaces.cast<Map<String, String>>();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //int? placeId;

  ///DBに新規placeを挿入・再取得･再描画
  addPlacesAndFetch(String newPlace) async {
    var places = Places(place: newPlace);
    /*placeId = */await client.places.addPlaces(places);
    await fetchPlaces();
    notifyListeners();
  }

  ///DBからSeasを取得
  fetchSeas() async {
    try {
      listSeas = await client.seas.getSeas();
      print('get Seas');
      //listSeas.cast<Map<String, String>>();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //int? seasId;

  ///DBに新規seaを挿入・再取得･再描画
  addSeasAndFetch(String newSea) async {
    var seas = Seas(sea: newSea);
    /*seasId = */await client.seas.addSeas(seas);
    fetchSeas();
    notifyListeners();
  }

  ///CATT
  ///DBからCATTを取得
  Future<void> fetchCountryATT() async {
    try {
      listCountryatts = await client.countryatts.getCountryATTs();
      print('getCatt');
      //listCountryatts.cast<Map<String, String>>();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //int? countryattId;


  ///DBに新規CATTを挿入・再取得･再描画
  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCountryatt);
    /*countryattId = */await client.countryatts.addCountryATTs(catts);
    fetchCountryATT();
    notifyListeners();
  }

  ///DBからPATTを取得
  Future<void> fetchPlaceATT() async {
    try {
      listPlaceatts = await client.placeatts.getPlaceATTs();
      //displayListPlaceatts = listPlaceatts.cast<Map<String, String>>();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //int? placeattId;

  ///DBに新規PATTを挿入・再取得･再描画
  addPlaceATTandFetch() async {
    var patts = Placeatts(placeatt: newPlaceatt);
    /*placeattId = */await client.placeatts.addPlaceATTs(patts);
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
  String _chosenPlace = '';
  int _chosenPlaceId = 0;
  String get chosenPlace => _chosenPlace;
  int get chosenPlaceId => _chosenPlaceId;

  set chosenPlace(String choice) {
    _chosenPlace = choice;
    print(chosenPlace);
    notifyListeners();
  }

  set chosenPlaceId(int value) {
    _chosenPlaceId = value;
    print(chosenPlaceId);
    notifyListeners();
  }

  String _chosenSea = '';
  int _chosenSeaId = 0;
  String get chosenSea => _chosenSea;
  int get chosenSeaId => _chosenSeaId;

  set chosenSea(String choice) {
    _chosenSea = choice;
    notifyListeners();
  }

  set chosenSeaId(int value) {
    _chosenSeaId = value;
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

/*  final clearWhereKey = GlobalKey<FormState>();
  void resetWhereForm() {
    clearWhereKey.currentState?.reset();
    print('text clear');
    notifyListeners();
  }*/






/*  List<String> selectedChoice = [];
  void selectChoice(String choice) {
    selectedChoice.clear();
    selectedChoice.add(choice);
    notifyListeners();
  }

  void removeChoice(String choice) {
    selectedChoice.remove(choice);
    notifyListeners();
  }*/
}