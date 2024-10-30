import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchShipsRepository {
  List<Detail> listDetailShips = [];

  ///get detail with genre
  fetchShipsInDetail() async {
    try {
      listDetailShips = await client.detail.getDetailByGenre(genre: 'ships');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailShipsAndFetch(String ships, String newPerson) async {
    try {
      var detailShips = Detail(genre: ships, mot: newPerson);
      listDetailShips = await client.detail.addAndReturnDetailByGenre(detailShips);
    } catch (e) {
      debugPrint('$e');
    }
  }
}