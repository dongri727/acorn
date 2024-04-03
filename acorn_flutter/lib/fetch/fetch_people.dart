import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchPeopleRepository {
  List<Detail> listDetailPeople = [];

  ///get detail with genre
  fetchPeopleInDetail() async {
    try {
      listDetailPeople = await client.detail.getDetailByGenre(genre: 'people');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailPeopleAndFetch(String people, String newPerson) async {
    try {
      var detailPeople = Detail(genre: people, mot: newPerson);
      listDetailPeople = await client.detail.addAndReturnDetailByGenre(detailPeople);
    } catch (e) {
      debugPrint('$e');
    }
  }
}