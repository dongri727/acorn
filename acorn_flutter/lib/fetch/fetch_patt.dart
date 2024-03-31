import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchPattRepository {
  List<Detail> listDetailPatts= [];

  fetchPattsInDetail() async {
    try {
      listDetailPatts = await client.detail.getDetailByGenre(genre: 'placeatts');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規PATTを挿入・再取得･再描画
  addDetailPattsAndFetch(String placeatt, String newPlaceatt) async {
    try {
      var detailPatts = Detail(genre: placeatt, mot: newPlaceatt);
      listDetailPatts = await client.detail.addAndReturnDetailByGenre(detailPatts);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}