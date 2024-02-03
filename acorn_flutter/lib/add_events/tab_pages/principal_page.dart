import 'dart:math';

import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:acorn_flutter/utils/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../confirm/confirm.dart';
import '../../utils/blank_text_format.dart';
import '../../utils/tff_format.dart';

import '../../utils/theme.dart';
import 'principal_model.dart';
import '../../lists/countries_list.dart';
import '../../lists/period_list.dart';
import '../../lists/universe_list.dart';
import '../../lists/oceans_list.dart';

class PrincipalPage extends StatelessWidget {
  PrincipalPage({super.key});

  double log10(num x) => log(x) / ln10;

  var newYearD = 0.0;
  var newYearI = 0;
  var newAnnee = '';
  var newMonth = 0;
  var newDay = 0;
  late int newPoint;
  late double newLogarithm;
  late double newCoefficient;
  var newName = '';
  String isSelectedCalendar = 'Common-Era';
  var calendarNo = 0;

  List<String> periods = epoch;

  final List<String> _filtersLocation = <String>[];

  ///Universe
  List<String> universe = cosmos;

  ///Pays
  List<String> pays = countries;

  ///Oceans
  List<String> oceans = mer;

  List<String> currentDisplayList = [];
  String? isSelectedOption = '';

  List<String> options = [
    'Universe',
    'Current Country-name',
    'Ocean-name',
  ];

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);

    return ChangeNotifierProvider<PrincipalModel>(
      create: (_) => PrincipalModel(),
      child: Consumer<PrincipalModel>(builder: (_, model, child) {
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
                            const Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                                child: Text('WHAT',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TffFormat(
                                    hintText: "Event　(within 50 letters)",
                                    onChanged: (text) {
                                      newName = text;
                                    },
                                    tffColor1: const Color(0xFF2f4f4f),
                                    tffColor2: const Color(0x99e6e6fa),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                                child: Text(
                                  'WHEN',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: const Color(0x99e6e6fa),
                                  ),
                                  child: DropdownButton<String>(
                                    value: isSelectedCalendar,
                                    alignment: Alignment.center,
                                    dropdownColor: const Color(0xCCe6e6fa),
                                    borderRadius: BorderRadius.circular(15.0),
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        isSelectedCalendar = value;
                                        model.selectedCalendar = value;
                                      }
                                    },
                                    items: periods
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                            style:
                                                AcornTheme.textTheme.bodyMedium,
                                            value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TffFormat(
                                      hintText: "year",
                                      onChanged: (value) {
                                        newYearD = double.parse(value);
                                      },
                                      tffColor1: Colors.black54,
                                      tffColor2: const Color(0x99e6e6fa),
                                    ))),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TffFormat(
                                    hintText: "Month 1-12 or 0",
                                    onChanged: (value) {
                                      try {
                                        newMonth = int.parse(value);
                                      } catch (e) {
                                        newMonth = 0;
                                      }
                                    },
                                    tffColor1: Colors.black54,
                                    tffColor2: const Color(0x99e6e6fa),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 20, 8),
                                  child: TffFormat(
                                    hintText: "Date 1-31 or 0",
                                    onChanged: (value) {
                                      try {
                                        newDay = int.parse(value);
                                      } catch (e) {
                                        newDay = 0;
                                      }
                                    },
                                    tffColor1: Colors.black54,
                                    tffColor2: const Color(0x99e6e6fa),
                                  )),
                            ),
                          ],
                        ),
                        Row(children: [
                          const Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                              child: Text(
                                'WHERE',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(100, 20, 20, 20),
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
                            child: Center(
                                child: BlankTextFormat(
                              text: model.location, // latest chosen location
                            )),
                          ),
                        ]),
                        Center(
                          child: ElevatedButton(
                            child: const Text('Show and Select Options'),
                            onPressed: () {
                              switch (isSelectedOption) {
                                case 'Universe':
                                  currentDisplayList = universe;
                                  model.updateDisplayList(universe);
                                  break;
                                case 'Current Country-name':
                                  currentDisplayList = pays;
                                  model.updateDisplayList(pays);
                                  break;
                                case 'Ocean-name':
                                  currentDisplayList = oceans;
                                  model.updateDisplayList(oceans);
                                  break;
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Wrap(
                            spacing: 5.0,
                            children: currentDisplayList.map((item) {
                              return ChoiceSIFormat(
                                  choiceSIList: _filtersLocation,
                                  choiceSIKey: item,
                                  onChoiceSISelected: (choiceSIKey) {
                                    model.chosenLocation = choiceSIKey;
                                    model.updateLocation(choiceSIKey);
                                    print(choiceSIKey);
                                  });
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                showDialog<void>(
                    context: context,
                    builder: (_) {
                      return const ConfirmDialog();
                    });

                /// convert the years depending on the selected calendar period
                switch (isSelectedCalendar) {
                  case 'Billion Years':
                    newYearI = (newYearD * 1000000000).round();
                    newYearI = -newYearI.abs();
                    break;
                  case 'Million Years':
                    newYearI = (newYearD * 1000000).round();
                    newYearI = -newYearI.abs();
                    break;
                  case 'Thousand Years':
                    newYearI = (newYearD * 1000).round();
                    newYearI = -newYearI.abs();
                    break;
                  case 'Years by Dating Methods':
                    newYearI = (2000 - newYearD).round();
                    break;
                  case 'Before-CommonEra':
                    newYearI = (newYearD).round();
                    newYearI = -newYearI.abs();
                    break;
                  case 'Common-Era':
                    newYearI = (newYearD).round();
                    break;
                }

                ///make data of point
                newPoint =
                    (((newYearI - 1) * 366 + (newMonth - 1) * 30.5 + newDay)
                            .toDouble())
                        .round();
                print(newPoint);

                ///make data of logarithm
                newLogarithm = double.parse(
                    (5885.0 - (1000 * (log10((newPoint - 768600).abs()))))
                        .toStringAsFixed(4));
                print(newLogarithm);

                ///make data of reverseLogarithm
                newCoefficient = 6820.0 + newLogarithm;
                print(newCoefficient);

                switch (isSelectedCalendar) {
                  case 'Billion Years':
                    newAnnee = '${newYearD}B years ago';
                    break;
                  case 'Million Years':
                    newAnnee = '${newYearD}M years ago';
                    break;
                  case 'Thousand Years':
                    newAnnee = '${newYearD}K years ago';
                    break;
                  case 'Years by Dating Methods':
                    newAnnee = 'about $newYearD years ago';
                    break;
                  case 'Before-CommonEra':
                    newAnnee = 'BCE ${(newYearD).round()}';
                    break;
                  case 'Common-Era':
                    newAnnee = 'CE ${(newYearD).round()}';
                    break;
                }

                confirm.isSelectedCalendar = isSelectedCalendar;
                confirm.year = newYearI;
                confirm.annee = newAnnee;
                confirm.month = newMonth;
                confirm.day = newDay;
                confirm.point = newPoint;
                confirm.logarithm = newLogarithm;
                confirm.coefficient = newCoefficient;

                ///選択されたlocation
                confirm.selectedLocation = model.location;
                print(model.location);

                confirm.name = newName;
                print(newName);
                print("save name");

                ///選択されたlocation
                confirm.selectedLocation = model.location;
                print(model.location);

                print('save principal');
              },
              label: const Text('Temporarily Save'),
            ));
      }),
    );
  }
}
