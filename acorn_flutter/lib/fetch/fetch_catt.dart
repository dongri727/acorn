import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchCattRepository {
  List<Countryatts> listCatt= [];

  fetchCatt() async {
    try {
      listCatt = await client.countryatts.getCountryATTs();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///CATT
  ///DBに新規CATTを挿入・再取得･再描画
  //todo 複数語を同時に挿入できるようにする
  addCountryATTandFetch(String newPaysatt) async {
    try {
      var catts = Countryatts(countryatt: newPaysatt);
      listCatt = await client.countryatts.addAndReturnCatts(catts);
    } catch (e) {
      debugPrint('$e');
    }
  }

/*  fetchPaysInvolvedATTLookedFor() async {
    try {
      listPaysInvATT = await client.countryatts.getCountryATTs();
      print(listPaysInvATT);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }*/

//todo 複数語同時挿入に対応する
/*  addCountryATTandFetch(String newCATT) async {
    List<string> newCatts = newCATT.split(,).map((s) => s.trim()).toList();
    try {
      var catts = Countryatts(countryatt: newCatts);
      await client.countryatts.addListAndGetCatts(catts);
      print(catts);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }*/
}