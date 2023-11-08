import 'dart:ui';

import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/add_events/tab_pages/where_model.dart';
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

class WherePage extends StatelessWidget{
  WherePage({super.key});

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

  ///Seas
  List<Seas> listSeas = [];

  ///当時の国名
  List<Countryatts> listCountryatts = [];
  List<Map<String, String>> displayListCountryatts = [];
  final List<String> _filtersCountryatts = <String>[];
  //final List<int> _fltersCountryattsId = <int>[];

  ///当時の地名
  List<Placeatts> listPlaceatts = [];
  List<Map<String, String>> displayListPlaceatts = [];
  final List<String> _filtersPlaceatts = <String>[];
  //final List<int> _filtersPlaceattsId = <int>[];

  List<dynamic> currentDisplayList= [];

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

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
    final TextEditingController controller = TextEditingController();

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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                                  child: RadioButtonFormat(
                                      options: options,
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
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                                        child: BlankTextFormat(text: model.locationPrecise),
                                      ),
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
                                      padding: const EdgeInsets.fromLTRB(50, 8, 200, 8),
                                      child: RadioButtonRowFormat(
                                          options: ns,
                                          onChanged: (String? value) {
                                            model.selectedOption = value!;
                                            isSelectedOption = value;
                                            print("selected: $value");
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          50, 8, 100, 8),
                                      child: TffFormat(
                                        hintText: "Latitude",
                                        onChanged: (value) {
                                          switch (isSelectedOption) {
                                            case 'N': newLatitude = double.tryParse(value)!;
                                            break;
                                            case 'S': newLatitude = -double.tryParse(value)!;
                                            break;
                                          }
                                          print(newLatitude);
                                        },
                                        tffColor1: Colors.black54,
                                        tffColor2: const Color(0x99e6e6fa),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(50, 8, 200, 8),
                                      child: RadioButtonRowFormat(
                                          options: ew,
                                          onChanged: (String? value) {
                                            model.selectedOption = value!;
                                            isSelectedOption = value;
                                            print("selected: $value");
                                          }),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          50, 8, 100, 40),
                                      child: TffFormat(
                                        hintText: "Longitude",
                                        onChanged: (value) {
                                          switch (isSelectedOption) {
                                            case 'E': newLongitude = double.tryParse(value)!;
                                            break;
                                            case 'W': newLongitude = -double.tryParse(value)!;
                                            break;
                                          }
                                          print(newLongitude);
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
                                case 'Stars':
                                  await model.fetchStars();
                                  currentDisplayList = model.listStars;
                                  model.updateLocationPrecise(model.chosenStar);
                                  break;
                                case 'Current Place-name':
                                  await model.fetchPlaces();
                                  currentDisplayList = model.listPlaces;
                                  model.updateLocationPrecise(model.chosenPlace);
                                  break;
                                case 'Sea-name':
                                  await model.fetchSeas();
                                  currentDisplayList = model.listSeas;
                                  model.updateLocationPrecise(model.chosenSea);
                                  break;
                                case 'Country-name at that time':
                                  await model.fetchCountryATT();
                                  currentDisplayList = model.listCountryatts;
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
                          child: FormatGrey(
                            controller: controller,
                            hintText: 'a New Name You Want',
                            onChanged: (text) {
                              switch (isSelectedOption) {
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
                                  newCountryatt = text;
                                  break;
                                case 'Place-name at that time':
                                  newPlaceatt = text;
                                  break;
                              }
                            },
                          ),
                        ),
                        ButtonFormat(
                          onPressed: () async {
                            switch (isSelectedOption) {
                              case 'Stars':
                                await model.addStarsAndFetch(newStar);
                                currentDisplayList = model.listStars;
                                break;
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
                            controller.clear();
                          },
                          label: 'Add a New Name',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Wrap(
                            spacing: 5.0,
                            children: currentDisplayList.map<Widget>((item) {
                              if (item is Stars) {
                                return ChoiceSIFormat(
                                    choiceSIList: _filtersLocationPrecise,
                                    choiceSIKey: item.star,
                                    onChoiceSISelected: (choiceKey) {
                                      model.chosenLocationPrecise = choiceKey;
                                      model.updateLocationPrecise(choiceKey);
                                      print(choiceKey);
                                    });
                              } else if (item is Places) {
                                return ChoiceSIFormat(
                                    choiceSIList: _filtersLocationPrecise,
                                    choiceSIKey: item.place,
                                    onChoiceSISelected: (choiceKey) {
                                        model.chosenLocationPrecise = choiceKey;
                                        model.updateLocationPrecise(choiceKey);
                                        print(choiceKey);
                                    });
                              } else if (item is Seas) {
                                return ChoiceSIFormat(
                                  choiceSIList: _filtersLocationPrecise,
                                  choiceSIKey: item.sea,
                                  onChoiceSISelected: (choiceKey) {
                                      model.chosenLocationPrecise = choiceKey;
                                      model.updateLocationPrecise(choiceKey);
                                      print(choiceKey);
                                  });
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
                  ),
                )
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                double sn = (math.pi * newLatitude) / 180;
                double ew = (math.pi * newLongitude) / 180;
                cx = math.cos(sn) * math.cos(ew) * confirm.coefficient;
                cy = math.sin(sn) * confirm.coefficient;
                cz = math.cos(sn) * math.sin(ew) * confirm.coefficient;

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

                ///選択されたLocationPrecise
                  confirm.selectedPrecise = model.locationPrecise;
                  print("kept Selected Precise ${model.chosenLocationPrecise}");

                ///選択されたCatt
                if (model.chosenCatt != '') {
                  confirm.selectedCatt = model.chosenCatt;
                  confirm.selectedCattId = model.chosenCattId;
                  print("kept selected Catt ${model.chosenCattId}");
                }

                ///選択されたPatt
                if (model.chosenPatt != '') {
                  confirm.selectedPatt = model.chosenPatt;
                  print('kept selected Patt ${model.chosenPatt}');
                  confirm.selectedPattId = model.chosenPattId;
                }

                confirm.latitude = newLatitude;
                confirm.longitude = newLongitude;
                confirm.x = cx;
                confirm.y = cy;
                confirm.z = cz;
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
