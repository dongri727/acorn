import 'dart:ui';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/index.dart';
import 'package:acorn_flutter/search/multiple_search_model.dart';
import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../timeline/scalable.dart';
import '../unity_view/four_d_page.dart';
import '../unity_view/mr_page.dart';
import '../unity_view/three_d_page.dart';
import '../utils/blank_text_format.dart';
import '../utils/button_format.dart';
import '../utils/chips_format.dart';
import '../utils/tff_format.dart';
import 'result_page.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MultiSearchPage extends StatelessWidget {
  MultiSearchPage({super.key});

  final List<String> formats = [
    'CLASSIC',
    'SCALABLE',
    '3D',
    '4D',
    'MR',
  ];

  final List<String> options = [
    'Period',
    'Universe',
    'Stars',
    'Current Country where it happened',
    'Current Place-name where it happened',
    'Oceans',
    'Seas',
    'Country-name at that time',
    'Place-name at that time',
    'Countries involved',
    'Names of Countries involved at that time',
    'Stars Observed',
    'Organisations',
    'People',
    'Categories',
    'Other Terms'
  ];

  ///Period
  final List<String> period = [
    'Billion Years',
    'Million Years',
    'Thousand Years',
    'Years by Dating Methods',
    'Before-CommonEra',
    'Common-Era',
  ];
  final List<String> filtersPeriod = <String>[];

  ///Universe
  final List<String> universe = [
    'Universe',
    'Milky Way',
    'Other Galaxy',
    'Solar System',
  ];
  final List<String> filtersUniverse = <String>[];

  ///Pays
  List<String> pays = [
    'Antarctica',
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo, DR',
    'Congo, Republic of the',
    'Cook Islands',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Ivory Coast',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'Niue',
    'North Korea',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Korea',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'St. Kitts and Nevis',
    'St. Lucia',
    'St. Vincent and the Grenadines',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'UAE',
    'Uganda',
    'Ukraine',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Viet Nam',
    'Yemen',
    'Zambia',
    'Zimbabwe',
  ];
  final List<String> filtersPays = <String>[];

  ///Oceans
  List<String> oceans = <String>[
    'Arctic Ocean',
    'North Atlantic Ocean',
    'South Atlantic Ocean',
    'Indian Ocean',
    'North Pacific Ocean',
    'South Pacific Ocean',
    'Southern Ocean',
  ];
  final List<String> filtersOceans = <String>[];

  String? isSelectedFormat = 'CLASSIC';

  String? isSelectedOption = 'Period';

  List<dynamic> currentDisplayList = [];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MultipleSearchModel>(
      create: (_) => MultipleSearchModel(),
      child: Consumer<MultipleSearchModel>(builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push<String>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IndexPage(),
                    ));
              },
            ),
            title: const Text('Multiple Search Page'),
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/both.png'),
              fit: BoxFit.cover,
            )),
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
                              hintText: "Which display format do you prefer?",
                            ),
                          ),
                          Flexible(
                            child: RadioButtonRowFormat(
                                options: formats,
                                onChanged: (String? value) {
                                  isSelectedFormat = value;
                                  print("selected: $value");
                                }),
                          ),
                        ],
                      )),
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
                                  items: options.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                          style: AcornTheme
                                              .textTheme.headlineMedium,
                                          value),
                                    );
                                  }).toList()),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            child: ElevatedButton(
                              onPressed: () {
                                model.clearSearch();
                                currentDisplayList.clear();
                                filtersPeriod.clear();
                                filtersUniverse.clear();
                                filtersPays.clear();
                                filtersOceans.clear();
                              },
                              child: const Text("clear"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            child: ElevatedButton(
                              onPressed: () {
                                switch (isSelectedOption) {
                                  case 'Period':
                                    model.fetchPrincipalByPeriod(period: filtersPeriod);
                                    break;
                                  case 'Universe':
                                    model.fetchPrincipal(location: filtersUniverse);
                                    break;
                                  case 'Stars':
                                    model.fetchPrincipalByPrecise(precise: model.filtersStars);
                                    break;
                                  case 'Current Country where it happened':
                                    model.fetchPrincipal(location: filtersPays);
                                    break;
                                  case 'Current Place-name where it happened':
                                    model.fetchPrincipalByPrecise(precise: model.filtersVilles);
                                    break;
                                  case 'Oceans':
                                    model.fetchPrincipal(location: filtersOceans);
                                    break;
                                  case 'Seas':
                                    model.fetchPrincipalByPrecise(precise: model.filtersSeas);
                                    break;
                                  case 'Country-name at that time':
                                    model.fetchPrincipalByCattId(cattIds: model.filtersCattsId);
                                    break;
                                  case 'Place-name at that time':
                                    model.fetchPrincipalByPattId(pattIds: model.filtersPattsId);
                                    break;
                                  case 'Countries involved':
                                    model.fetchPrincipalByCInvolvedId(cInvolvedIds: model.filtersPaysInvId);
                                    break;
                                  case 'Names of Countries involved at that time':
                                    model.fetchPrincipalByAttInvolvedId(attsInvolvedIds: model.filtersPaysInvATTId);
                                    break;
                                  case 'Stars Observed':
                                    model.fetchPrincipalByStarsInvolvedId(starInvolvedIds: model.filtersStarsInvolvedId);
                                    break;
                                  case 'Organisations':
                                    model.fetchPrincipalByOrgsId(orgIds: model.filtersOrgsId);
                                    break;
                                  case 'People':
                                    model.fetchPrincipalByPersonId(personIds: model.filtersPeopleId);
                                    break;
                                  case 'Categories':
                                    model.fetchPrincipalByCategoryId(categoryIds: model.filtersCategoriesId);
                                    break;
                                  case 'Other Terms':
                                    model.fetchPrincipalByTermId(termIds: model.filtersTermsId);
                                    break;
                                }
                              },
                              child: const Text("submit"),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 6,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BlankTextFormat(
                                text: [
                              ...filtersPeriod,
                              ...filtersUniverse,
                              ...model.filtersStars,
                              ...filtersPays,
                              ...model.filtersVilles,
                              ...filtersOceans,
                              ...model.filtersSeas,
                              ...model.filtersCatts,
                              ...model.filtersPatts,
                              ...model.filtersPaysInv,
                              ...model.filtersPaysInvATT,
                              ...model.filtersStarsInvolved,
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
                                  case 'Period':
                                    currentDisplayList = period;
                                    model.updateDisplayList(period);
                                    break;
                                  case 'Universe':
                                    currentDisplayList = universe;
                                    model.updateDisplayList(universe);
                                    break;
                                  case 'Stars':
                                    await model.fetchStarsLookedFor();
                                    currentDisplayList = model.listStars;
                                    break;
                                  case 'Current Country where it happened':
                                    currentDisplayList = pays;
                                    model.updateDisplayList(pays);
                                    break;
                                  case 'Current Place-name where it happened':
                                    await model.fetchVillesLookedFor();
                                    currentDisplayList = model.listVilles;
                                    break;
                                  case 'Oceans':
                                    currentDisplayList = oceans;
                                    model.updateDisplayList(oceans);
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
                                    currentDisplayList = model.listPaysInv;
                                    break;
                                  case 'Names of Countries involved at that time':
                                    await model.fetchPaysInvolvedATTLookedFor();
                                    currentDisplayList = model.listPaysInvATT;
                                    break;
                                  case 'Stars Observed':
                                    await model.fetchStarsInvolvedLookedFor();
                                    currentDisplayList =
                                        model.listStarsInvolved;
                                    break;
                                  case 'Organisations':
                                    await model.fetchOrgsLookedFor();
                                    currentDisplayList =
                                        model.listOrganisations;
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
                              child: const Text(
                                'Show and Select your options',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 5.0, // Gap between FilterChips
                              children: currentDisplayList.map<Widget>((item) {
                                switch (isSelectedOption) {
                                  case 'Period':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: filtersPeriod,
                                        filterImSiKey: item,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedPeriod = filterImSiKey;
                                        });
                                  case 'Universe':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: filtersUniverse,
                                        filterImSiKey: item,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedUniverse =
                                              filterImSiKey;
                                        });
                                  case 'Stars':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: model.filtersStars,
                                        filterImSiKey: item.star,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedStar = filterImSiKey;
                                        });
                                  case 'Current Country where it happened':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: filtersPays,
                                        filterImSiKey: item,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedPays = filterImSiKey;
                                        });
                                  case 'Current Place-name where it happened':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: model.filtersVilles,
                                        filterImSiKey: item.place,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedPlace = filterImSiKey;
                                        });
                                  case 'Oceans':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: filtersOceans,
                                        filterImSiKey: item,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedOcean = filterImSiKey;
                                        });
                                  case 'Seas':
                                    return FilterFormatImediatSI(
                                        filteredImSiKeys: model.filtersSeas,
                                        filterImSiKey: item.sea,
                                        onSelectedSI: (filterImSiKey) {
                                          model.selectedSea = filterImSiKey;
                                        });
                                  case 'Country-name at that time':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersCatts,
                                        filteredImValues: model.filtersCattsId,
                                        filterImKey: item.countryatt,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedCatt = filterKey;
                                          model.selectedCattId = filterId;
                                          print(filterId);
                                        });
                                  case 'Place-name at that time':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersPatts,
                                        filteredImValues: model.filtersPattsId,
                                        filterImKey: item.placeatt,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedPatt = filterKey;
                                          model.selectedPattId = filterId;
                                        });
                                  case 'Countries involved':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersPaysInv,
                                        filteredImValues:
                                            model.filtersPaysInvId,
                                        filterImKey: item.pays,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedPays = filterKey;
                                          model.selectedPaysId = filterId;
                                        });
                                  case 'Names of Countries involved at that time':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersPaysInvATT,
                                        filteredImValues:
                                            model.filtersPaysInvATTId,
                                        filterImKey: item.countryatt,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedCountryInvolvedATT =
                                              filterKey;
                                          model.selectedCountryInvolvedATTId =
                                              filterId;
                                        });
                                  case 'Stars Observed':
                                    return FilterFormatImediat(
                                        filteredImKeys:
                                            model.filtersStarsInvolved,
                                        filteredImValues:
                                            model.filtersStarsInvolvedId,
                                        filterImKey: item.star,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedStarsInvolved =
                                              filterKey;
                                          model.selectedStarsInvolvedId =
                                              filterId;
                                        });
                                  case 'Organisations':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersOrgs,
                                        filteredImValues: model.filtersOrgsId,
                                        filterImKey: item.organisation,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedOrg = filterKey;
                                          model.selectedOrgId = filterId;
                                        });
                                  case 'People':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersPeople,
                                        filteredImValues: model.filtersPeopleId,
                                        filterImKey: item.person,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedPeople = filterKey;
                                          model.selectedPeopleId = filterId;
                                        });
                                  case 'Categories':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersCategories,
                                        filteredImValues:
                                            model.filtersCategoriesId,
                                        filterImKey: item.category,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedCategory = filterKey;
                                          model.selectedCategoryId = filterId;
                                        });
                                  case 'Other Terms':
                                    return FilterFormatImediat(
                                        filteredImKeys: model.filtersTerms,
                                        filteredImValues: model.filtersTermsId,
                                        filterImKey: item.term,
                                        filterImValue: item.id,
                                        onSelected: (filterKey, filterId) {
                                          model.selectedTerm = filterKey;
                                          model.selectedTermId = filterId;
                                        });
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
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended(
              onPressed: () {
                switch (isSelectedFormat) {
                  case 'CLASSIC':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(principal: model.principal)));
                    print('send: ${model.principal}');
                    break;
                  case 'SCALABLE':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scalable(principal: model.principal)));
                    print('send: ${model.principal}');
                    break;

                  case '3D':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThreeDViewPage(),
                        ));
                    break;

                  case '4D':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FourDViewPage(),
                        ));
                    break;

                  case 'MR':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MRViewPage(),
                        ));
                    break;
                }
              },
              label: const Text('SHOW'),
            ),
          ),
        );
      }),
    );
  }
}
