import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'package:acorn_flutter/index.dart';
import 'package:acorn_flutter/search/multiple_search_model.dart';

class MultiSearchPage extends StatelessWidget {
  const MultiSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MultipleSearchModel>(
      create: (_) => MultipleSearchModel(),
      child: Consumer<MultipleSearchModel>(builder: (_, model, child) {
        String locale = Localizations.localeOf(context).languageCode;

        List<String> optionsS;
        switch (locale) {
          case 'fr':
            optionsS = model.optionsFr;
            break;
          case 'ja':
            optionsS = model.optionsJa;
            break;
          default:
            optionsS = model.options;
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            leading: NavigationButton(
              destinationPage: const IndexPage(),
              buttonText: AppLocalizations.of(context)!.tabTopB,
            ),
            leadingWidth: 100,
            title: Text(AppLocalizations.of(context)!.searchA),
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
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: HintText(
                              hintText: AppLocalizations.of(context)!.searchB,
                            ),
                          ),
                          Flexible(
                            child: ShadowedContainer(
                              child: RadioButtonRowFormat(
                                initialOption: 'CLASSIC',
                                  options: model.formats,
                                  onChanged: (String? value) {
                                    model.selectedFormat = value!;
                                  }),
                            ),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: HintText(
                              hintText: AppLocalizations.of(context)!.searchD,
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
                                    options: optionsS,
                                    onChanged: (String? value) {
                                      model.selectedOption = value!;
                                    },
                                  ),
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: OutlinedButton(
                              onPressed: () async {
                                model.fetchDropdownButtonBasis(model.selectedOption);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.searchE,
                                style: const TextStyle(
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
                                  ...model.filtersUnivs,
                                      ...model.filtersPublisher,
                                  ...model.filtersPeople,
                                      ...model.filtersShips,
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
                                  child: Text(AppLocalizations.of(context)!.searchF),
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
