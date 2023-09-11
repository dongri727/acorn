import 'dart:ui';

import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/add_events/tab_pages/terms_model.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/blank_text_format.dart';
import '../../utils/tff_format.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class TermsPage extends StatelessWidget {
  TermsPage({super.key});

  var newCategory = '';
  List<Categories> listCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  var newTerm = '';
  List<Terms> listTerms = [];
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  List<String> options = ['Categories', 'Terms'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<TermsModel>(
      create: (_) => TermsModel(),
      child: Consumer<TermsModel>(builder: (_, model, child) {
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
                                  BlankTextFormat(text: model.filtersCategories.join(', ')),
                                  BlankTextFormat(text: model.filtersTerms.join(', ')),
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
                              case 'Categories':
                                await model.fetchCategories();
                                currentDisplayList = model.listCategories;
                                print(currentDisplayList);
                                break;
                              case 'Terms':
                                await model.fetchTerms();
                                currentDisplayList = model.listTerms;
                                print(currentDisplayList);
                                break;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(28.0),
                        child: FormatGrey(
                          controller: controller,
                          hintText: 'A New Word You Want',
                          onChanged: (text) {
                            switch (isSelectedOption) {
                              case 'Categories':
                                newCategory = text;
                                break;
                              case 'Terms':
                                newTerm = text;
                                break;
                            }
                          },
                        ),
                      ),
                      ButtonFormat(
                        label: 'Add a New Word',
                        onPressed: () async {
                          switch (isSelectedOption) {
                            case 'Categories':
                              await model.addCategoriesAndFetch(newCategory);
                              currentDisplayList = model.listCategories;
                              break;
                            case 'Terms':
                              await model.addTermsAndFetch(newTerm);
                              currentDisplayList = model.listTerms;
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
                              if (item is Categories) {
                                return FilterFormatImediat(
                                    filteredImKeys: model.filtersCategories,
                                    filteredImValues: model.filtersCategoriesId,
                                    filterImKey: item.category,
                                    filterImValue: item.id,
                                    onSelected: (filterKey, filterId) {
                                      model.selectedCategory = filterKey;
                                      model.selectedCategoryId = filterId;
                                    });
                              } else if (item is Terms) {
                                return FilterFormatImediat(
                                  filteredImKeys: model.filtersTerms,
                                  filteredImValues: model.filtersTermsId,
                                  filterImKey: item.term,
                                  filterImValue: item.id,
                                  onSelected: (filterKey, filterId) {
                                    model.selectedTerm = filterKey;
                                    model.selectedTermId = filterId;
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
                            'They are not uploaded yet. See the whole data in the next Page'),
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

                confirm.selectedCategory = model.filtersCategories;
                confirm.selectedCategoryId = model.filtersCategoriesId;
                print("${model.filtersCategories}");

                confirm.selectedTerm = model.filtersTerms;
                confirm.selectedTermId = model.filtersTermsId;
                print("${model.filtersTerms}");
              },
              label: const Text('Temporarily Save'),
            ));
      }),
    );
  }
}
