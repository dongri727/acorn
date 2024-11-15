import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'package:acorn_flutter/add_events/tab_pages/pays_model.dart';

class PaysPage extends StatelessWidget {
  const PaysPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<PaysModel>(
        create: (_) => PaysModel(),
        child: Consumer<PaysModel>(builder: (_, model, child) {

          String locale = Localizations.localeOf(context).languageCode;

          List<String> options;
          switch (locale) {
            case 'fr':
              options = model.optionsFr;
              break;
            case 'ja':
              options = model.optionsJa;
              break;
            default:
              options = model.options;
          }
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
                          Row(children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      100, 20, 20, 20),
                                  child: ShadowedContainer(
                                    child: RadioButtonFormat(
                                        options: options,
                                        onChanged: (String? value) {
                                          model.selectedOption = value!;
                                        }),
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    BlankTextFormat(
                                        text: model.filtersPaysInv.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersPlaces.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersCATTs.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersPATTs.join(', ')),
                                    BlankTextFormat(
                                        text: model.filtersStars.join(', ')),
                                  ],
                                )),
                          ]),
                          Center(
                            child: ElevatedButton(
                              child: Text(AppLocalizations.of(context)!.showSelect),
                              onPressed: () async {
                                await model.fetchRadioButtonBasis(
                                    model.selectedOption);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: ShadowedContainer(
                              child: FormatGreyEnable(
                                enabled: model.selectedOption !=
                                    'Current Name of Country Involved',
                                controller: controller,
                                hintText: AppLocalizations.of(context)!.newNameWant,
                                onChanged: (text) {
                                  model.setNewWord(text);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Visibility(
                              visible: model.newPlace.trim().isNotEmpty
                                  || model.newCATT.trim().isNotEmpty
                                  || model.newPATT.trim().isNotEmpty
                                  || model.newStar.trim().isNotEmpty,
                              child: ButtonFormat(
                                  label: AppLocalizations.of(context)!.addNewName,
                                  onPressed: () async {
                                    model.addAndFetchRadioButtonBasis(
                                        model.selectedOption);
                                    controller.clear();
                                  }),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: SingleChildScrollView(
                                child: Wrap(
                                  spacing: 5.0,
                                  children: model.currentDisplayList
                                      .map<Widget>((item) {
                                    return model.buildItemWidget(item);
                                  }).toList(),
                                ),
                              )),
                        ]),
                      )))),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  model.temporarilySaveData((context){
                    showDialog<void>(
                      context: context,
                      builder: (_) {
                        return const ConfirmDialog();
                      });
                }, context);
                },
                label: Text(AppLocalizations.of(context)!.saveTempo),
              ));
        }));
  }
}
