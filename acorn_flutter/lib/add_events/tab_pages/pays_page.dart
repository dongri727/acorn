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
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ButtonFormat(
                                      onPressed: model.fetchPaysInvolved,
                                      label:
                                          'Show and Select Current Countries Involved',
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                    child: BlankTextFormat(text: model.filtersPays.join(', ')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      spacing: 5.0,
                                      children: model.listPays.map<Widget>((pays) {
                                        return FilterFormatImediat(
                                          filteredImKeys: model.filtersPays,
                                          filteredImValues: model.filtersPaysId,
                                          filterImKey: pays.pays,
                                          filterImValue: pays.id,
                                          onSelected: (filterKey, filterId) {
                                            model.selectedPaysInv = filterKey;
                                            model.selectedPaysInvId = filterId;
                                          },
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ButtonFormat(
                                        onPressed: model.fetchCountriesAtt,
                                        label:
                                            'Show and Select Countries Involved at that time',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BlankTextFormat(text: model.filtersCATTs.join(', ')),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FormatGrey(
                                        controller: controller,
                                        hintText:
                                        'a New Country Involved at that time You Want',
                                        onChanged: (text) {
                                          newCATT = text;
                                        },
                                      ),
                                    ),
                                    ButtonFormat(
                                      onPressed: () async {
                                        await model.addCountryATTandFetch(newCATT);
                                        controller.clear();
                                      },
                                      label:
                                      'Add a New Country Involved at that time',
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Wrap(
                                        spacing: 5.0,
                                        children:model.listCATTs.map((countryatts) {
                                          return FilterFormatImediat(
                                            filteredImKeys: model.filtersCATTs,
                                            filteredImValues: model.filtersCATTId,
                                            filterImKey: countryatts.countryatt,
                                            filterImValue: countryatts.id,
                                            onSelected: (filterKey, filterId) {
                                              model.selectedCattInv = filterKey;
                                              model.selectedCattInvId = filterId;
                                            },
                                          );
                                        }).toList(),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )),
                      ]))),
            ),
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

                confirm.selectedPays = model.filtersPays;
                confirm.selectedPaysId = model.filtersPaysId;
                print("${model.filtersPaysId}");

                confirm.selectedATT = model.filtersCATTs;
                confirm.selectedATTId = model.filtersCATTId;
                print("${model.filtersCATTId}");
              },
              label: const Text('Temporarily Save'),
            ));
      }),
    );
  }
}
