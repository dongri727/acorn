import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchUnivsRepository {
  List<Detail> listDetailUnivs = [];

  ///get detail with genre
  fetchUnivsInDetail() async {
    try {
      listDetailUnivs = await client.detail.getDetailByGenre(genre: 'universities');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailUnivsAndFetch(String univs, String newUnivs) async {
    try {
      var detailUnivs = Detail(genre: univs, mot: newUnivs);
      listDetailUnivs = await client.detail.addAndReturnDetailByGenre(detailUnivs);
    } catch (e) {
      debugPrint('$e');
    }
  }
}