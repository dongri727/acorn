import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchPublisherRepository {
  List<Detail> listDetailPublisher = [];

  ///get detail with genre
  fetchPublisherInDetail() async {
    try {
      listDetailPublisher = await client.detail.getDetailByGenre(genre: 'publisher');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailPublisherAndFetch(String publisher, String newPublisher) async {
    try {
      var detailPublisher = Detail(genre: publisher, mot: newPublisher);
      listDetailPublisher = await client.detail.addAndReturnDetailByGenre(detailPublisher);
    } catch (e) {
      debugPrint('$e');
    }
  }
}