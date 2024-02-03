import 'package:acorn_flutter/add_events/tab_pages/terms_model.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../confirm/confirm.dart';
import '../../utils/blank_text_format.dart';
import '../../utils/confirm_dialog.dart';
import '../../utils/tff_format.dart';

String isSelectedOption = '';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

/*   var newCategory = '';
  List<Categories> listCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  var newTerm = '';
  List<Terms> listTerms = [];
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  List<String> options = ['Categories', 'Terms'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = []; */

  @override
  Widget build(BuildContext context) {
    //final confirm = Provider.of<Confirm>(context);
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
                            child: RadioButtonFormat(
                                options: model.options,
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
/*                             switch (isSelectedOption) {
                              case 'Categories':
                                await model.fetchCategories();
                                currentDisplayList = model.listCategories;
                                break;
                              case 'Terms':
                                await model.fetchTerms();
                                currentDisplayList = model.listTerms;
                                break;
                            } */
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: FormatGrey(
                        controller: controller,
                        hintText: 'A New Word You Want',
                        onChanged: (text) {
                          model.setNewWord(text);
/*                           switch (isSelectedOption) {
                            case 'Categories':
                              newCategory = text;
                              break;
                            case 'Terms':
                              newTerm = text;
                              break;
                          } */
                        },
                      ),
                    ),
                    ButtonFormat(
                      label: 'Add a New Word',
                      onPressed: () async {
                        model.addAndFetchRadioButtonBasis(model.selectedOption);
/*                         switch (isSelectedOption) {
                          case 'Categories':
                            await model.addCategoriesAndFetch(newCategory);
                            currentDisplayList = model.listCategories;
                            break;
                          case 'Terms':
                            await model.addTermsAndFetch(newTerm);
                            currentDisplayList = model.listTerms;
                            break;
                        } */
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
/*                             if (item is Categories) {
                              return FilterFormatImediat(
                                  filteredImKeys: model.filtersCategories,
                                  filteredImValues: model.filtersCategoriesId,
                                  filterImKey: item.category,
                                  filterImValue: item.id,
                                  onSelected: (filterKey, filterId) {
                                    model.selectedCategory = filterKey;
                                    model.selectedCategoryId = filterId;
                                  });
                            } else if (item is Terms) {
                              return FilterFormatImediat(
                                filteredImKeys: model.filtersTerms,
                                filteredImValues: model.filtersTermsId,
                                filterImKey: item.term,
                                filterImValue: item.id,
                                onSelected: (filterKey, filterId) {
                                  model.selectedTerm = filterKey;
                                  model.selectedTermId = filterId;
                                },
                              );
                            }
                            return const SizedBox.shrink(); */
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


