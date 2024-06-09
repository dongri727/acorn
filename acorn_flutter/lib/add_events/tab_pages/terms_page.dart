import 'package:acorn_flutter/exporter.dart';
import 'package:acorn_flutter/export_utils.dart';
import 'package:acorn_flutter/add_events/tab_pages/terms_model.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return ChangeNotifierProvider<TermsModel>(
      create: (_) => TermsModel(),
      child: Consumer<TermsModel>(builder: (_, model, child) {
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
                            padding: const EdgeInsets.fromLTRB(100, 20, 20, 20),
                            child: ShadowedContainer(
                              child: RadioButtonFormat(
                                  options: model.options,
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
                                  text: model.filtersCategories.join(', ')),
                              BlankTextFormat(
                                  text: model.filtersTerms.join(', ')),
                            ],
                          )),
                      Expanded(flex: 1, child: Container()),
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
                    ButtonFormat(
                      label: 'Add a New Word',
                      onPressed: () async {
                        model.addAndFetchRadioButtonBasis(model.selectedOption);
                        controller.clear();
                      },
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
              onPressed: () {
                  model.temporarilySaveData((context){
                    showDialog<void>(
                      context: context,
                      builder: (_) {
                        return const ConfirmDialog();
                      });
                }, context);
              },
              label: const Text('Temporarily Save'),
            ));
      }),
    );
  }
}


