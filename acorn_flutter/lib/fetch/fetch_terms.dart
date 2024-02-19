import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchTermsRepository {
  List<Terms> listTerms = [];

  fetchTerms() async {
    try {
      listTerms = await client.terms.getTerms();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  addTermsAndFetch(String newTerm) async {
    try {
      var terms = Terms(term: newTerm);
      listTerms = await client.terms.addAndReturnTerms(terms);
    } catch (e) {
      debugPrint('$e');
    }
  }
}