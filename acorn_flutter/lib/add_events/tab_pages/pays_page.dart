
import 'package:acorn_flutter/add_events/tab_pages/pays_model.dart';
import 'package:acorn_flutter/utils/blank_text_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:acorn_client/acorn_client.dart';

import '../../confirm/confirm.dart';
import '../../utils/button_format.dart';
import '../../utils/tff_format.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class PaysPage extends StatelessWidget {
  PaysPage({super.key});

  var newCATT = '';
  List<String> options = ['Current Country Name', 'Country Name At That Time'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
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
                                      )),
                                  Expanded(
                                    flex: 1,
                                      child: Column(
                                        children: [
                                          BlankTextFormat(text: model.filtersPays.join(', ')),
                                          BlankTextFormat(text: model.filtersCATTs.join(', ')),
                                        ],
                                      )),
                                  Expanded(
                                    flex: 1,
                                      child: Container()),
                                ]),
                              Center(
                                child: ElevatedButton(
                                  child: const Text('Show and Select Options'),
                                  onPressed: () async {
                                    switch (isSelectedOption) {
                                      case 'Current Country Name':
                                        await model.fetchPaysInvolved();
                                        currentDisplayList = model.listPays;
                                        print(currentDisplayList);
                                        break;
                                      case 'Country Name At That Time':
                                        await model.fetchCountriesAtt();
                                        currentDisplayList = model.listCATTs;
                                        print(currentDisplayList);
                                        break;
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(28.0),
                                child: FormatGreyEnable(
                                  enabled: isSelectedOption != 'Current Country Name',
                                  controller: controller,
                                  hintText: 'A New Country Name At That Time You Want',
                                  onChanged: (text) {
                                    if (isSelectedOption == 'Country Name At That Time') {
                                      newCATT = text;
                                    } else {
                                      return;
                                    }
                                  },
                                ),
                              ),
                              ButtonFormat(
                                  label: 'Add A New Country Name At That Time',
                                  onPressed: () async {
                                    if (isSelectedOption == 'Country Name At That Time') {
                                      await model.addCountryATTandFetch(newCATT);
                                      currentDisplayList = model.listCATTs;
                                    } else {
                                      return;
                                    }
                                    controller.clear();
                                  }),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: SingleChildScrollView(
                                  child: Wrap(
                                    spacing: 5.0,
                                    children: currentDisplayList.map<Widget>((item) {
                                      if (item is Pays) {
                                        return FilterFormatImediat(
                                            filteredImKeys: model.filtersPays,
                                            filteredImValues: model.filtersPaysId,
                                            filterImKey: item.pays,
                                            filterImValue: item.id,
                                            onSelected: (filterKey, filterId) {
                                              model.selectedPaysInv = filterKey;
                                              model.selectedPaysInvId = filterId;
                                            });
                                      } else if (item is Countryatts) {
                                        return FilterFormatImediat(
                                            filteredImKeys: model.filtersCATTs,
                                            filteredImValues: model.filtersCATTId,
                                            filterImKey: item.countryatt,
                                            filterImValue: item.id,
                                            onSelected: (filterKey, filterId) {
                                              model.selectedPaysInv = filterKey;
                                              model.selectedPaysInvId = filterId;
                                            });
                                      }
                                      return SizedBox.shrink();
                                    }).toList(),
                                  ),
                                )),
                            ]),
                      )
                  )
              )),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
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

              confirm.selectedCountries = model.filtersPays;
              confirm.selectedCountriesId = model.filtersPaysId;
              print("${model.filtersPays}");

              confirm.selectedATT = model.filtersCATTs;
              confirm.selectedATTId = model.filtersCATTId;
              print("${model.filtersCATTs}");
            },
            label: const Text('Temporarily Save'),
          ));
      })
    );
  }
}
