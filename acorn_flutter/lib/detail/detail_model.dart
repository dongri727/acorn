import 'dart:core';
import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/foundation.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../serverpod_client.dart';

class DetailModel extends ChangeNotifier {
  List<String> detailCatt = [];
  List<String> detailPatt =[];

  List<String> detailCountriesInv = [];
  List<String> detailPlacesInv = [];
  List<String> detailCattsInv = [];
  List<String> detailPattsInv = [];
  List<String> detailStars = [];

  List<String> detailOrgs = [];
  List<String> detailPeople = [];
  List<String> detailCategories = [];
  List<String> detailTerms = [];

  Future<void> fetchDetail(int principalId) async {
    try {
      var catt = await client.countryatts.getCattsByPrincipalId(principalId: principalId);
      detailCatt = catt.map((countryatts) => countryatts.countryatt).toList();
      var patt = await client.placeatts.getPattsByPrincipalId(principalId: principalId);
      detailPatt = patt.map((placeatts) => placeatts.placeatt).toList();

      var cinv = await client.pays.getPaysByPrincipalId(principalId: principalId);
      detailCountriesInv = cinv.map((pays) => pays.pays).toList();
      var pinv = await client.places.getPlacesByPrincipalId(principalId: principalId);
      detailPlacesInv = pinv.map((places) => places.place).toList();
      var cattsInv = await client.countryatts.getCattsInvByPrincipalId(principalId: principalId);
      detailCattsInv = cattsInv.map((countryatts) => countryatts.countryatt).toList();
      var pattsInv = await client.placeatts.getPattsInvByPrincipalId(principalId: principalId);
      detailPattsInv = pattsInv.map((placeatts) => placeatts.placeatt).toList();
      var stars = await client.stars.getStarsByPrincipalId(principalId: principalId);
      detailStars = stars.map((stars) => stars.star).toList();

      var organisations = await client.organisations.getOrgsByPrincipalId(principalId: principalId);
      detailOrgs = organisations.map((organisations) => organisations.organisation).toList();
      var people = await client.people.getPeopleByPrincipalId(principalId: principalId);
      detailPeople = people.map((people) => people.person).toList();
      var categories = await client.categories.getCategoriesByPrincipalId(principalId: principalId);
      detailCategories = categories.map((categories) => categories.category).toList();
      var terms = await client.terms.getTermsByPrincipalId(principalId: principalId);
      detailTerms = terms.map((terms) => terms.term).toList();
      notifyListeners();
    } catch (e) {
      debugPrint('Error fetching detail: $e');
    }
  }
}

