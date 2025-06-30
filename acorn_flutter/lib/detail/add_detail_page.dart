import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'package:acorn_flutter/detail/add_detail_model.dart';

class AddDetailPage extends StatelessWidget {
  final int principalId;
  const AddDetailPage({super.key, required this.principalId});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<AddDetailModel>(
      create: (_) => AddDetailModel(principalId: principalId),
      child: Consumer<AddDetailModel>(builder: (_, model, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            leading: const PopBackButton(
              buttonText: 'back to the detail',
            ),
            leadingWidth: 150,
            title: const Text('Add Keywords'),
          ),
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
                                padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                                child: ShadowedContainer(
                                  child: RadioButtonFormat(
                                      options: model.options,
                                      onChanged: (String? value) {
                                        model.selectedOption = value!;
                                        print("selected: $value");
                                      }),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  BlankTextFormat(
                                      text: model.filtersGeoTime.join(', ')),
                                  BlankTextFormat(
                                      text: model.filtersArchaeTime.join(', ')),
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
                                  BlankTextFormat(text: model.filtersOrgs.join(', ')),
                                  BlankTextFormat(text: model.filtersUnivs.join(', ')),
                                  BlankTextFormat(text: model.filtersPublisher.join(', ')),
                                  BlankTextFormat(text: model.filtersPeople.join(', ')),
                                  BlankTextFormat(text: model.filtersShips.join(', ')),
                                  BlankTextFormat(
                                      text: model.filtersCategories.join(', ')),
                                  BlankTextFormat(
                                      text: model.filtersTerms.join(', ')),
                                ],
                              )),
                        ]),
                        Center(
                          child: ElevatedButton(
                            child: const Text('Show and Select Options'),
                            onPressed: () async {
                              await model
                                  .fetchRadioButtonBasis(model.selectedOption);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: ShadowedContainer(
                            child: FormatGrey(
                              controller: controller,
                              hintText: 'A New Word You Want',
                              onChanged: (text) {
                                model.setNewWord(text);
                              },
                            ),
                          ),
                        ),
                        Visibility(
                          visible: model.newPlace.trim().isNotEmpty
                              || model.newCATT.trim().isNotEmpty
                              || model.newPATT.trim().isNotEmpty
                              || model.newStar.trim().isNotEmpty
                              || model.newOrg.trim().isNotEmpty
                              || model.newUniv.trim().isNotEmpty
                              || model.newPublisher.trim().isNotEmpty
                              || model.newPerson.trim().isNotEmpty
                              || model.newShip.trim().isNotEmpty
                              || model.newCategory.trim().isNotEmpty
                              || model.newTerm.trim().isNotEmpty,
                          child: ButtonFormat(
                            label: 'Add a New Word',
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
                              children:
                              model.currentDisplayList.map<Widget>((item) {
                                return model.buildItemWidget(item);
                              }).toList(),
                            )),
                      ]),
                    ),
                  ),
                )),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () async {
                await model.savePrincipalDetail();
                if (!context.mounted) return;
                Navigator.of(context).pop();
                },
              label: const Text('Save New Keywords'),
            ));
      }),
    );
  }
}