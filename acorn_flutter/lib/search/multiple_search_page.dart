import 'dart:developer';
import 'dart:ui';

import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../utils/chips_format.dart';
import '../utils/tff_format.dart';
import 'result_page.dart';
import 'search_by_pays.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MultiSearchPage extends StatefulWidget {
  const MultiSearchPage({super.key});

  @override
  State<MultiSearchPage> createState() => _MultiSearchPageState();
}

class _MultiSearchPageState extends State<MultiSearchPage> {

  //final SearchByPays searchByPays = SearchByPays(client);

  final List<String> options = [
    'Current Country where it happened',
    'Current Place-name where it happened',
    'People involved',
    'Category'
  ];
  String? isSelectedOption = 'Current Country where it happened';
  List<dynamic> currentDisplayList = [];

  ///検索対象国の現在名
  List<Pays> listPays = [];
  List<Map<String, String>> displayListPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  ///検索対象都市の現在名
  List<Places> listVilles = [];
  List<Map<String, String>> displayListVilles = [];
  final List<String> filtersVilles = <String>[];
  final List<int> filtersVillesId = <int>[];

  ///検索対象のカテゴリー名
  List<Categories> listCategories = [];
  List<Map<String, String>> displayListCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  ///検索対象の人名
  List<People> listPeople = [];
  List<Map<String, String>> displayListPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  @override
  Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Multiple Search Page'),
              ),
              body: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/both.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: HintText(
                                      hintText: "What narrows your search ?",
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(20.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: const Color(0x99e6e6fa),
                                      ),
                                      child: DropdownButton<String>(
                                        value: isSelectedOption,
                                        alignment: Alignment.center,
                                        dropdownColor: const Color(0x99e6e6fa),
                                        borderRadius: BorderRadius.circular(15.0),
                                          onChanged: (String? value){
                                            setState(() {
                                              isSelectedOption = value!;
                                            });
                                          },
                                          items: options.map<DropdownMenuItem<String>>((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                              child: Text(
                                                style: AcornTheme.textTheme.headlineMedium,
                                                value),
                                          );
                                        }).toList()
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        switch (isSelectedOption) {
                                          case 'Current Country where it happened':
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultPage(
                                                          listPays: filtersPays),
                                                )
                                            );
                                            break;
                                          case 'Current Place-name where it happened':
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                builder: (context) =>
                                                ResultPage(
                                                    listPlaceIds: filtersVillesId),
                                                )
                                            );
                                            break;
                                          case 'Category':
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultPage(
                                                          listCategoriesId: filtersCategoriesId),
                                                )
                                            );
                                            break;
                                          case 'People involved':
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultPage(
                                                          listCategoriesId: filtersPeopleId),
                                                )
                                            );
                                            break;
                                        }
                                      },
                                        child: const Text("Search"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          filtersPays.clear();
                                          filtersPaysId.clear();
                                          filtersVilles.clear();
                                          filtersVillesId.clear();
                                          filtersCategories.clear();
                                          filtersCategoriesId.clear();
                                          filtersPeople.clear();
                                          filtersPeopleId.clear();
                                          currentDisplayList.clear();
                                        });
                                      },
                                      child: const Text("clear"),
                                    ),
                                  ),
                                ],

                              )),
                          Expanded(
                            flex: 5,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                    child: OutlinedButton(
                                      onPressed: () {
                                        switch (isSelectedOption){
                                          case 'Current Country where it happened':
                                            fetchPaysLookingFor();
                                            currentDisplayList = listPays;
                                            break;
                                          case 'Current Place-name where it happened':
                                            fetchVillesLookingFor();
                                            currentDisplayList = listVilles;
                                            break;
                                          case 'Category':
                                            fetchCategoriesLookingFor();
                                            currentDisplayList = listCategories;
                                            break;
                                          case 'People involved':
                                            fetchPeopleLookingFor();
                                            currentDisplayList = listPeople;
                                            break;
                                        }
                                      },
                                      child: const Text('Show and Select your options'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      spacing: 5.0, // Gap between FilterChips
                                      children: currentDisplayList.map<Widget>((item) {
                                        if (item is Pays) {
                                          return FilterFormat(
                                              filteredKeys: filtersPays,
                                              filteredValues: filtersPaysId,
                                              filterKey: item.pays,
                                              filterValue: item.id);
                                        } else if(item is Places) {
                                          return FilterFormat(
                                              filteredKeys: filtersVilles,
                                              filteredValues: filtersVillesId,
                                              filterKey: item.place,
                                              filterValue: item.id);
                                        } else if (item is People) {
                                          return FilterFormat(
                                              filteredKeys: filtersPeople,
                                              filteredValues: filtersPeopleId,
                                              filterKey: item.person,
                                              filterValue: item.id);
                                        } else if (item is Categories) {
                                          return FilterFormat(
                                              filteredKeys: filtersCategories,
                                              filteredValues: filtersCategoriesId,
                                              filterKey: item.category,
                                              filterValue: item.id);
                                        }
                                        return const SizedBox.shrink();
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> fetchPaysLookingFor() async {
    try {
      listPays = await client.pays.getPays();
      setState(() {
        currentDisplayList = listPays;
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchVillesLookingFor() async {
    try {
      listVilles = await client.places.getPlaces();
      setState(() {
        currentDisplayList = listVilles;
      });
      print(listVilles);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchCategoriesLookingFor() async {
    try {
      listCategories = await client.categories.getCategories();
      setState(() {
        currentDisplayList = listCategories;
      });
      print(listCategories);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchPeopleLookingFor() async {
    try {
      listPeople = await client.people.getPeople();
      setState(() {
        currentDisplayList = listPeople;
      });
      print(listPeople);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

