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
        await client.withMap.addWithMap(withMap);
        debugPrint('add WithMap');

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
        await client.withGlobe.addWithGlobe(withGlobe);

        //CATT 単
        if (confirm.selectedCattId != 0) {
            var pCatt = PrincipalCatt(
                principalId: principalId, cattId: confirm.selectedCattId);
            await client.principalCatt.addPCatt(pCatt);
        }

        //PATT 単
        if (confirm.selectedPattId != 0) {
            var pPatt = PrincipalPatt(
              principalId: principalId, pattId: confirm.selectedPattId);
            await client.principalPatt.addPPatt(pPatt);
        }

        ///participants A
        if (confirm.selectedCountriesId.isNotEmpty) {
          for (var countryId in confirm.selectedCountriesId) {
            var countryInvolved = CountryInvolved(
                principalId: principalId, paysId: countryId);
            await client.countryInvolved
                .addCInvolved(countryInvolved);
          }
        }

/*        if (confirm.selectedPlacesId.isNotEmpty) {
          for (var placeId in confirm.selectedPlacesId) {
            var placeInvolved = PrincipalPlace(
                principalId: principalId, placeId: placeId);
            var placeInvolvedId = await client.principalPlace
                .addPPlace(placeInvolved);
            debugPrint('Added country involved : $placeInvolvedId');
          }
        }*/

        if (confirm.selectedATTId.isNotEmpty) {
          for (var attId in confirm.selectedATTId) {
            var cattsInvolved = CattsInvolved(
                principalId: principalId, cattId: attId);
            await client.cattsInvolved.addCattsInvolved(cattsInvolved);
          }
        }

        if (confirm.selectedStarId.isNotEmpty) {
          for (var starId in confirm.selectedStarId) {
            var starsInvolved = StarsInvolved(
                principalId: principalId, starId: starId);
            await client.starsInvolved.addStarsInvolved(starsInvolved);
          }
        }

        ///participants B
        if (confirm.selectedOrgId.isNotEmpty) {
          for (var orgId in confirm.selectedOrgId) {
            var pOrgs = PrincipalOrgs(
                principalId: principalId, orgId: orgId);
            await client.principalOrgs.addPOrgs(pOrgs);
          }
        }

        if (confirm.selectedWhoId.isNotEmpty) {
          for (var whoId in confirm.selectedWhoId) {
            var principalPeople = PrincipalPeople(
                principalId: principalId, personId: whoId);
            await client.principalPeople.addPPeople(principalPeople);
          }
        }

        ///terms
        if (confirm.selectedCategoryId.isNotEmpty) {
          for (var categoryId in confirm.selectedCategoryId) {
            var principalCategories = PrincipalCategories(
                principalId: principalId, categoryId: categoryId);
            await client.principalCategories.addPCategories(principalCategories);
          }
        }

        if (confirm.selectedTermId.isNotEmpty) {
          for (var termId in confirm.selectedTermId) {
            var principalTerms = PrincipalTerms(principalId: principalId, termId: termId);
            await client.principalTerms.addPrincipalTerms(principalTerms);
          }
        }

        var userId = sessionManager.signedInUser?.id ?? 0;
        var principalUser = PrincipalUser(principalId: principalId, userId: userId);
        await client.principalUser.addPrincipalUser(principalUser);

        return 0;

      } catch (e) {
        return 1;
      }
    } else {
      return 2;
    }
  }
}
