import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchCategoriesRepository {
  //List<Categories> listCategories = [];
  List<Detail> listDetailCategories = [];

/*  fetchCategories() async {
    try {
      listCategories = await client.categories.getCategories();
    } catch (e) {
      debugPrint('$e');
    }
  }*/

/*  //todo 複数語を同時に挿入できるようにする
  addCategoriesAndFetch(String newCategory) async {
    try {
      var categories = Categories(category: newCategory);
      listCategories =
      await client.categories.addAndReturnCategories(categories);
    } catch (e) {
      debugPrint('$e');
    }
  }*/

  ///get detail with genre
  fetchCategoriesInDetail() async {
    try {
      listDetailCategories = await client.detail.getDetailByGenre(genre: 'categories');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailCategoriesAndFetch(String categories, String newCategory) async {
    try {
      var detailCategories = Detail(genre: categories, mot: newCategory);
      listDetailCategories = await client.detail.addAndReturnDetailByGenre(detailCategories);
    } catch (e) {
      debugPrint('$e');
    }
  }
}