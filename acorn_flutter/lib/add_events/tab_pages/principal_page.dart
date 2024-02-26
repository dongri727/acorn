import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:acorn_flutter/utils/confirm_dialog.dart';
import 'package:acorn_flutter/utils/dropdown_button.format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../utils/blank_text_format.dart';
import '../../utils/shadowed_container.dart';
import '../../utils/tff_format.dart';

import 'principal_model.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {

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
                                  child: ShadowedContainer(
                                    child: TffFormat(
                                      hintText: "Event (within 50 letters)",
                                      onChanged: (text) {
                                        model.setNewName(text);
                                      },
                                      tffColor1: const Color(0xFF2f4f4f),
                                      tffColor2: const Color(0x99e6e6fa),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 1,
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
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: ShadowedContainer(
                                          child: CustomDropdownButton(
                                            selectedValue: model.selectedCalendar,
                                            options: model.periods,
                                            onChanged: (value) {
                                              model.setCalendar(value);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ShadowedContainer(
                                              child: TffFormat(
                                                hintText: "year",
                                                onChanged: (value) {
                                                  model.setNewYearD(value);
                                                },
                                                tffColor1: Colors.black54,
                                                tffColor2: const Color(0x99e6e6fa),
                                              ),
                                            ))),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ShadowedContainer(
                                            child: TffFormat(
                                              hintText: "Month 1-12 or 0",
                                              onChanged: (value) {
                                                model.setNewMonth(value);
                                              },
                                              tffColor1: Colors.black54,
                                              tffColor2: const Color(0x99e6e6fa),
                                            ),
                                          )),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                          padding:
                                          const EdgeInsets.fromLTRB(8, 8, 20, 8),
                                          child: ShadowedContainer(
                                            child: TffFormat(
                                              hintText: "Date 1-31 or 0",
                                              onChanged: (value) {
                                                model.setNewDay(value);
                                              },
                                              tffColor1: Colors.black54,
                                              tffColor2: const Color(0x99e6e6fa),
                                            ),
                                          )),
                                    ),
                                  ],
                                ))

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
                                  const EdgeInsets.all(20),
                              child: ShadowedContainer(
                                child: RadioButtonFormat(
                                    options: model.principalOptions,
                                    onChanged: (String? value) {
                                      model.selectedOption = value!;
                                      print("selected: $value");
                                    }),
                              ),
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
                              model.listRadioButtonBasis(model.selectedOption);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Wrap(
                            spacing: 5.0,
                            children: model.currentDisplayList.map((item) {
                              return ChoiceSIFormat(
                                  choiceSIList: model.filtersLocation,
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
              label: const Text('Temporarily Save'),
              onPressed: () {
                if (model.isAllFieldFilled()) {
                  model.temporarilySaveData((context) {
                    showDialog<void>(
                        context: context,
                        builder: (_) {
                          return const ConfirmDialog();
                        });
                  },context);
                } else {
                  showDialog(
                      context: context, 
                      builder: (_) => AlertDialog(
                        title: const Text('Warning'),
                        content: const Text(
                            'There are some fields that have not been filled in \n'
                                'All required',
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                              onPressed: () {
                              Navigator.of(context).pop();
                              })
                        ],
                      ));
                }
              },
            ));
      }),
    );
  }
}
