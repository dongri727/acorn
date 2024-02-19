import 'dart:ui';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/index.dart';
import 'package:acorn_flutter/search/multiple_search_model.dart';
import 'package:acorn_flutter/utils/dropdown_button.format.dart';
import 'package:acorn_flutter/utils/shadowed_container.dart';
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
import '../lists/countries_list.dart';
import '../lists/period_list.dart';
import '../lists/universe_list.dart';
import '../lists/oceans_list.dart';

class MultiSearchPage extends StatelessWidget {
  const MultiSearchPage({super.key});

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
                            child: ShadowedContainer(
                              child: RadioButtonRowFormat(
                                  options: model.formats,
                                  onChanged: (String? value) {
                                    model.selectedFormat = value!;
                                    print("selected: $value");
                                  }),
                            ),
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
                            padding: const EdgeInsets.fromLTRB(80, 20, 20, 20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: const Color(0x99e6e6fa),
                              ),
                                child: ShadowedContainer(
                                  child: CustomDropdownButton(
                                    selectedValue: model.selectedOption,
                                    options: model.options,
                                    onChanged: (String? value) {
                                      model.selectedOption = value!;
                                      print("selected: $value");
                                    },
                                  ),
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: OutlinedButton(
                              onPressed: () async {
                                model.fetchRadioButtonBasis(model.selectedOption);
                              },
                              child: const Text(
                                'Show and Select your options',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 6,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(400, 8, 8, 8),
                                child: BlankTextFormat(
                                    text: [
                                  ...model.filtersPeriod,
                                  ...model.filtersUniverse,
                                  ...model.filtersStars,
                                  ...model.filtersPays,
                                  ...model.filtersVilles,
                                  ...model.filtersOceans,
                                  ...model.filtersSeas,
                                  ...model.filtersCatts,
                                  ...model.filtersPatts,
                                  ...model.filtersPaysInv,
                                  ...model.filtersPlaceInv,
                                  ...model.filtersPaysInvATT,
                                  ...model.filtersPlaceInvATT,
                                  ...model.filtersStarsObserved,
                                  ...model.filtersOrgs,
                                  ...model.filtersPeople,
                                  ...model.filtersCategories,
                                  ...model.filtersTerms,
                                ].join(', ')),
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                child: ElevatedButton(
                                  onPressed: () {
                                    model.submitSelection();
                                  },
                                  child: const Text("submit"),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 5.0, // Gap between FilterChips
                              children: model.currentDisplayList.map<Widget>((item) {
                                return model.buildItemWidget(item);
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
                model.navigateBasedOnSelection(context, model.selectedFormat);
              },
              label: const Text('SHOW'),
            ),
          ),
        );
      }),
    );
  }
}
