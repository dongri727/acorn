import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchCattRepository {
  List<Detail> listDetailCatts = [];

  ///Gets Detail with genre.
  fetchCattsInDetail() async {
    try {
      listDetailCatts = await client.detail.getDetailByGenre(genre: 'countryatts');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///Adds and gets Detail with genre.
  addDetailCattsAndFetch(String countryatt, String newCatt) async {
    try {
      var detailCatts = Detail(genre: countryatt, mot: newCatt);
      listDetailCatts = await client.detail.addAndReturnDetailByGenre(detailCatts);
    } catch (e) {
      debugPrint('$e');
    }
  }

}