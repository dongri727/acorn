import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchStarsRepository {
  List<Stars> listStars = [];

  fetchStars() async {
    try {
      listStars = await client.stars.getStars();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///DBに新規starを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addStarsAndFetch(String newStar) async {
    try {
      var stars = Stars(star: newStar);
      listStars = await client.stars.addAndReturnStars(stars);
    } catch (e) {
      debugPrint('$e');
    }
  }
}