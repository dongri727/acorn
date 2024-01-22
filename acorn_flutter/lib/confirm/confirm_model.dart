import 'dart:core';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'confirm.dart';
import 'package:acorn_flutter/serverpod_client.dart';

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
        );
        var principalId = await client.principal.addPrincipal(principal);
        debugPrint('Add principal : $principalId');

        //with map
        var withMap = WithMap(
            principalId: principalId!,
            annee: confirm.annee,
            affair: confirm.name,
            location: confirm.selectedLocation,
            precise: confirm.selectedPrecise,
            latitude: confirm.latitude,
            longitude: confirm.longitude,
            logarithm: confirm.logarithm);
        var withMapId = await client.withMap.addWithMap(withMap);
        debugPrint('add WithMap : $withMapId');

        //with globe
        var withGlobe = WithGlobe(
            principalId: principalId,
            annee: confirm.annee,
            affair: confirm.name,
            location: confirm.selectedLocation,
            precise: confirm.selectedPrecise,
            xCoordinate: confirm.x,
            yCoordinate: confirm.y,
            zCoordinate: confirm.z,
          coefficient: confirm.coefficient);
        var withGlobeId = await client.withGlobe.addWithGlobe(withGlobe);
        debugPrint('add WithGlobe : $withGlobeId');

        //CATT 単
        if (confirm.selectedCattId != 0) {
            var pCatt = PrincipalCatt(
                principalId: principalId, cattId: confirm.selectedCattId);
            var principalCattsId = await client.principalCatt.addPCatt(pCatt);
            debugPrint('added principal-catt : $principalCattsId');
        }

        //PATT 単
        if (confirm.selectedPattId != 0) {
            var pPatt = PrincipalPatt(
              principalId: principalId, pattId: confirm.selectedPattId);
            var principalPattId = await client.principalPatt.addPPatt(pPatt);
            debugPrint('add principal-patt : $principalPattId');
        }

        ///participants A
        if (confirm.selectedCountriesId.isNotEmpty) {
          for (var countryId in confirm.selectedCountriesId) {
            var countryInvolved = CountryInvolved(
                principalId: principalId, paysId: countryId);
            var countryInvolvedId = await client.countryInvolved
                .addCInvolved(countryInvolved);
            debugPrint('Added country involved : $countryInvolvedId');
          }
        }

        if (confirm.selectedPlacesId.isNotEmpty) {
          for (var placeId in confirm.selectedPlacesId) {
            var placeInvolved = PrincipalPlace(
                principalId: principalId, placeId: placeId);
            var placeInvolvedId = await client.principalPlace
                .addPPlace(placeInvolved);
            debugPrint('Added country involved : $placeInvolvedId');
          }
        }

        if (confirm.selectedATTId.isNotEmpty) {
          for (var attId in confirm.selectedATTId) {
            var attsInvolved = AttsInvolved(
                principalId: principalId, attId: attId);
            var attInvolvedId = await client.attInvolved.addAttsInvolved(attsInvolved);
            debugPrint('Added Att involved : $attInvolvedId');
          }
        }

        if (confirm.selectedStarId.isNotEmpty) {
          for (var starId in confirm.selectedStarId) {
            var starsInvolved = StarsInvolved(
                principalId: principalId, starId: starId);
            var starInvolvedId = await client.starsInvolved.addStarsInvolved(starsInvolved);
            debugPrint('Added Star involved : $starInvolvedId');
          }
        }

        ///participants B
        if (confirm.selectedOrgId.isNotEmpty) {
          for (var orgId in confirm.selectedOrgId) {
            var pOrgs = PrincipalOrgs(
                principalId: principalId, orgId: orgId);
            var principalOrgsId = await client.principalOrgs.addPOrgs(pOrgs);
            debugPrint('Added Orgs involved : $principalOrgsId');
          }
        }

        if (confirm.selectedWhoId.isNotEmpty) {
          for (var whoId in confirm.selectedWhoId) {
            var principalPeople = PrincipalPeople(
                principalId: principalId, personId: whoId);
            var principalPeopleId = await client.principalPeople.addPPeople(principalPeople);
            debugPrint('Added people involved : $principalPeopleId');
          }
        }

        ///terms
        if (confirm.selectedCategoryId.isNotEmpty) {
          for (var categoryId in confirm.selectedCategoryId) {
            var principalCategories = PrincipalCategories(
                principalId: principalId, categoryId: categoryId);
            var principalCategoriesId = await client.principalCategories.addPCategories(principalCategories);
            debugPrint('Added principal Categories : $principalCategoriesId');
          }
        }

        if (confirm.selectedTermId.isNotEmpty) {
          for (var termId in confirm.selectedTermId) {
            var principalTerms = PrincipalTerms(principalId: principalId, termId: termId);
            var principalTermsId = await client.principalTerms.addPrincipalTerms(principalTerms);
            debugPrint('Added principal Terms : $principalTermsId');
          }
        }

        var userId = sessionManager.signedInUser?.id ?? 0;
        print('written by user: $userId');
        var principalUser = PrincipalUser(principalId: principalId, userId: userId);
        var principalUserId = await client.principalUser.addPrincipalUser(principalUser);
        debugPrint('Added principal User : $principalUserId');

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
