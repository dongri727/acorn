import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'who_model.dart';

class WhoPage extends StatelessWidget {
  const WhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<WhoModel>(
      create: (_) => WhoModel(),
      child: Consumer<WhoModel>(builder: (_, model, child) {

        String locale = Localizations.localeOf(context).languageCode;

        List<String> optionsWho;
        switch (locale) {
          case 'fr':
            optionsWho = model.optionsFr;
            break;
          case 'ja':
            optionsWho = model.optionsJa;
            break;
          default:
            optionsWho = model.options;
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
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                            child: ShadowedContainer(
                              child: RadioButtonFormat(
                                  options: optionsWho,
                                  onChanged: (String? value) {
                                    model.selectedOption = value!;
                                  }),
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            BlankTextFormat(text: model.filtersOrgs.join(', ')),
                            BlankTextFormat(text: model.filtersUnivs.join(', ')),
                            BlankTextFormat(text: model.filtersPublisher.join(', ')),
                            BlankTextFormat(text: model.filtersPeople.join(', ')),
                            BlankTextFormat(text: model.filtersShips.join(', ')),
                          ],
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      child: Text(AppLocalizations.of(context)!.showSelect),
                      onPressed: () async {
                        model.fetchRadioButtonBasis(model.selectedOption);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: ShadowedContainer(
                      child: FormatGrey(
                        controller: controller,
                        hintText: AppLocalizations.of(context)!.newNameWant,
                        onChanged: (text) {
                          model.setNewWord(text);
                        },
                      ),
                    ),
                  ),
                  Visibility(
                    visible: model.newOrg.trim().isNotEmpty
                        || model.newUniv.trim().isNotEmpty
                        || model.newPublisher.trim().isNotEmpty
                        || model.newPerson.trim().isNotEmpty
                        || model.newShip.trim().isNotEmpty,
                    child: ButtonFormat(
                      label: AppLocalizations.of(context)!.addNewName,
                      onPressed: () async {
                        model.addAndFetchRadioButtonBasis(model.selectedOption);
                        controller.clear();
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Wrap(
                        spacing: 5.0,
                        children: model.currentDisplayList.map<Widget>((item) {
                          return model.buildItemWidget(item);
                        }).toList(),
                      )),
                ]),
              ),
            ),
          )),
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
          ),
        );
      }),
    );
  }
}
