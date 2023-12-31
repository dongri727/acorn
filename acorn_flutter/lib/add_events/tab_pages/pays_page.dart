
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

  var newPlace = '';
  var newCATT = '';
  var newPATT = '';
  var newStar = '';

  List<String> options = [
    'Current Name of Country Involved',
    'Current Name of Place Involved',
    'Name of Country Involved at that time',
    'Name of Place Involved at that time',
    'Stars Observed'];
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
                                          BlankTextFormat(text: model.filtersPlaces.join(', ')),
                                          BlankTextFormat(text: model.filtersCATTs.join(', ')),
                                          BlankTextFormat(text: model.filtersPATTs.join(', ')),
                                          BlankTextFormat(text: model.filtersStars.join(', ')),
                                        ],
                                      )),
/*                                  Expanded(
                                    flex: 1,
                                      child: Container()),*/
                                ]),
                              Center(
                                child: ElevatedButton(
                                  child: const Text('Show and Select Options'),
                                  onPressed: () async {
                                    switch (isSelectedOption) {
                                      case 'Current Name of Country Involved':
                                        await model.fetchPaysInvolved();
                                        currentDisplayList = model.listPays;
                                        break;
                                      case 'Current Name of Place Involved':
                                        await model.fetchPlacesInvolved();
                                        currentDisplayList = model.listPlaces;
                                        break;
                                      case 'Name of Country Involved at that time':
                                        await model.fetchCountryAttInv();
                                        currentDisplayList = model.listCATTs;
                                        break;
                                      case 'Name of Place Involved at that time':
                                        await model.fetchPattInv();
                                        currentDisplayList = model.listPATTs;
                                        break;
                                      case 'Stars Observed':
                                        await model.fetchStarsObserved();
                                        currentDisplayList = model.listStars;
                                        break;
                                    }
                                  },
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(28.0),
                                child: FormatGreyEnable(
                                  enabled: isSelectedOption != 'Current Name of Country Involved',
                                  controller: controller,
                                  hintText: 'A New Name You Want',
                                  onChanged: (text) {
                                    if (isSelectedOption == 'Current Name of Place Involved') {
                                      newPlace = text;
                                    } else if (isSelectedOption == 'Country Name At That Time') {
                                      newCATT = text;
                                    } else if (isSelectedOption == 'Place Name At That Time') {
                                      newPATT = text;
                                    } else if (isSelectedOption == 'Stars Observed') {
                                      newStar = text;
                                    } else {
                                      return;
                                    }
                                  },
                                ),
                              ),
                              ButtonFormat(
                                  label: 'Add A New Name',
                                  onPressed: () async {
                                    if (isSelectedOption == 'Current Name of Place Involved') {
                                      await model.addPlaceAndFetch(newPlace);
                                      currentDisplayList = model.listPlaces;
                                    } else if (isSelectedOption == 'Country Name At That Time') {
                                      await model.addCountryATTandFetch(newCATT);
                                      currentDisplayList = model.listCATTs;
                                    } else if (isSelectedOption == 'Place Name At That Time') {
                                      await model.addPATTandFetch(newPATT);
                                      currentDisplayList = model.listPATTs;
                                    } else if (isSelectedOption == 'Stars Observed') {
                                      await model.addStarAndFetch(newStar);
                                      currentDisplayList = model.listStars;
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
                                      } else if (item is Places) {
                                        return FilterFormatImediat(
                                            filteredImKeys: model.filtersPlaces,
                                            filteredImValues: model.filtersPlacesId,
                                            filterImKey: item.place,
                                            filterImValue: item.id,
                                            onSelected: (filterKey, filterId) {
                                              model.selectedPlaceInv = filterKey;
                                              model.selectedPlaceInvId = filterId;
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
                                      } else if (item is Placeatts) {
                                        return FilterFormatImediat(
                                            filteredImKeys: model.filtersPATTs,
                                            filteredImValues: model.filtersPATTId,
                                            filterImKey: (item.placeatt),
                                            filterImValue: item.id,
                                            onSelected: (filterKey, filterId) {
                                              model.selectedPlaceInv = filterKey;
                                              model.selectedPlaceInvId = filterId;
                                            });
                                      }  else if (item is Stars) {
                                        return FilterFormatImediat(
                                            filteredImKeys: model.filtersStars,
                                            filteredImValues: model.filtersStarId,
                                            filterImKey: item.star,
                                            filterImValue: item.id,
                                            onSelected: (filterKey, filterId) {
                                              model.selectedStarInv = filterKey;
                                              model.selectedStarInvId = filterId;
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
              print("pays:${model.filtersPays}");

              confirm.selectedPlaces = model.filtersPlaces;
              confirm.selectedPlacesId = model.filtersPlacesId;
              print("places:${model.filtersPlaces}");

              confirm.selectedATT = model.filtersCATTs;
              confirm.selectedATTId = model.filtersCATTId;
              print("catt:${model.filtersCATTs}");

              confirm.selectedPATT = model.filtersPATTs;
              confirm.selectedPATTId = model.filtersPATTId;
              print("patt:${model.filtersPATTs}");

              confirm.selectedStar = model.filtersStars;
              confirm.selectedStarId = model.filtersStarId;
              print("stars:${model.filtersStars}");
            },
            label: const Text('Temporarily Save'),
          ));
      })
    );
  }
}
