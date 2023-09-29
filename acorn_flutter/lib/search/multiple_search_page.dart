import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../utils/chips_format.dart';
import '../utils/tff_format.dart';
import 'result_page.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MultiSearchPage extends StatefulWidget {
  const MultiSearchPage({super.key});

  @override
  State<MultiSearchPage> createState() => _MultiSearchPageState();
}

class _MultiSearchPageState extends State<MultiSearchPage> {

  final List<String> options = [
    'Current Country where it happened',
    'Current place-name where it happened',
    'Country-name at that time',
    'Place-name at that time',
    'Organisations',
    'People',
    'Categories',
    'Other Terms'
  ];
  String? isSelectedOption = 'Current Location where it happened';
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

  ///検索対象海域の現在名
  List<Seas> listSeas = [];
  List<Map<String, String>> displayListSeas = [];
  final List<String> filtersSeas = <String>[];
  final List<int> filtersSeasId = <int>[];

  ///当時の国名
  List<Countryatts> listCatts = [];
  List<Map<String, String>> displayListCatts = [];
  final List<String> filtersCatts = <String>[];
  final List<int> filtersCattsId = <int>[];

  ///当時の地名
  List<Placeatts> listPatts = [];
  List<Map<String, String>> displayListPatts = [];
  final List<String> filtersPatts = <String>[];
  final List<int> filtersPattsId = <int>[];

  ///検索対象の団体名
  List<Organisations> listOrganisations = [];
  List<Map<String, String>> displayListOrgs = [];
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  ///検索対象の人名
  List<People> listPeople = [];
  List<Map<String, String>> displayListPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  ///検索対象のカテゴリー名
  List<Categories> listCategories = [];
  List<Map<String, String>> displayListCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  ///その他の検索語
  List<Terms> listTerms = [];
  List<Map<String, String>> displayListTerms = [];
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];



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
                                      padding: const EdgeInsets.all(20.0),
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
                                              print(isSelectedOption);
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
                                        Map<String, dynamic> args = {};
                                        switch (isSelectedOption) {
                                          case 'Current Country where it happened':
                                            args['pays'] = filtersPays;
                                            print(args);
                                            break;
                                          case 'Current Place-name where it happened':
                                            args['listPlace'] = filtersVilles;
                                            break;
                                          case 'Current Sea-name where it happened':
                                            args['listSeaIds'] = filtersSeasId;
                                            break;
                                          case 'Country-name at that time':
                                            args['listCattIds'] = filtersCattsId;
                                            break;
                                          case 'Place-name at that time':
                                            args['listPattIds'] = filtersPattsId;
                                            break;
                                          case 'Organisations':
                                            args['listOrgIds'] = filtersOrgsId;
                                            break;
                                          case 'People':
                                            args['listPersonIds'] = filtersPeopleId;
                                            break;
                                          case 'Categories':
                                            args['listCategoriesIds'] = filtersCategoriesId;
                                            break;
                                          case 'Other Terms':
                                            args['listTermIds'] = filtersTermsId;
                                            break;
                                        }
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ResultPage(
                                                  listLocation: args['listLocation'],
                                                  listPrecise: args['listPrecise'],
                                                  listSeaIds: args['listSeaIds'],
                                                  listCattIds: args['listCattIds'] ,
                                                  listPattIds: args['listPattIds'],
                                                  listOrgIds: args['listOrgIds'],
                                                  listPersonIds: args['listPersonIds'] ,
                                                  listCategoryIds: args['listCategoriesIds'],
                                                  listTermIds: args['listTermIds'],
                                                    )
                                            ));
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
                                          filtersSeas.clear();
                                          filtersSeasId.clear();
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
                                          case 'Current Sea-name where it happened':
                                            fetchSeasLookingFor();
                                            currentDisplayList = listSeas;
                                            break;
                                          case 'Country-name at that time':
                                            fetchCattLookingFor();
                                            currentDisplayList = listCatts;
                                            break;
                                          case 'Place-name at that time':
                                            fetchPattLookingFor();
                                            currentDisplayList = listPatts;
                                            break;
                                          case 'Organisations':
                                            fetchOrgsLookingFor();
                                            currentDisplayList = listOrganisations;
                                            break;
                                          case 'People':
                                            fetchPeopleLookingFor();
                                            currentDisplayList = listPeople;
                                            break;
                                          case 'Categories':
                                            fetchCategoriesLookingFor();
                                            currentDisplayList = listCategories;
                                            break;
                                          case 'Other Terms':
                                            fetchTermsLookingFor();
                                            currentDisplayList = listTerms;
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
                                        } else if(item is Seas) {
                                          return FilterFormat(
                                              filteredKeys: filtersSeas,
                                              filteredValues: filtersSeasId,
                                              filterKey: item.sea,
                                              filterValue: item.id);
                                        } else if(item is Countryatts) {
                                          return FilterFormat(
                                              filteredKeys: filtersCatts,
                                              filteredValues: filtersCattsId,
                                              filterKey: item.countryatt,
                                              filterValue: item.id);
                                        } else if(item is Placeatts) {
                                          return FilterFormat(
                                              filteredKeys: filtersPatts,
                                              filteredValues: filtersPattsId,
                                              filterKey: item.placeatt,
                                              filterValue: item.id);
                                        } else if(item is Organisations) {
                                          return FilterFormat(
                                              filteredKeys: filtersOrgs,
                                              filteredValues: filtersOrgsId,
                                              filterKey: item.organisation,
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
                                        } else if(item is Terms) {
                                          return FilterFormat(
                                              filteredKeys: filtersTerms,
                                              filteredValues: filtersTermsId,
                                              filterKey: item.term,
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

  Future<void> fetchSeasLookingFor() async {
    try {
      listSeas = await client.seas.getSeas();
      setState(() {
        currentDisplayList = listSeas;
      });
      print(listSeas);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchCattLookingFor() async {
    try {
      listCatts = await client.countryatts.getCountryATTs();
      setState(() {
        currentDisplayList = listCatts;
      });
      print(listCatts);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchPattLookingFor() async {
    try {
      listPatts = await client.placeatts.getPlaceATTs();
      setState(() {
        currentDisplayList = listPatts;
      });
      print(listPatts);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchOrgsLookingFor() async {
    try {
      listOrganisations = await client.organisations.getOrganisations();
      setState(() {
        currentDisplayList = listOrganisations;
      });
      print(listOrganisations);
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

  Future<void> fetchTermsLookingFor() async {
    try {
      listTerms = await client.terms.getTerms();
      setState(() {
        currentDisplayList = listTerms;
      });
      print(listTerms);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

