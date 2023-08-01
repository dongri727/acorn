import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/formats.dart';

import 'dart:math' as math;

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class WherePage extends StatefulWidget {
  const WherePage({Key? key}) : super(key: key);

  @override
  State<WherePage> createState() => _WherePageState();
}

class _WherePageState extends State<WherePage> {
  var newPlace = '';
  //var newPlaceId = 0;

  var newLatitude = 0.0;
  var newLongitude = 0.0;

  var newPaysatt = '';
  //var newPaysattId = 0;

  var newPlaceatt = '';
  //var newPlaceattId = 0;

  var newCountryatt = '';
  //var newCountryattId = 0;

  double x = 0.0;
  double y = 0.0;
  double z = 0.0;

  ///DBから取得したList
  List<Places> listPlaces = [];

  ///Chipに並べるList
  List<Map<String, String>> displayListPlaces = [];

  ///選択された項目
  final List<String> _filtersPlaces = <String>[];
  final List<int> _filtersPlacesId = <int>[];

  ///当時の国名
  List<Countryatts> listCountryatts = [];
  List<Map<String, String>> displayListCountryatts = [];
  final List<String> _filtersCountryatts = <String>[];
  final List<int> _fltersCountryattsId = <int>[];

  ///当時の地名
  List<Placeatts> listPlaceatts = [];
  List<Map<String, String>> displayListPlaceatts = [];
  final List<String> _filtersPlaceatts = <String>[];
  final List<int> _filtersPlaceattsId = <int>[];

  ///DBからPlaceを取得
  Future<void> fetchPlaces() async {
    try {
      listPlaces = await client.places.getPlaces();
      setState(() {
        displayListPlaces = listPlaces.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  late int placeId;

  ///DBに新規placeを挿入・再取得･再描画
  addPlacesAndFetch() async {
    var places = Places(place: newPlace);
    placeId = await client.places.addPlaces(places);
    listPlaces = await client.places.getPlaces();
    setState(() {});
  }

  Future<void> fetchCountryATT() async {
    try {
      listCountryatts = await client.countryatts.getCountryATTs();
      setState(() {
        displayListCountryatts = listCountryatts.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  late int countryattId;

  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCountryatt);
    countryattId = await client.countryatts.addCountryATTs(catts);
    print(countryattId);
    debugPrint("add a CountryATT");
    listCountryatts = await client.countryatts.getCountryATTs();
    setState(() {});
  }

  Future<void> fetchPlaceATT() async {
    try {
      listPlaceatts = await client.placeatts.getPlaceATTs();
      setState(() {
        displayListPlaceatts = listPlaceatts.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  late int placeattId;

  addPlaceATTandFetch() async {
    var patts = Placeatts(placeatt: newPlaceatt);
    placeattId = await client.placeatts.addPlaceATTs(patts);
    listPlaceatts = await client.placeatts.getPlaceATTs();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);

    final placeKey = GlobalKey<FormFieldState>();
    final cattKey = GlobalKey<FormFieldState>();
    final pattKey = GlobalKey<FormFieldState>();


    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/both.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ButtonFormat(
                          onPressed: fetchPlaces,
                          label: 'Show and Select Current Place',
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          spacing: 5.0,
                          children: listPlaces.map((places){
                            bool isSelectedP = _filtersPlaces.contains(places.place);
                            return ChoiceFormat(
                                choiceKey: places.place,
                              choiceValue: places.id,
                              isSelected: isSelectedP,
                              onSelectionChanged: (key, value) {
                                  setState(() {
                                    if (isSelectedP) {
                                      _filtersPlaces.remove(key);
                                      _filtersPlacesId.remove(value);
                                    } else {
                                      _filtersPlaces.clear();
                                      _filtersPlacesId.clear();
                                      _filtersPlaces.add(key);
                                      _filtersPlacesId.add(value);
                                    }
                                  });
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TffFormat(
                          key: placeKey,
                          hintText: 'a New Place You Want',
                          onChanged: (text) {
                            newPlace = text;
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        ),
                      ),
                      ButtonFormat(
                        onPressed: () {
                          addPlacesAndFetch();
                          placeKey.currentState!.reset();
                          },
                        label: 'Add a new Place',
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [

                      ///CountryATT
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ButtonFormat(
                          onPressed: fetchCountryATT,
                          label: 'Show and Select Country at that time',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          spacing: 5.0,
                          children: listCountryatts.map((countryatts){
                            bool isSelectedCatt= _filtersCountryatts.contains(countryatts.countryatt);
                            return ChoiceFormat(
                                choiceKey: countryatts.countryatt,
                              choiceValue: countryatts.id,
                              isSelected: isSelectedCatt,
                              onSelectionChanged: (key, value) {
                                  setState(() {
                                    if (isSelectedCatt) {
                                      _filtersCountryatts.remove(key);
                                      _fltersCountryattsId.remove(value);
                                    } else {
                                      _filtersCountryatts.clear();
                                      _fltersCountryattsId.clear();
                                      _filtersCountryatts.add(key);
                                      _fltersCountryattsId.add(value);
                                    }
                                  });
                            }
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TffFormat(
                          key: cattKey,
                          hintText: 'a New Country at that time You Want',
                          onChanged: (text) {
                            newCountryatt = text;
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        ),
                      ),
                      ButtonFormat(
                        onPressed: () {
                          addCountryATTandFetch();
                          cattKey.currentState!.reset();
                          },
                        label: 'Add a New Country at that time',
                      ),
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ///PlaceATT
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ButtonFormat(
                        onPressed: fetchPlaceATT,
                        label: 'Show and Select Place at that time',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        spacing: 5.0,
                        children: listPlaceatts.map((placeatts){
                          bool isSelectedPatt = _filtersPlaceatts.contains(placeatts.placeatt);
                          return ChoiceFormat(
                              choiceKey: placeatts.placeatt,
                            choiceValue: placeatts.id,
                            isSelected: isSelectedPatt,
                            onSelectionChanged: (key, value) {
                                setState(() {
                                  if (isSelectedPatt) {
                                    _filtersPlaceatts.remove(key);
                                    _fltersCountryattsId.remove(value);
                                  } else {
                                    _filtersPlaceatts.clear();
                                    _filtersPlaceattsId.clear();
                                    _filtersPlaceatts.add(key);
                                    _filtersPlaceattsId.add(value);
                                  }
                                });
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TffFormat(
                        key: pattKey,
                        hintText: 'a New Place at that time You Want',
                        onChanged: (text) {
                          newPlaceatt = text;
                        },
                        tffColor1: Colors.black54,
                        tffColor2: const Color(0x99e6e6fa),
                      ),
                    ),
                    ButtonFormat(
                      onPressed: () {
                        addPlaceATTandFetch();
                        pattKey.currentState!.reset();
                        },
                      label:'Add a New Place at that time',
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 200, 20, 20),
                        child: TffFormat(
                          hintText: "Latitude",
                          onChanged: (value) {
                            newLatitude = double.tryParse(value)!;
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TffFormat(
                          hintText: "Longitude",
                          onChanged: (value) {
                            newLongitude = double.tryParse(value)!;
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            double sn = (math.pi * newLatitude) / 180;
            double ew = (math.pi * newLongitude) / 180;
            x = math.cos(sn) * math.cos(ew);
            y = math.sin(sn);
            z = math.cos(sn) * math.sin(ew);
          });

          showDialog<void>(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text('Data has been temporarily stored.'),
                  content: const Text(
                      'They are not uploaded yet. please continue to fill in the other fields.'),
                  actions: <Widget>[
                    GestureDetector(
                      child: const Text('OK'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });

          ///追加されたplace
          confirm.place = newPlace;
          confirm.placeId = placeId;
          print("add a new place $placeId");

          ///選択されたplace
          confirm.selectedPlace = _filtersPlaces;
          confirm.selectedPlaceId = _filtersPlacesId;
          print("kept Selected Place $_filtersPlacesId");

          ///追加されたCatt
          confirm.countryatt = newCountryatt;
          confirm.countryattId = countryattId;
          print("add a new Catt $countryattId");

          ///選択されたCatt
          confirm.selectedCatt = _filtersCountryatts;
          confirm.selectedCattId = _fltersCountryattsId;
          print("kept selected Catt $_fltersCountryattsId");

          ///追加されたPatt
          confirm.placeatt = newPlaceatt;
          confirm.placeattId = placeattId;
          print("add a new Patt $placeattId");

          ///選択されたPatt
          confirm.selectedPatt = _filtersPlaceatts;
          confirm.selectedPattId = _filtersPlaceattsId;
          print("kept selected Patt $_filtersPlaceattsId");



          confirm.latitude = newLatitude;
          confirm.longitude = newLongitude;
          confirm.x = x;
          confirm.y = y;
          confirm.z = z;
        },
        label: const Text('Temporarily Save'),
      ),
    );
  }
}
