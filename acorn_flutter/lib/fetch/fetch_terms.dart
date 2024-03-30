import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchTermsRepository {
  //List<Terms> listTerms = [];
  List<Detail> listDetailTerms = [];

/*  fetchTerms() async {
    try {
      listTerms = await client.terms.getTerms();
    } catch (e) {
      debugPrint('$e');
    }
  }*/

/*  //todo 複数語を同時に挿入できるようにする
  addTermsAndFetch(String newTerm) async {
    try {
      var terms = Terms(term: newTerm);
      listTerms = await client.terms.addAndReturnTerms(terms);
    } catch (e) {
      debugPrint('$e');
    }
  }*/

  ///get detail with genre
  fetchTermsInDetail() async {
    try {
      listDetailTerms = await client.detail.getDetailByGenre(genre: 'terms');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailTermsAndFetch(String terms, String newTerm) async {
    try {
      var detailTerms = Detail(genre: terms, mot: newTerm);
      listDetailTerms = await client.detail.addAndReturnDetailByGenre(detailTerms);
    } catch (e) {
      debugPrint('$e');
    }
  }
}