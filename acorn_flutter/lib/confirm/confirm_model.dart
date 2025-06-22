import 'dart:core';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'confirm.dart';

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
            principalId: principalId,
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
        debugPrint('add WithGlobe');

        //in space
        if(confirm.selectedLocation == 'universe' ||
            confirm.selectedLocation == 'Solar System' ||
            confirm.selectedLocation == 'Milky Way'||
            confirm.selectedLocation == 'Other Galaxy' 
        ) {
          var space = Space(
            principalId: principalId,
            annee: confirm.annee,
            month: confirm.month,
            day: confirm.day,
            point: confirm.point,
            affair: confirm.name,
            location: confirm.selectedLocation,
            precise: confirm.selectedPrecise,
            hecX: 0.0,
            hecY: 0.0,
            hecZ: 0.0,
            julianD: confirm.point + 1719906,
            gLat: 0.0,
            gLon: 0.0,
            lightYear: 0.0);
          await client.space.addSpace(space);
          debugPrint('add in space');
        }

        ///Additional When
        if (confirm.selectedGeoTimeId.isNotEmpty) {
          for (var geoTimeId in confirm.selectedGeoTimeId) {
            var pDetailGeoTime = PrincipalDetail(
                principalId: principalId, detailId: geoTimeId);
            await client.principalDetail.addPDetail(pDetailGeoTime);
          }
        }

        //CATT where it happened
        if (confirm.selectedCattId != 0) {
            var pCatt = PrincipalDetail(
                principalId: principalId, detailId: confirm.selectedCattId);
            await client.principalDetail.addPDetail(pCatt);
        }

        //Patt where it happened
        if (confirm.selectedPattId != 0) {
            var pPatt = PrincipalDetail(
              principalId: principalId, detailId: confirm.selectedPattId);
            await client.principalDetail.addPDetail(pPatt);
        }

        //participants A
        if (confirm.selectedCountriesId.isNotEmpty) {
          for (var countryId in confirm.selectedCountriesId) {
            var cInv = PrincipalDetail(
                principalId: principalId, detailId: countryId);
            await client.principalDetail
                .addPDetail(cInv);
          }
        }

        if (confirm.selectedPlacesId.isNotEmpty) {
          for (var placeId in confirm.selectedPlacesId) {
            var pInv = PrincipalDetail(
                principalId: principalId, detailId: placeId);
            await client.principalDetail
                .addPDetail(pInv);
          }
        }

        if (confirm.selectedATTId.isNotEmpty) {
          for (var attId in confirm.selectedATTId) {
            var cattsInvolved = PrincipalDetail(
                principalId: principalId, detailId: attId);
            await client.principalDetail.addPDetail(cattsInvolved);
          }
        }

        if (confirm.selectedStarId.isNotEmpty) {
          for (var starId in confirm.selectedStarId) {
            var pDetailStar = PrincipalDetail(
                principalId: principalId, detailId: starId);
            await client.principalDetail.addPDetail(pDetailStar);
          }
        }

        ///participants B
        if (confirm.selectedOrgId.isNotEmpty) {
          for (var orgId in confirm.selectedOrgId) {
            var pDetailOrg = PrincipalDetail(
                principalId: principalId, detailId: orgId);
            await client.principalDetail.addPDetail(pDetailOrg);
          }
        }

        if (confirm.selectedUnivId.isNotEmpty) {
          for (var univId in confirm.selectedUnivId) {
            var pDetailUniv = PrincipalDetail(
                principalId: principalId, detailId: univId);
            await client.principalDetail.addPDetail(pDetailUniv);
          }
        }

        if (confirm.selectedWhoId.isNotEmpty) {
          for (var whoId in confirm.selectedWhoId) {
            var pDetailPerson = PrincipalDetail(
                principalId: principalId, detailId: whoId);
            await client.principalDetail.addPDetail(pDetailPerson);
          }
        }

        if (confirm.selectedShipsId.isNotEmpty) {
          for (var shipId in confirm.selectedShipsId) {
            var pDetailShip = PrincipalDetail(
                principalId: principalId, detailId: shipId);
            await client.principalDetail.addPDetail(pDetailShip);
          }
        }

        ///terms
        if (confirm.selectedCategoryId.isNotEmpty) {
          for (var categoryId in confirm.selectedCategoryId) {
            var pDetailCategory = PrincipalDetail(
                principalId: principalId, detailId: categoryId);
            await client.principalDetail.addPDetail(pDetailCategory);
          }
        }

        if (confirm.selectedTermId.isNotEmpty) {
          for (var termId in confirm.selectedTermId) {
            var pDetailTerms = PrincipalDetail(principalId: principalId, detailId: termId);
            await client.principalDetail.addPDetail(pDetailTerms);
          }
        }

        var japanese = Japanese(principalId: principalId, japaneseName: confirm.name);
        await client.japanese.addJapanese(japanese);
        debugPrint('add Japanese');

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
