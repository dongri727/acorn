import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchStarsRepository {
  //List<Stars> listStars = [];
  List<Detail> listDetailStars = [];

/*  ///fetch simple stars for place precise
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
  }*/

  ///fetch stars in detail for keywords
  fetchStarsInDetail() async {
    try {
      listDetailStars = await client.detail.getDetailByGenre(genre: 'stars_involved');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get stars in detail for keywords
  addDetailStarsAndFetch(String starsInvolved, String newStar) async {
    try {
      var detailStars = Detail(genre: starsInvolved, mot: newStar);
      listDetailStars = await client.detail.addAndReturnDetailByGenre(detailStars);
    } catch (e) {
      debugPrint('$e');
    }
  }

}