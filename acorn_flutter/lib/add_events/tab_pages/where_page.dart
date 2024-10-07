import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'package:acorn_flutter/add_events/tab_pages/where_model.dart';
import '../../confirm/confirm.dart';
import '../../confirm/confirm_model.dart';

class WherePageGate extends StatelessWidget {
  const WherePageGate({super.key});

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
    return ChangeNotifierProvider<ConfirmModel>(
        create: (_) => ConfirmModel(),
        child: Consumer<ConfirmModel>(
          builder: (_, model, __) {
            return Scaffold(
              body: SafeArea(
                  child: Center(
                child: Column(children: [
                  Expanded(
                      child: WherePage(
                    confirm: confirm,
                  )),
                ]),
              )),
            );
          },
        ));
  }
}

class WherePage extends StatelessWidget {
  const WherePage({super.key, required Confirm confirm}) /* : _confirm = confirm */;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final confirm = Provider.of<Confirm>(context); //for getting keyCountry

    return ChangeNotifierProvider<WhereModel>(
      create: (_) => WhereModel(keyArea: confirm.selectedLocation),
      child: Consumer<WhereModel>(builder: (_, model, child) {

        String locale = Localizations.localeOf(context).languageCode;

        List<String> optionsW;
        switch (locale) {
          case 'fr':
            optionsW = model.optionsFr;
            break;
          case 'ja':
            optionsW = model.optionsJa;
            break;
          default:
            optionsW = model.options;
        }
        return Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/both.png'),
                  fit: BoxFit.cover,
                )),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(100, 20, 20, 20),
                              child: ShadowedContainer(
                                child: RadioButtonFormat(
                                    options: optionsW,
                                    onChanged: (String? value) {
                                      model.selectedOption = value!;
                                    }),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 20, 20, 60),
                                    child: BlankTextFormat(
                                        text: model.locationPrecise),
                                  ),
                                  BlankTextFormat(text: model.chosenCatt),
                                  BlankTextFormat(text: model.chosenPatt),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 8, 100, 8),
                                  child: ShadowedContainer(
                                    child: RadioButtonRowFormat(
                                        options: model.ns,
                                        onChanged: (String? value) {
                                          model.selectedOption = value!;
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 8, 100, 8),
                                  child: ShadowedContainer(
                                    child: TffFormat(
                                      hintText: AppLocalizations.of(context)!.latitude,
                                      onChanged: (value) {
                                        model.nsSwitch(value);
                                      },
                                      tffColor1: Colors.black54,
                                      tffColor2: const Color(0x99e6e6fa),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 8, 100, 8),
                                  child: ShadowedContainer(
                                    child: RadioButtonRowFormat(
                                        options: model.ew,
                                        onChanged: (String? value) {
                                          model.selectedOption = value!;
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 8, 100, 40),
                                  child: ShadowedContainer(
                                    child: TffFormat(
                                      hintText: AppLocalizations.of(context)!.longitude,
                                      onChanged: (value) {
                                        model.ewSwitch(value);
                                      },
                                      tffColor1: Colors.black54,
                                      tffColor2: const Color(0x99e6e6fa),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                        Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              model.fetchRadioButtonBasis(model.selectedOption);
                            },
                            child: Text(AppLocalizations.of(context)!.showSelect),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
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
                        ButtonFormat(
                          onPressed: () async {
                            model.addAndFetchRadioButtonBasis(
                                model.selectedOption);
                            controller.clear();
                          },
                          label: AppLocalizations.of(context)!.addNewName,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Wrap(
                            spacing: 5.0,
                            children:
                                model.currentDisplayList.map<Widget>((item) {
                              return model.buildItemWidget(item);
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                model.temporarilySaveData((context) {
                  showDialog<void>(
                      context: context,
                      builder: (_) {
                        return const ConfirmDialog();
                      });
                }, context);
              },
              label: Text(AppLocalizations.of(context)!.saveTempo),
            ));
      }),
    );
  }
}
