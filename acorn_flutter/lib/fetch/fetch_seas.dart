import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchSeasRepository {
  List<Seas> listSeas = [];

  fetchSeas() async {
    try {
      listSeas = await client.seas.getSeas();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規seaを挿入・再取得･再描画
  addSeasAndFetch(String newSea, String keyArea) async {
    try {
      var seas = Seas(sea: newSea, area: keyArea);
      listSeas = await client.seas.addAndReturnSeas(seas);
    } catch (e) {
      debugPrint('$e');
    }
  }
}