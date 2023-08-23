/*
import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();

class Join {
 
///地名を絞って、中間tableにからprincipalに繋ぐ
///place
List<Places> _place = [];
List<Places> get place => _place;

fetchPlaces({String? place}) async {
  try{
    _place = await client.places.
}
}



///p-place
List<PrincipalPlace> _pPlace = [];
List<PrincipalPlace> get principalPlace => _pPlace;

fetchPrincipalPlace({int? placeId}) async {
  try {
    _pPlace = await client.principalPlace.getPrincipalPlace(keyword: placeId);
    notifyListeners();
  } on Exception catch (e) {
    debugPrint('$e');
  }
}
}
*/
