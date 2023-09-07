import 'dart:ui';

import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/add_events/tab_pages/where_model.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/blank_text_format.dart';
import '../../utils/tff_format.dart';

import 'dart:math' as math;

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class WherePage extends StatelessWidget{
  WherePage({super.key});

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

  String? isSelectedOption = '';




  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);

    return ChangeNotifierProvider<WhereModel>(
      create: (_) => WhereModel(),
        child: Consumer<WhereModel>(
          builder: (_, model, child) {
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
                                padding: const EdgeInsets.fromLTRB(100, 20, 20,
                                    20),
                                child: RadioButtonFormat(
                                    options: const [
                                      'Current Place-name',
                                      'Sea-name',
                                      'Country-name at that time',
                                      'Place-name at that time'
                                    ],
                                    initialOption: model.selectedOption,
                                    onChanged: (String? value) {
                                      model.selectedOption = value!;
                                      isSelectedOption = value;
                                      print("selected: $value");
                                    }),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    BlankTextFormat(text: model.chosenPlace),
                                    BlankTextFormat(text: model.chosenSea),
                                    BlankTextFormat(text: model.chosenCatt),
                                    BlankTextFormat(text: model.chosenPatt),
                                  ],
                                )
                            ),

                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        50, 50, 100, 10),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        50, 10, 100, 50),
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

                            )
                          ]),
                      Center(
                        child: ElevatedButton(
                          onPressed: () async {
                            switch (isSelectedOption) {
                              case 'Current Place-name':
                                await model.fetchPlaces();
                                currentDisplayList = model.listPlaces;
                                print(currentDisplayList);
                                break;
                              case 'Sea-name':
                                await model.fetchSeas();
                                currentDisplayList = model.listSeas;
                                print(currentDisplayList);
                                break;
                              case 'Country-name at that time':
                                await model.fetchCountryATT();
                                currentDisplayList = model.listCountryatts;
                                print(currentDisplayList);
                                break;
                              case 'Place-name at that time':
                                await model.fetchPlaceATT();
                                currentDisplayList = model.listPlaceatts;
                                break;
                            }
                          },
                          child: const Text('Show and Select Options'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: TffFormat(
                          key: model.clearWhereKey,
                          hintText: 'a New Name You Want',
                          onChanged: (text) {
                            switch (isSelectedOption) {
                              case 'Current Place-name':
                                newPlace = text;
                                break;
                              case 'Sea-name':
                                newSea = text;
                                break;
                              case 'Country-name at that time':
                                newCountryatt = text;
                                break;
                              case 'Place-name at that time':
                                newPlaceatt = text;
                                break;
                            }
                          },
                          tffColor1: Colors.black54,
                          tffColor2: const Color(0x99e6e6fa),
                        ),
                      ),
                      ButtonFormat(
                        onPressed: () async {
                          switch (isSelectedOption) {
                            case 'Current Place-name':
                              await model.addPlacesAndFetch(newPlace);
                              currentDisplayList = model.listPlaces;
                              break;
                            case 'Sea-name':
                              await model.addSeasAndFetch(newSea);
                              currentDisplayList = model.listSeas;
                              break;
                            case 'Country-name at that time':
                              await model.addCountryATTandFetch();
                              currentDisplayList = model.listCountryatts;
                              break;
                            case 'Place-name at that time':
                              await model.addPlaceATTandFetch();
                              currentDisplayList = model.listPlaceatts;
                              break;
                          }
                          model.resetWhereForm();
                        },
                        label: 'Add a New Name',
                      ),
                      SingleChildScrollView(
                        child: Wrap(
                          spacing: 5.0,
                          children: currentDisplayList.map<Widget>((item) {
                            if (item is Places) {
                              return ChoiceFormat(
                                  choiceList: _filtersPlaces,
                                  choiceKey: item.place,
                                  choiceId: item.id!,
                                  onChoiceSelected: (choiceKey, choiceId) {
                                      model.chosenPlace = choiceKey;
                                      model.chosenPlaceId = choiceId;

                                  });
                            } else if (item is Seas) {
                              return ChoiceFormat(
                                choiceList: _filtersSeas,
                                choiceKey: item.sea,
                                choiceId: item.id!,
                                onChoiceSelected: (choiceKey, choiceId) {
                                    model.chosenSea = choiceKey;
                                    model.chosenSeaId = choiceId;
                                },
                              );
                            } else if (item is Countryatts) {
                              return ChoiceFormat(
                                choiceList: _filtersCountryatts,
                                choiceKey: item.countryatt,
                                choiceId: item.id!,
                                onChoiceSelected: (choiceKey, choiceId) {
                                    model.chosenCatt = choiceKey;
                                    model.chosenCattId = choiceId;
                                },
                              );
                            } else if (item is Placeatts) {
                              return ChoiceFormat(
                                choiceList: _filtersPlaceatts,
                                choiceKey: item.placeatt,
                                choiceId: item.id!,
                                onChoiceSelected: (choiceKey, choiceId) {
                                    model.chosenPatt = choiceKey;
                                    model.chosenPattId = choiceId;
                                    print(choiceId);
                                },
                              );
                            }
                            return const SizedBox.shrink();
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                  double sn = (math.pi * newLatitude) / 180;
                  double ew = (math.pi * newLongitude) / 180;
                  x = math.cos(sn) * math.cos(ew);
                  y = math.sin(sn);
                  z = math.cos(sn) * math.sin(ew);

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
                  confirm.placeId = model.placeId;
                  print("add a new place $model.placeId");
                }

                ///選択されたplace
                if (model.chosenPlace != '') {
                  confirm.selectedPlace = model.chosenPlace;
                  print("kept Selected Place ${model.chosenPlace}");
                  confirm.selectedPlaceId = model.chosenPlaceId;
                  print("kept Selected Place ${model.chosenPlaceId}");
                }

                ///追加されたsea
                if (newSea != "") {
                  confirm.sea = newSea;
                  confirm.seaId = model.seasId;
                  print("add a new Sea $model.seasId");
                }

                ///選択されたsea
                if (model.chosenSea != '') {
                  confirm.selectedSea = model.chosenSea;
                  confirm.selectedSeaId = model.chosenSeaId;
                  print("kept Selected Sea $model.chosenSeaId");
                }

                ///追加されたCatt
                if (newCountryatt != "") {
                  confirm.countryatt = newCountryatt;
                  confirm.countryattId = model.countryattId;
                  print("add a new Catt $model.countryattId");
                }

                ///選択されたCatt
                if (model.chosenCatt != '') {
                  confirm.selectedCatt = model.chosenCatt;
                  confirm.selectedCattId = model.chosenCattId;
                  print("kept selected Catt $model.chosenCattId");
                }

                ///追加されたPatt
                if (newPlaceatt != "") {
                  confirm.placeatt = newPlaceatt;
                  confirm.placeattId = model.placeattId;
                  print("add a new Patt $model.placeattId");
                }

                ///選択されたPatt
                if (model.chosenPatt != '') {
                  confirm.selectedPatt = model.chosenPatt;
                  print('$model.chosenPatt');
                  confirm.selectedPattId = model.chosenPattId;
                }

                confirm.latitude = newLatitude;
                confirm.longitude = newLongitude;
                confirm.x = x;
                confirm.y = y;
                confirm.z = z;
                print(newLatitude);
                print('save where');
              },
              label: const Text('Temporarily Save'),
            )
            );
         }
        ),
      );
   }
}
