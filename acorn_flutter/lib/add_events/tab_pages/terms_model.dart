import 'dart:core';

import 'package:acorn_flutter/confirm/confirm.dart';
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:provider/provider.dart';

import '../../utils/chips_format.dart';

class TermsModel extends ChangeNotifier {
  List<String> options = ['Categories', 'Terms'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  var newCategory = '';
  List<Categories> listCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

  var newTerm = '';
  List<Terms> listTerms = [];
  final List<String> filtersTerms = <String>[];
  final List<int> filtersTermsId = <int>[];

  String _selectedCategory = '';
  int _selectedCategoryId = 0;
  String get selectedCategory => _selectedCategory;
  int get selectedCategoryId => _selectedCategoryId;

  set selectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  set selectedCategoryId(int value) {
    _selectedCategoryId = value;
    notifyListeners();
  }

  String _selectedTerm = '';
  int _selectedTermId = 0;
  String get selectedTerm => _selectedTerm;
  int get selectedTermId => _selectedTermId;

  set selectedTerm(String term) {
    _selectedTerm = term;
    notifyListeners();
  }

  set selectedTermId(int value) {
    _selectedTermId = value;
    notifyListeners();
  }

  fetchCategories() async {
    try {
      listCategories = await client.categories.getCategories();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  addCategoriesAndFetch(String newCategory) async {
    try {
      var categories = Categories(category: newCategory);
      listCategories =
          await client.categories.addAndReturnCategories(categories);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  fetchTerms() async {
    try {
      listTerms = await client.terms.getTerms();
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  addTermsAndFetch(String newTerm) async {
    try {
      var terms = Terms(term: newTerm);
      listTerms = await client.terms.addAndReturnTerms(terms);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Categories':
        await fetchCategories();
        break;
      case 'Terms':
        await fetchTerms();
        break;
    }
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Categories':
        newCategory = text;
        notifyListeners();
        break;
      case 'Terms':
        newTerm = text;
        notifyListeners();
        break;
    }
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Categories':
        await addCategoriesAndFetch(newCategory);
        break;
      case 'Terms':
        await addTermsAndFetch(newTerm);
        break;
    }
  }
  Widget buildItemWidget(dynamic item) {
    String itemType = _getItemType(item);
    switch (itemType) {
      case 'Category':
        return _buildFilterFormatImediat(
          filteredKeys: filtersCategories,
          filteredValues: filtersCategoriesId,
          filterKey: (item as Categories).category,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedCategory = key;
            selectedCategoryId = value;
          },
        );
      case 'Terms':
        return _buildFilterFormatImediat(
          filteredKeys: filtersTerms,
          filteredValues: filtersTermsId,
          filterKey: (item as Terms).term,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedTerm = key;
            selectedTermId = value;
          },
        );           
      default:
        return const SizedBox.shrink();
    }
  }

  String _getItemType(dynamic item) {
    if (item is Categories) return 'Categories';
    if (item is Terms) return 'Terms';
    return 'Unknown';
  }

  Widget _buildFilterFormatImediat({
    required List<String> filteredKeys,
    required List<int> filteredValues,
    required String filterKey,
    required int filterValue,
    required Function(String, int) onSelected,
  }) {
    return FilterFormatImediat(
        filteredImKeys: filteredKeys,
        filteredImValues: filteredValues,
        filterImKey: filterKey,
        filterImValue: filterValue,
        onSelected: onSelected);
  } 

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedCountries = filtersCategories;
    confirm.selectedCountriesId = filtersCategoriesId;
    print("pays:$filtersCategories");

    confirm.selectedPlaces = filtersTerms;
    confirm.selectedPlacesId = filtersTermsId;
    print("places:$filtersTerms");

  }         

  ///RadioButton
  String selectedOption = '';
  //String get selectedOption => _selectedOption;

/*   set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  } */
}
