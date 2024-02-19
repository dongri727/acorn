import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchPattRepository {
  List<Placeatts> listPatt= [];

  fetchPatt() async {
    try {
      listPatt = await client.placeatts.getPlaceATTs();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規PATTを挿入・再取得･再描画
  addPlaceATTandFetch(String newPlaceatt) async {
    try {
      var patts = Placeatts(placeatt: newPlaceatt);
      listPatt = await client.placeatts.addAndGetPatts(patts);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}