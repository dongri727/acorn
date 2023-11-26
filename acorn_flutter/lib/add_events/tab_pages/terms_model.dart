import 'dart:core';

import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class TermsModel extends ChangeNotifier {

  List<Categories> listCategories = [];
  final List<String> filtersCategories = <String>[];
  final List<int> filtersCategoriesId = <int>[];

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
      //print(listCategories);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  addCategoriesAndFetch(String newCategory) async {
    try {
      var categories = Categories(category: newCategory);
      await client.categories.addCategories(categories);
      await fetchCategories();
      print(categories);
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

  addTermsAndFetch(String newTerm) async {
    try {
      var terms = Terms(term: newTerm);
      await client.terms.addTerms(terms);
      await fetchTerms();
      print(terms);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///RadioButton
  String _selectedOption = '';
  String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }

}