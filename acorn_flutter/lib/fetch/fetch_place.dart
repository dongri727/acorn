import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchPlaceRepository{
  List<Places> listPlaces = [];

  ///DBからPlaceを取得
  fetchPlaces(keyCountry) async {
    try {
      listPlaces = await client.places.getPlaces(keyword: keyCountry);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  addPlacesAndFetch(String newPlace, String keyCountry) async {
    try {
      var places = Places(place: newPlace, country: keyCountry);
      var keyword = keyCountry;
      listPlaces =
      await client.places.addAndReturnPlacesWithKeyCountry(places, keyword);
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///国で絞らずに全ての地名を取得
  fetchVillesLookedFor() async {
    try {
      listPlaces = await client.places.getPlaces();
      print('getPlaces');
    } catch (e) {
      debugPrint('$e');
    }
  }


  ///国なしで登録・取得
  addVillesAndFetch(String newPlace) async {
    try {
      var places = Places(place: newPlace, country: 'blanc');
      var keyword = 'blanc';
      listPlaces =
      await client.places.addAndReturnPlaces(places);
    } catch (e) {
      debugPrint('$e');
    }
  }
}


