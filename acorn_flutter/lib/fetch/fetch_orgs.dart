import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchOrgsRepository {
  List<Detail> listDetailOrgs = [];

  ///get detail with genre
  fetchOrgsInDetail() async {
    try {
      listDetailOrgs = await client.detail.getDetailByGenre(genre: 'organisations');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailOrgsAndFetch(String orgs, String newOrgs) async {
    try {
      var detailOrgs = Detail(genre: orgs, mot: newOrgs);
      listDetailOrgs = await client.detail.addAndReturnDetailByGenre(detailOrgs);
    } catch (e) {
      debugPrint('$e');
    }
  }
}