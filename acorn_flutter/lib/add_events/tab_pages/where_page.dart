import 'dart:ui';

import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/blank_text_format.dart';
import '../../utils/tff_format.dart';

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
  var newSea = '';
  var newPaysatt = '';
  var newCountryatt = '';
  var newPlaceatt = '';

  var newLatitude = 0.0;
  var newLongitude = 0.0;
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;

  ///選択された項目（唯一）
  String _chosenPlace = '';
  int? _chosenPlaceId;
  String _chosenSea = '';
  String _chosenCatt = '';
  String _chosenPatt = '';

  ///Place
  ///DBから取得したList
  List<Places> listPlaces = [];

  ///Chipに並べるList
  List<Map<String, String>> displayListPlaces = [];

  ///表示されるplace
  final List<String> _filtersPlaces = <String>[];
  final List<int> _filtersPlacesId = <int>[];

  ///Seas
  List<Seas> listSeas = [];
  List<Map<String, String>> displayListSeas = [];
  final List<String> _filtersSeas = <String>[];
  final List<int> _filtersSeasId = <int>[];

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

  List<dynamic> currentDisplayList = [];

  String? isSelectedOption = 'Place';
  String? selectedChoiceKey;


  /// Choiceが選択されたときのコールバック関数
  void onChoiceSelectionChanged(String key, dynamic value) {
    setState(() {
      selectedChoiceKey = key;
    });
  }

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

  int? placeId;

  ///DBに新規placeを挿入・再取得･再描画
  addPlacesAndFetch() async {
    var places = Places(place: newPlace);
    placeId = await client.places.addPlaces(places);
    listPlaces = await client.places.getPlaces();
    setState(() {});
  }

  ///DBからSeasを取得
  Future<void> fetchSeas() async {
    try {
      listSeas = await client.seas.getSeas();
      setState(() {
        displayListSeas = listSeas.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  int? seasId;

  ///DBに新規seaを挿入・再取得･再描画
  addSeasAndFetch() async {
    var seas = Seas(sea: newSea);
    seasId = await client.seas.addSeas(seas);
    listSeas = await client.seas.getSeas();
    setState(() {});
  }

  ///CATT
  ///DBからCATTを取得
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

  int? countryattId;


  ///DBに新規CATTを挿入・再取得･再描画
  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCountryatt);
    countryattId = await client.countryatts.addCountryATTs(catts);
    print(countryattId);
    debugPrint("add a CountryATT");
    listCountryatts = await client.countryatts.getCountryATTs();
    setState(() {});
  }

  ///DBからPATTを取得
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

  int? placeattId;

  ///DBに新規PATTを挿入・再取得･再描画
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
    final seaKey = GlobalKey<FormFieldState>();
    final cattKey = GlobalKey<FormFieldState>();
    final pattKey = GlobalKey<FormFieldState>();


    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/both.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                      child: RadioButtonFormat(
                          options: const ['Current Place-name', 'Sea-name', 'Country-name at that time', 'Place-name at that time'],
                          initialOption: 'Places',
                          onChanged: (String? value) {
                            setState(() {
                              isSelectedOption = value!;
                            });
                            print("selected: $value");
                          }),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                      child: Column(
                        children: [
                          BlankTextFormat(text: _chosenPlace),
                          BlankTextFormat(text: _chosenSea),
                          BlankTextFormat(text: _chosenCatt),
                          BlankTextFormat(text: _chosenPatt),
                        ],
                      )
                  ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 50, 100, 10),
                          child: TffFormat(
                            hintText: "Latitude",
                            onChanged: (value) {
                              newLatitude = double.tryParse(value)!;
                            },
                            tffColor1: Colors.black54,
                            tffColor2: const Color(0x99e6e6fa),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 10, 100, 50),
                          child: TffFormat(
                            hintText: "Longitude",
                            onChanged: (value) {
                              newLongitude = double.tryParse(value)!;
                            },
                            tffColor1: Colors.black54,
                            tffColor2: const Color(0x99e6e6fa),
                          ),
                        ),
                      ],
                    ),

                  )]),
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      switch (isSelectedOption) {
                        case 'Current Place-name':
                          await fetchPlaces();
                          currentDisplayList = listPlaces;
                          print(listPlaces);
                          break;
                        case 'Sea-name':
                          await fetchSeas();
                          currentDisplayList = listSeas;
                          break;
                        case 'Country-name at that time':
                          await fetchCountryATT();
                          currentDisplayList = listCountryatts;
                          print(listCountryatts);
                          break;
                        case 'Place-name at that time':
                          await fetchPlaceATT();
                          currentDisplayList = listPlaceatts;
                          break;
                      }
                    },
                    child: const Text('Show and Select Options'),
              ),
              ),

              Wrap(
                spacing: 5.0,
                children: currentDisplayList.map<Widget>((item) {
                  if (item is Places) {
                    return ChoiceFormat(
                    choiceList: _filtersPlaces,
                    choiceKey: item.place,
                    choiceValue: item.id!,
                    onChoiceSelected: (choice) {
                      setState(() {
                        _chosenPlace = choice;
                        print(_chosenPlace);
                      });
                    });
                } else if (item is Seas) {
                    return ChoiceFormat(
                        choiceList: _filtersSeas,
                        choiceKey: item.sea,
                        choiceValue: item.id!,
                      //isSelected: true,
                      onChoiceSelected: (choice) {
                          setState(() {
                            _chosenSea = choice;
                          });
                      },
                    );
                  } else if (item is Countryatts) {
                    return ChoiceFormat(
                        choiceList: _filtersCountryatts,
                        choiceKey: item.countryatt,
                        choiceValue: item.id!,
                      //isSelected: true,
                      onChoiceSelected: (choice) {
                        setState(() {
                          _chosenCatt = choice;
                        });
                      },
                    );
                  } else if (item is Placeatts) {
                    return ChoiceFormat(
                        choiceList: _filtersPlaceatts,
                        choiceKey: item.placeatt,
                        choiceValue: item.id!,
                      //isSelected: true,
                      onChoiceSelected: (choice) {
                          setState(() {
                            _chosenPatt = choice;
                          });
                      },
                    );
                  }
                  return const SizedBox.shrink();
                }).toList(),
              ),
            ],
          ),

        )
      ),
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
          if (newPlace != "") {
            confirm.place = newPlace;
            confirm.placeId = placeId;
            print("add a new place $placeId");
          }

          ///選択されたplace
          if (_chosenPlace != '') {
            confirm.selectedPlace = _chosenPlace;
            confirm.selectedPlaceId = _chosenPlaceId;
            print("kept Selected Place $_chosenPlaceId");
          }

/*          ///選択されたplace
          if (_filtersPlaces.isNotEmpty) {
            confirm.selectedPlace = _filtersPlaces;
            confirm.selectedPlaceId = _filtersPlacesId;
            print("kept Selected Place $_filtersPlacesId");
          }*/

          ///追加されたsea
          if (newSea != "") {
            confirm.sea = newSea;
            confirm.seaId = seasId;
            print("add a new Sea $seasId");
          }

          ///選択されたsea
          if (_filtersSeas.isNotEmpty) {
            confirm.selectedSea = _filtersSeas;
            confirm.selectedSeaId = _filtersSeasId;
            print("kept Selected Sea $_filtersSeasId");
          }

          ///追加されたCatt
          if (newCountryatt != "") {
            confirm.countryatt = newCountryatt;
            confirm.countryattId = countryattId;
            print("add a new Catt $countryattId");
          }

          ///選択されたCatt
          if (_filtersCountryatts.isNotEmpty) {
            confirm.selectedCatt = _filtersCountryatts;
            confirm.selectedCattId = _fltersCountryattsId;
            print("kept selected Catt $_fltersCountryattsId");
          }

          ///追加されたPatt
          if (newPlaceatt != "") {
            confirm.placeatt = newPlaceatt;
            confirm.placeattId = placeattId;
            print("add a new Patt $placeattId");
          }

          ///選択されたPatt
          if (_filtersPlaceatts.isNotEmpty) {
            confirm.selectedPatt = _filtersPlaceatts;
            confirm.selectedPattId = _filtersPlaceattsId;
            print("kept selected Patt $_filtersPlaceattsId");
          }

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
