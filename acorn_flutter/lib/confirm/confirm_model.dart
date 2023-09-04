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

  int annee = 0;
  String affair = "";
  String pays = "";

  String month = "";
  String jour = "";
  String localDate = "";

  String place = "";
  String att = "";

  double? latitude;
  double? longitude;
  final dx = 0.0;
  final dy = 0.0;
  final dz = 0.0;

  List<String> countriesInvolved = [];
  List<String> attsInvolved = [];
  List<String> orgs = [];
  List<String> people = [];
  List<String> categories = [];
  List<String> terms = [];

  //insert into DB
  Future<int> save(Confirm confirm) async {
    if (confirm.year != 0 && confirm.name != "" && confirm.country != "") {
      try {
        var principal = Principal(
            annee: confirm.year,
            affair: confirm.name,
            pays: confirm.country,
            placeId: confirm.selectedPlaceId,
        );
        var principalId = await client.principal.addPrincipal(principal);

        debugPrint('Add principal : $principalId');

        ///additional when
        if (confirm.isSelectedMonth != 'No-Month') {
          var months = Months(
              principal_id: principalId, month: confirm.isSelectedMonth!);
          var monthsId = await client.months.addMonths(months);

          debugPrint('Add month : $monthsId');
        }

        if (confirm.isSelectedDate != 'No-Date') {
          var days = Days(
              principal_id: principalId, day: confirm.isSelectedDate!);
          var daysId = await client.days.addDays(days);

          debugPrint('Add day : $daysId');
        }

        if (confirm.dateLocal != "No-Local-Date") {
          var localdates = LocalDates(
              principal_id: principalId, localdate: confirm.dateLocal!);
          var localdateId = await client.localDates.addLocalDates(localdates);

          debugPrint('Add localdate : $localdateId');
        }

/*        ///additional where
        if (confirm.selectedPlaceId.isNotEmpty) {
          for (var placeId in confirm.selectedPlaceId) {
            var principal = Principal(placeId: placeId);
            var principalId = await client.principalPlace
                .addPrincipalPlace(principalPlace);
            debugPrint('Added principal-place : $principalPlaceId');
          }
        }*/

/*        if (confirm.selectedPlaceId.isNotEmpty) {
          for (var placeId in confirm.selectedPlaceId) {
            var principalPlace = PrincipalPlace(
                principal_id: principalId, place_id: placeId);
            var principalPlaceId = await client.principalPlace
                .addPrincipalPlace(principalPlace);
            debugPrint('Added principal-place : $principalPlaceId');
          }
        }*/

        if (confirm.selectedSeaId.isNotEmpty) {
          for (var seaId in confirm.selectedSeaId) {
            var principalSeas = PrincipalSeas(
                principal_id: principalId, seas_id: seaId);
            var principalSeasId = await client.principalSeas.addPrincipalSeas(
                principalSeas);
            debugPrint('added principal-sea : $principalSeasId');
          }
        }

        if (confirm.selectedCattId.isNotEmpty) {
          for (var cattId in confirm.selectedCattId) {
            var pCatt = PrincipalCatt(
                principal_id: principalId, catt_id: cattId);
            var principalCattsId = await client.principalCatt.addPCatt(pCatt);
            debugPrint('added principal-catt : $principalCattsId');
          }
        }

        if (confirm.selectedPattId.isNotEmpty) {
          for (var pattId in confirm.selectedPattId) {
            var pPatt = PrincipalPatt(
              principal_id: principalId, patt_id: pattId);
            var principalPattId = await client.principalPatt.addPPatt(pPatt);
            debugPrint('add principal-patt : $principalPattId');
          }
        }

        if (confirm.latitude != null && confirm.longitude != null) {
          var lieux = Lieux(
            principal_id: principalId,
            latitude: confirm.latitude!,
            longitude: confirm.longitude!,
            three_d_x: confirm.x!,
            three_d_y: confirm.y!,
            three_d_z: confirm.z!,
          );
          var lieuxId = await client.lieux.addLieux(lieux);
          debugPrint('Add lieux : $lieuxId');
        }

        ///participants A
        if (confirm.selectedPaysId.isNotEmpty) {
          for (var countryId in confirm.selectedPaysId) {
            var countryInvolved = CountryInvolved(
                principal_id: principalId, pays_id: countryId);
            var countryInvolvedId = await client.countryInvolved
                .addCountryInvolved(countryInvolved);
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

        ///participants B
        if (confirm.selectedOrgId.isNotEmpty) {
          for (var orgId in confirm.selectedOrgId) {
            var principalOrgs = PrincipalOrgs(
                principal_id: principalId, org_id: orgId);
            var principalOrgsId = await client.principalOrgs.addPrincipalOrgs(principalOrgs);
            debugPrint('Added Orgs involved : $principalOrgsId');
          }
        }

        if (confirm.selectedWhoId.isNotEmpty) {
          for (var whoId in confirm.selectedWhoId) {
            var principalPeople = PrincipalPeople(
                principal_id: principalId, person_id: whoId);
            var principalPeopleId = await client.principalPeople.addPrincipalPeople(principalPeople);
            debugPrint('Added people involved : $principalPeopleId');
          }
        }

        ///terms
        if (confirm.selectedCategoryId.isNotEmpty) {
          for (var categoryId in confirm.selectedCategoryId) {
            var principalCategories = PrincipalCategories(
                principal_id: principalId, category_id: categoryId);
            var principalCategoriesId = await client.principalCategories.addPrincipalCategories(principalCategories);
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
      print("必須項目なし");
      return 2;
    }
  }
}
