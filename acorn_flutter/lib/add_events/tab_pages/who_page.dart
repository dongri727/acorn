import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/blank_text_format.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/tff_format.dart';
import 'who_model.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class WhoPage extends StatelessWidget {
  WhoPage({super.key});

  var newOrg = '';
  var newPerson = '';

  List<String> options = ['Organisations', 'People'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  List<Organisations> listOrgs = [];
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  List<People> listPeople = [];
  List<Map<String, String>> displayListPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<WhoModel>(
      create: (_) => WhoModel(),
      child: Consumer<WhoModel>(builder: (_, model, child) {
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
                            BlankTextFormat(text: model.filtersOrgs.join(', ')),
                            BlankTextFormat(text: model.filtersPeople.join(', ')),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Text('Show and Select Options'),
                      onPressed: () async {
                        switch (isSelectedOption) {
                          case 'Organisations':
                            await model.fetchOrgsInvolved();
                            currentDisplayList = model.listOrgs;
                            print(currentDisplayList);
                            break;
                          case 'People':
                            await model.fetchPeopleInvolved();
                            currentDisplayList = model.listPeople;
                            print(currentDisplayList);
                            break;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: FormatGrey(
                      controller: controller,
                      hintText: 'a New Name You Want',
                      onChanged: (text) {
                        switch (isSelectedOption) {
                          case 'Organisations':
                            newOrg = text;
                            break;
                          case 'People':
                            newPerson = text;
                            break;
                        }
                      },
                    ),
                  ),
                  ButtonFormat(
                    label: 'Add a New Name',
                    onPressed: () async {
                      switch (isSelectedOption) {
                        case 'Organisations':
                          await model.addOrgsAndFetch(newOrg);
                          currentDisplayList = model.listOrgs;
                          break;
                        case 'People':
                          await model.addPeopleAndFetch(newPerson);
                          currentDisplayList = model.listPeople;
                          break;
                      }
                      controller.clear();
                    },
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        spacing: 5.0,
                        children: currentDisplayList.map<Widget>((item) {
                          if (item is Organisations) {
                            return FilterFormatImediat(
                                filteredImKeys: model.filtersOrgs,
                                filteredImValues: model.filtersOrgsId,
                                filterImKey: item.organisation,
                                filterImValue: item.id,
                                onSelected: (filterKey, filterId) {
                                  model.selectedOrgs = filterKey;
                                  model.selectedOrgsId = filterId;
                                });
                          } else if (item is People) {
                            return FilterFormatImediat(
                              filteredImKeys: model.filtersPeople,
                              filteredImValues: model.filtersPeopleId,
                              filterImKey: item.person,
                              filterImValue: item.id,
                              onSelected: (filterKey, filterId) {
                                model.selectedPeople = filterKey;
                                model.selectedPeopleId = filterId;
                              },
                            );
                          }
                          return const SizedBox.shrink();
                        }).toList(),
                      )),
                ]),
              ),
            ),
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

              confirm.selectedOrg = model.filtersOrgs;
              confirm.selectedOrgId = model.filtersOrgsId;
              print("${model.filtersOrgs}");

              confirm.selectedWho = model.filtersPeople;
              confirm.selectedWhoId = model.filtersPeopleId;
              print("${model.filtersPeople}");
            },
            label: const Text('Temporarily Save'),
          ),
        );
      }),
    );
  }
}
