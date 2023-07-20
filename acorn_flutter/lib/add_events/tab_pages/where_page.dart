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
  var newLatitude = 0.0;
  var newLongitude = 0.0;
  var newPaysatt = '';
  var newPlaceatt = '';
  var newCountryatt = '';
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;

  List<Places> listPlaces = [];
  List<Map<String, String>> displayListPlaces = [];
  final List<String> _filtersPlaces = <String>[];

  List<Countryatts> listCountryatts = [];
  List<Map<String, String>> displayListCountryatts = [];
  final List<String> _filtersCountryatts = <String>[];

  List<Placeatts> listPlaceatts = [];
  List<Map<String, String>> displayListPlaceatts = [];
  final List<String> _filtersPlaceatts = <String>[];

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

  late int placeLastVal;

  addPlacesAndFetch() async {
    var places = Places(place: newPlace);
    placeLastVal = await client.places.addPlaces(places);
    print(placeLastVal);
    debugPrint("add a place");
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

  late int countryattLastVal;

  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCountryatt);
    countryattLastVal = await client.countryatts.addCountryATTs(catts);
    print(countryattLastVal);
    debugPrint("add an CountryATT");
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

  late int attLastVal;

  addPlaceATTandFetch() async {
    var patts = Placeatts(placeatt: newPlaceatt);
    attLastVal = await client.placeatts.addPlaceATTs(patts);
    print(attLastVal);
    debugPrint("add an PlaceATT");
    listPlaceatts = await client.placeatts.getPlaceATTs();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
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
                            return ChipsFormat(
                                chipsFilter: _filtersPlaces,
                                chipsData: places.place);
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TffFormat(
                          hintText: 'a New Place You Want',
                          onChanged: (text) {
                            newPlace = text;
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        ),
                      ),
                      ButtonFormat(
                        onPressed: addPlacesAndFetch,
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
                            return ChipsFormat(
                                chipsFilter: _filtersCountryatts,
                                chipsData: countryatts.countryatt);
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TffFormat(
                          hintText: 'a New Country at that time You Want',
                          onChanged: (text) {
                            newCountryatt = text;
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        ),
                      ),
                      ButtonFormat(
                        onPressed: addCountryATTandFetch,
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
                          return ChipsFormat(
                              chipsFilter: _filtersPlaceatts,
                              chipsData: placeatts.placeatt);
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TffFormat(
                        hintText: 'a New Place at that time You Want',
                        onChanged: (text) {
                          newPlaceatt = text;
                        },
                        tffColor1: Colors.black54,
                        tffColor2: const Color(0x99e6e6fa),
                      ),
                    ),
                    ButtonFormat(
                      onPressed: addPlaceATTandFetch,
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

          confirm.place = newPlace;
          confirm.att = newPlaceatt;
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
