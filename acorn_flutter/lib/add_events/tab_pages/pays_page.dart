import 'package:acorn_flutter/add_events/tab_pages/pays_model.dart';
import 'package:acorn_flutter/utils/blank_text_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/button_format.dart';
import '../../utils/tff_format.dart';

String isSelectedOption = '';

class PaysPage extends StatelessWidget {
  const PaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<PaysModel>(
        create: (_) => PaysModel(),
        child: Consumer<PaysModel>(builder: (_, model, child) {
          return Scaffold(
              body: SafeArea(
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/both.png'),
                        fit: BoxFit.cover,
                      )),
                      child: Center(
                          child: SingleChildScrollView(
                        child: Column(children: [
                          Row(children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      100, 20, 20, 20),
                                  child: RadioButtonFormat(
                                      options: model.options,
                                      onChanged: (String? value) {
                                        model.selectedOption = value!;
                                        isSelectedOption = value;
                                        print("selected: $value");
                                      }),
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    BlankTextFormat(
                                        text: model.filtersPays.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersPlaces.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersCATTs.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersPATTs.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersStars.join(', ')),
                                  ],
                                )),
                          ]),
                          Center(
                            child: ElevatedButton(
                              child: const Text('Show and Select Options'),
                              onPressed: () async {
                                await model.fetchRadioButtonBasis(
                                    model.selectedOption);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: FormatGreyEnable(
                              enabled: isSelectedOption !=
                                  'Current Name of Country Involved',
                              controller: controller,
                              hintText: 'A New Name You Want',
                              onChanged: (text) {
                                model.setNewWord(text);
                              },
                            ),
                          ),
                          ButtonFormat(
                              label: 'Add A New Name',
                              onPressed: () async {
                                model.addAndFetchRadioButtonBasis(
                                    model.selectedOption);
                                controller.clear();
                              }),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: SingleChildScrollView(
                                child: Wrap(
                                  spacing: 5.0,
                                  children: model.currentDisplayList
                                      .map<Widget>((item) {
                                    return model.buildItemWidget(item);
                                  }).toList(),
                                ),
                              )),
                        ]),
                      )))),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  model.temporarilySaveData((context){
                    showDialog<void>(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title:
                              const Text('Data has been temporarily stored.'),
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
                }, context);
                },
                label: const Text('Temporarily Save'),
              ));
        }));
  }
}
