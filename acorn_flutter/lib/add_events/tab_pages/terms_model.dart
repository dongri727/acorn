import 'dart:core';

import 'package:acorn_flutter/confirm/confirm.dart';
import 'package:acorn_flutter/fetch/fetch_categories.dart';
import 'package:acorn_flutter/fetch/fetch_terms.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:provider/provider.dart';
import '../../utils/build_chips.dart';


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
        await _fetchCategoriesRepository.fetchCategories();
        currentDisplayList = _fetchCategoriesRepository.listCategories;
        break;
      case 'Terms':
        await _fetchTermsRepository.fetchTerms();
        currentDisplayList = _fetchTermsRepository.listTerms;
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
        await _fetchCategoriesRepository.addCategoriesAndFetch(newCategory);
        currentDisplayList = _fetchCategoriesRepository.listCategories;
        break;
      case 'Terms':
        await _fetchTermsRepository.addTermsAndFetch(newTerm);
        currentDisplayList = _fetchTermsRepository.listTerms;
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
          filterKey: (item as Categories).category,
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
          filterKey: (item as Terms).term,
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
    print("pays:$filtersCategories");

    confirm.selectedTerm = filtersTerms;
    confirm.selectedTermId = filtersTermsId;
    print("places:$filtersTerms");

  }
}
