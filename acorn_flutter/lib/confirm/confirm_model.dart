import 'dart:core';
import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'confirm.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class ConfirmModel extends ChangeNotifier {
  ConfirmModel();

  //insert into DB
  Future<int> save(Confirm confirm) async {
    if (confirm.year != 0 && confirm.name != "" && confirm.selectedLocation != "") {
      try {
        var principal = Principal(
            period: confirm.isSelectedCalendar,
            annee: confirm.annee,
            month: confirm.month,
            day: confirm.day,
            point: confirm.point,
            affair: confirm.name,
            location: confirm.selectedLocation,
            precise: confirm.selectedPrecise,
            latitude: confirm.latitude,
            longitude: confirm.longitude,
            three_d_x: confirm.x,
            three_d_y: confirm.y,
            three_d_z: confirm.z,
        );
        var principalId = await client.principal.addPrincipal(principal);

        debugPrint('Add principal : $principalId');

        //CATT 単
        if (confirm.selectedCattId != 0) {
            var pCatt = PrincipalCatt(
                principal_id: principalId, catt_id: confirm.selectedCattId);
            var principalCattsId = await client.principalCatt.addPCatt(pCatt);
            debugPrint('added principal-catt : $principalCattsId');
        }

        //PATT 単
        if (confirm.selectedPattId != 0) {
            var pPatt = PrincipalPatt(
              principal_id: principalId, patt_id: confirm.selectedPattId);
            var principalPattId = await client.principalPatt.addPPatt(pPatt);
            debugPrint('add principal-patt : $principalPattId');
        }

        ///participants A
        if (confirm.selectedCountriesId.isNotEmpty) {
          for (var countryId in confirm.selectedCountriesId) {
            var countryInvolved = CountryInvolved(
                principal_id: principalId, pays_id: countryId);
            var countryInvolvedId = await client.countryInvolved
                .addCInvolved(countryInvolved);
            debugPrint('Added country involved : $countryInvolvedId');
          }
        }

        if (confirm.selectedATTId.isNotEmpty) {
          for (var attId in confirm.selectedATTId) {
            var attsInvolved = AttsInvolved(
                principal_id: principalId, att_id: attId);
            var attInvolvedId = await client.attInvolved.addAttsInvolved(attsInvolved);
            debugPrint('Added Att involved : $attInvolvedId');
          }
        }

        if (confirm.selectedStarId.isNotEmpty) {
          for (var starId in confirm.selectedStarId) {
            var starsInvolved = StarsInvolved(
                principal_id: principalId, star_id: starId);
            var starInvolvedId = await client.starsInvolved.addStarsInvolved(starsInvolved);
            debugPrint('Added Star involved : $starInvolvedId');
          }
        }

        ///participants B
        if (confirm.selectedOrgId.isNotEmpty) {
          for (var orgId in confirm.selectedOrgId) {
            var pOrgs = PrincipalOrgs(
                principal_id: principalId, org_id: orgId);
            var principalOrgsId = await client.principalOrgs.addPOrgs(pOrgs);
            debugPrint('Added Orgs involved : $principalOrgsId');
          }
        }

        if (confirm.selectedWhoId.isNotEmpty) {
          for (var whoId in confirm.selectedWhoId) {
            var principalPeople = PrincipalPeople(
                principal_id: principalId, person_id: whoId);
            var principalPeopleId = await client.principalPeople.addPPeople(principalPeople);
            debugPrint('Added people involved : $principalPeopleId');
          }
        }

        ///terms
        if (confirm.selectedCategoryId.isNotEmpty) {
          for (var categoryId in confirm.selectedCategoryId) {
            var principalCategories = PrincipalCategories(
                principal_id: principalId, category_id: categoryId);
            var principalCategoriesId = await client.principalCategories.addPCategories(principalCategories);
            debugPrint('Added principal Categories : $principalCategoriesId');
          }
        }

        if (confirm.selectedTermId.isNotEmpty) {
          for (var termId in confirm.selectedTermId) {
            var principalTerms = PrincipalTerms(principal_id: principalId, term_id: termId);
            var principalTermsId = await client.principalTerms.addPrincipalTerms(principalTerms);
            debugPrint('Added principal Terms : $principalTermsId');
          }
        }

        return 0;

      } catch (e) {
        debugPrint('Error: $e');
        return 1;
      }
    } else {
      print("必須項目不足");
      return 2;
    }
  }
}
