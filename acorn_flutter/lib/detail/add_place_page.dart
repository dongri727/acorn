import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'package:acorn_flutter/detail/detail_page.dart';
import 'add_place_moddel.dart';


class AddPlacePage extends StatelessWidget {
  final int principalId;
  final String location;

  const AddPlacePage({super.key, required this.principalId, required this.location});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<AddPlaceModel>(
      create: (_) => AddPlaceModel(keyArea: location),
      child: Consumer<AddPlaceModel>(builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar (
            backgroundColor: Colors.grey[200],
            leading: const PopBackButton(
              buttonText: 'back to the detail',
            ),
            leadingWidth: 150,
            title: const Text('Add place where it happened'),
          ),
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
                                    options: model.options,
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
                                      hintText: "Latitude",
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
                                      hintText: "Longitude",
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
                            child: const Text('Show and Select Options'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: ShadowedContainer(
                            child: FormatGrey(
                              controller: controller,
                              hintText: 'a New Name You Want',
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
                          label: 'Add a New Name',
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
              onPressed: () async {
                await model.savePrecise(principalId, model.locationPrecise);
                if (!context.mounted) return;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage(principalData: model.principalData!)));
              },
              label: const Text('save detailed location'),
            ));
      }),
    );
  }
}