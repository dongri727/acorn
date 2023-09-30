import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/search/multiple_search_model.dart';
import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../utils/blank_text_format.dart';
import '../utils/chips_format.dart';
import '../utils/tff_format.dart';
import 'result_page.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MultiSearchPage extends StatelessWidget {
  MultiSearchPage({super.key});

  final List<String> options = [
    'Universe',
    'Stars',
    'Current Country where it happened',
    'Current Place-name where it happened',
    'Country-name at that time',
    'Place-name at that time',
    'Oceans',
    'Seas',
    'Countries involved',
    'Names of Countries involved at that time',
    'Organisations',
    'People',
    'Categories',
    'Other Terms'
  ];

  String? isSelectedOption = 'Universe';
  List<dynamic> currentDisplayList = [];

  final List<String> _filtersSearchingWords = <String>[];
  final List<int> _filtersSearchingWordsId = <int>[];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MultipleSearchModel>(
      create: (_) => MultipleSearchModel(),
      child: Consumer<MultipleSearchModel>(builder: (_, model, child) {
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
                                    onChanged: (String? value) {
                                        model.isSelectedOption = value!;
                                        isSelectedOption = value;
                                        print(isSelectedOption);
                                    },
                                    items: options.map<
                                        DropdownMenuItem<String>>((
                                        String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                            style: AcornTheme.textTheme
                                                .headlineMedium,
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
                                    case 'Universe':
                                      args['listLocation'] = model.filtersUniverse;
                                      print(args);
                                      break;
                                    case 'Stars':
                                      args['listPrecise'] = model.filtersStars;
                                      print(args);
                                      break;
                                    case 'Current Country where it happened':
                                      args['listLocation'] = model.filtersPays;
                                      print(args);
                                      break;
                                    case 'Current Place-name where it happened':
                                      args['listPrecise'] = model.filtersVilles;
                                      break;
                                    case 'Oceans':
                                      args['listLocation'] = model.filtersOceans;
                                      print(args);
                                      break;
                                    case 'Seas':
                                      args['listPrecise'] = model.filtersSeas;
                                      break;
                                    case 'Country-name at that time':
                                      args['listCattIds'] = model.filtersCattsId;
                                      break;
                                    case 'Place-name at that time':
                                      args['listPattIds'] = model.filtersPattsId;
                                      break;
                                    case 'Countries involved':
                                      args['listPaysInvolvedIds'] = model.filtersPaysInvolvedId;
                                      break;
                                    case 'Names of Countries involved at that time':
                                      args['listPaysInvolvedATTIds'] = model.filtersPaysInvolvedATTId;
                                      break;
                                    case 'Organisations':
                                      args['listOrgIds'] = model.filtersOrgsId;
                                      break;
                                    case 'People':
                                      args['listPersonIds'] = model.filtersPeopleId;
                                      break;
                                    case 'Categories':
                                      args['listCategoriesIds'] =
                                          model.filtersCategoriesId;
                                      break;
                                    case 'Other Terms':
                                      args['listTermIds'] = model.filtersTermsId;
                                      break;
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultPage(
                                                listLocation: args['listLocation'],
                                                listPrecise: args['listPrecise'],
                                                listSeaIds: args['listSeaIds'],
                                                listCattIds: args['listCattIds'],
                                                listPattIds: args['listPattIds'],
                                                listOrgIds: args['listOrgIds'],
                                                listPersonIds: args['listPersonIds'],
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
                                    model.clearSearch();
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
                              padding: const EdgeInsets.all(8.0),
                              child: BlankTextFormat(text: [
                                ...model.filtersUniverse,
                                ...model.filtersStars,
                                ...model.filtersPays,
                                ...model.filtersVilles,
                                ...model.filtersOceans,
                                ...model.filtersSeas,
                                ...model.filtersCatts,
                                ...model.filtersPatts,
                                ...model.filtersOrgs,
                                ...model.filtersPeople,
                                ...model.filtersCategories,
                                ...model.filtersTerms,
                              ].join(', ')),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: OutlinedButton(
                                onPressed: () async {
                                  switch (isSelectedOption) {
                                    case 'Universe':
                                      await model.fetchUniverseLookedFor();
                                      currentDisplayList = model.listUniverse;
                                      break;
                                    case 'Stars':
                                      await model.fetchStarsLookedFor();
                                      currentDisplayList = model.listStars;
                                      break;
                                    case 'Current Country where it happened':
                                      await model.fetchPaysLookedFor();
                                      currentDisplayList = model.listPays;
                                      break;
                                    case 'Current Place-name where it happened':
                                      await model.fetchVillesLookedFor();
                                      currentDisplayList = model.listVilles;
                                      break;
                                    case 'Oceans':
                                      await model.fetchOceansLookedFor();
                                      currentDisplayList = model.listOceans;
                                      break;
                                    case 'Seas':
                                      await model.fetchSeasLookedFor();
                                      currentDisplayList = model.listSeas;
                                      break;
                                    case 'Country-name at that time':
                                      await model.fetchCattLookedFor();
                                      currentDisplayList = model.listCatts;
                                      break;
                                    case 'Place-name at that time':
                                      await model.fetchPattLookedFor();
                                      currentDisplayList = model.listPatts;
                                      break;
                                    case 'Countries involved':
                                      await model.fetchPaysInvolvedLookedFor();
                                      currentDisplayList = model.listPaysInvolved;
                                      break;
                                    case 'Names of Countries involved at that time':
                                      await model.fetchPaysInvolvedATTLookedFor();
                                      currentDisplayList = model.listPaysInvolvedATT;
                                      break;
                                    case 'Organisations':
                                      await model.fetchOrgsLookedFor();
                                      currentDisplayList = model.listOrganisations;
                                      break;
                                    case 'People':
                                      await model.fetchPeopleLookedFor();
                                      currentDisplayList = model.listPeople;
                                      break;
                                    case 'Categories':
                                      await model.fetchCategoriesLookedFor();
                                      currentDisplayList = model.listCategories;
                                      break;
                                    case 'Other Terms':
                                      await model.fetchTermsLookedFor();
                                      currentDisplayList = model.listTerms;
                                      break;
                                  }
                                },
                                child: const Text('Show and Select your options',
                                style: TextStyle(
                                    color: Colors.white,
                                fontSize: 18),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                spacing: 5.0, // Gap between FilterChips
                                children: currentDisplayList.map<Widget>((
                                    item) {
                                  if (item is Pays) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersPays,
                                        filteredImValues: model.filtersPaysId,
                                        filterImKey: item.pays,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedPays = filterKey;
                                          model.selectedPaysId = filterId;
                                        },
                                    );
                                  } else if (item is Places) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersVilles,
                                        filteredImValues: model.filtersVillesId,
                                        filterImKey: item.place,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedPlace = filterKey;
                                          model.selectedPlaceId = filterId;
                                      },
                                    );
                                  } else if (item is Universe) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersUniverse,
                                        filteredImValues: model.filtersUniverseId,
                                        filterImKey: item.universe,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedUniverse = filterKey;
                                          model.selectedUniverseId = filterId;
                                        },
                                    );
                                  } else if (item is Stars) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersStars,
                                        filteredImValues: model.filtersSeasId,
                                        filterImKey: item.star,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedStar = filterKey;
                                          model.selectedStarId = filterId;
                                        },
                                    );
                                  } else if (item is Oceans) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersOceans,
                                        filteredImValues: model.filtersOceansId,
                                        filterImKey: item.ocean,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedOcean = filterKey;
                                          model.selectedOceanId = filterId;
                                        },
                                    );
                                  } else if (item is Seas) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersSeas,
                                        filteredImValues: model.filtersSeasId,
                                        filterImKey: item.sea,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedSea = filterKey;
                                          model.selectedSeaId = filterId;
                                        },
                                    );
                                  } else if (item is Countryatts) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersCatts,
                                        filteredImValues: model.filtersCattsId,
                                        filterImKey: item.countryatt,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedCatt = filterKey;
                                          model.selectedCattId = filterId;
                                        },
                                    );
                                  } else if (item is Placeatts) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersPatts,
                                        filteredImValues: model.filtersPattsId,
                                        filterImKey: item.placeatt,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedPatt = filterKey;
                                          model.selectedPattId = filterId;
                                        },
                                    );
                                  } else if (item is Organisations) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersOrgs,
                                        filteredImValues: model.filtersOrgsId,
                                        filterImKey: item.organisation,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedOrg = filterKey;
                                          model.selectedOrgId = filterId;
                                        },
                                    );
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
                                  } else if (item is Categories) {
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersCategories,
                                        filteredImValues: model.filtersCategoriesId,
                                        filterImKey: item.category,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedCategory = filterKey;
                                          model.selectedCategoryId = filterId;
                                        },
                                    );
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}

