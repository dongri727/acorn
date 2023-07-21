import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/formats.dart';


var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class TermsPage extends StatefulWidget {
  const TermsPage({Key? key}) : super(key: key);


  @override
  State<TermsPage> createState() => TermsPageState();
}

class TermsPageState extends State<TermsPage> {

  List<Terms> listTerms = [];
  List<Map<String, String>> displayTerms = [];
  final List<String> filtersTerms = <String>[];
  final List<String> filtersTermsId = <String>[];

  List<Categories> listCategories = [];
  List<Map<String, String>> displayCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<String> filtersCategoriesId = <String>[];

  Future<void> fetchTerms() async {
    try {
      listTerms = await client.terms.getTerms();
      setState(() {
        displayTerms = listTerms.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  var newTerm = '';
  late int termLastVal;

  Future<void> addTermsAndFetch() async {
    var terms = Terms(term: newTerm);
    termLastVal = await client.terms.addTerms(terms);
    print(termLastVal);
    debugPrint("add term");
    listTerms = await client.terms.getTerms();
    setState(() {});
  }

  Future<void> fetchCategories() async {
    try {
      listCategories = await client.categories.getCategories();
      setState(() {
        displayCategories = listCategories.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  var newCategory = '';
  late int categoryLastVal;

  Future<void> addCategoriesAndFetch() async {
    var categories = Categories(category: newCategory);
    categoryLastVal = await client.categories.addCategories(categories);
    print(categoryLastVal);
    debugPrint("add category");
    listCategories = await client.categories.getCategories();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
    final categoryKey = GlobalKey<FormFieldState>();
    final termKey = GlobalKey<FormFieldState>();

    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/both.png'),
                  fit: BoxFit.cover,
                )
            ),
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
                            onPressed: fetchCategories,
                            label: 'Show and Select Categories',
                          ),
                        ),
                        Text(
                          'Selected: ${filtersCategories.join(', ')}',
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.yellow,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            spacing: 5.0,
                            children: listCategories.map((categories) {
                              return FilterFormat(
                                  filterFilter: filtersCategories,
                                  filterData: categories.category);
/*                              return FilterChip(
                                label: Text(categories.category),
                                selected: filtersCategories.contains(categories.category),
                                onSelected: (bool value) {
                                  setState(() {
                                    if (value) {
                                      if (!filtersCategories.contains(categories.category)) {
                                        filtersCategories.add(categories.category);
                                      }
                                    } else {
                                      filtersCategories.removeWhere((filtersCategories) => filtersCategories == filtersCategories);
                                    }
                                  });
                                },
                              );*/
                            }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: TffFormat(
                            key: categoryKey,
                            hintText: 'a New Category You Want',
                            onChanged: (text) {
                              newCategory = text;
                            },
                            tffColor1: Colors.black54,
                            tffColor2: const Color(0x99e6e6fa),
                          ),
                        ),
                        ButtonFormat(
                          onPressed: () {
                            addCategoriesAndFetch();
                            categoryKey.currentState!.reset();
                            },
                          label: 'Add a New Category',
                        )
                      ],
                    ),
                  ),

                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ButtonFormat(
                              onPressed: fetchTerms,
                              label: 'Show and Select Search Terms',
                            ),
                          ),
                          Text(
                            'Selected: ${filtersTerms.join(', ')}',
                            style: const TextStyle(
                              fontSize: 20,

                              color: Colors.yellow,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 5.0,
                              children: listTerms.map((terms) {
                                return FilterFormat(
                                    filterFilter: filtersTerms,
                                    filterData: terms.term);
/*                                return FilterChip(
                                  label: Text(terms.term),
                                  selected: filtersTerms.contains(terms.term),
                                  onSelected: (bool value) {
                                    setState(() {
                                      if (value) {
                                        if (!filtersTerms.contains(terms.term)) {
                                          filtersTerms.add(terms.term);
                                        }
                                      } else {
                                        filtersTerms.removeWhere((filterTerms) => filtersTerms == terms.term);
                                      }
                                    });
                                  },
                                );*/
                              }).toList(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(200, 30 ,200, 30),
                            child: TffFormat(
                              key: termKey,
                              hintText: 'a New Search Term You Want',
                              onChanged: (text) {
                                newTerm = text;
                              },
                              tffColor1: Colors.black54,
                              tffColor2: const Color(0x99e6e6fa),
                            ),
                          ),
                          ButtonFormat(
                            onPressed: () {
                              addTermsAndFetch();
                              termKey.currentState!.reset();
                              },
                            label: 'Add a New Term',
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog<void>(
              context: context,
              builder: (_){
                return AlertDialog(
                  title: const Text('Data has been temporarily stored.'),
                  content: const Text('They are not uploaded yet. See the whole data in the next Page'),
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

          confirm.selectedTerm = filtersTerms;
          confirm.selectedTermId = filtersTermsId;
          print("$filtersTerms");

          confirm.selectedCategory = filtersCategories;
          confirm.selectedCategoryId = filtersCategoriesId;
          print("$filtersCategories");

        },
        label: const Text('Temporarily Save'),
      ),
    );
  }
}
