import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/export/export_utils.dart';
import 'dart:core';
import 'package:acorn_flutter/confirm/confirm.dart';
import 'package:acorn_flutter/fetch/fetch_categories.dart';
import 'package:acorn_flutter/fetch/fetch_terms.dart';
import 'package:acorn_client/acorn_client.dart';

class TermsModel extends ChangeNotifier {

  late final FetchCategoriesRepository _fetchCategoriesRepository;
  late final FetchTermsRepository _fetchTermsRepository;

  TermsModel(){
    _fetchCategoriesRepository = FetchCategoriesRepository();
    _fetchTermsRepository = FetchTermsRepository();
  }

  ///RadioButton
  String selectedOption = '';

  List<String> options = ['Categories', 'Terms'];
  List<dynamic> currentDisplayList = [];

  var newCategory = '';
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  var newTerm = '';
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  String selectedCategory = '';
  int selectedCategoryId = 0;

  String selectedTerm = '';
  int selectedTermId = 0;

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Categories':
        await _fetchCategoriesRepository.fetchCategoriesInDetail();
        currentDisplayList = _fetchCategoriesRepository.listDetailCategories;
        break;
      case 'Terms':
        await _fetchTermsRepository.fetchTermsInDetail();
        currentDisplayList = _fetchTermsRepository.listDetailTerms;
        break;
    }
    notifyListeners();
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Categories':
        newCategory = text;
        break;
      case 'Terms':
        newTerm = text;
        break;
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Categories':
        await _fetchCategoriesRepository.addDetailCategoriesAndFetch('categories', newCategory);
        currentDisplayList = _fetchCategoriesRepository.listDetailCategories;
        break;
      case 'Terms':
        await _fetchTermsRepository.addDetailTermsAndFetch('terms', newTerm);
        currentDisplayList = _fetchTermsRepository.listDetailTerms;
        break;
    }
    notifyListeners();
  }
  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Categories':
        return buildFilterFormatImediat(
          filteredKeys: filtersCategories,
          filteredValues: filtersCategoriesId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedCategory = key;
            selectedCategoryId = value;
            updateSelectedCategory(key);
          },
        );
      case 'Terms':
        return buildFilterFormatImediat(
          filteredKeys: filtersTerms,
          filteredValues: filtersTermsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedTerm = key;
            selectedTermId = value;
            updateSelectedTerm(key);
          },
        );           
      default:
        return const SizedBox.shrink();
    }
  }

  void updateSelectedCategory(String newSelectedCategory) {
    selectedCategory = newSelectedCategory;
    notifyListeners();
  }

  void updateSelectedTerm(String newSelectedTerm) {
    selectedTerm = newSelectedTerm;
    notifyListeners();
  }

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedCategory = filtersCategories;
    confirm.selectedCategoryId = filtersCategoriesId;

    confirm.selectedTerm = filtersTerms;
    confirm.selectedTermId = filtersTermsId;

  }
}
