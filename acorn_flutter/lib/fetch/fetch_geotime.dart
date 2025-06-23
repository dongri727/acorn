import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchGeoTimeRepository {
  List<Detail> listDetailGeoTime = [];

  ///get detail with genre
  fetchGeoTimeInDetail() async {
    try {
      listDetailGeoTime = await client.detail.getDetailByGenre(genre: 'geologic_time_scale');
    } catch (e) {
      debugPrint('$e');
    }
  }

/*  ///geoTime must not be added
  addDetailCategoriesAndFetch(String categories, String newCategory) async {
    try {
      var detailCategories = Detail(genre: categories, mot: newCategory);
      listDetailCategories = await client.detail.addAndReturnDetailByGenre(detailCategories);
    } catch (e) {
      debugPrint('$e');
    }
  }*/
}