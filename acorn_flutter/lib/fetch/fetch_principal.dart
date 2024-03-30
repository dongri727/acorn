import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

///idの取得Codeが冗長なようだが、Model側で変換すると全件取得になってしまう。

class FetchPrincipalRepository {
    List<Principal> listPrincipal = [];
    List<int> principalIds = [];

    Future<void> fetchPrincipalByPeriod({List<String>? period}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByPeriod(keywords: period);
            print("Getting principal with keywords: $period");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByLocation({List<String>? location}) async {
        try {
            listPrincipal = await client.principal.getPrincipal(keywords: location);
            print("Getting principal with keywords: $location");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByPrecise({List<String>? precise}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByPrecise(keywords: precise);
            print("Getting principal with keywords: $precise");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByCattId({List<int>? cattIds}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByCattId(cattIds: cattIds);
            print("Getting principal with CattIds: $cattIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByPattId({List<int>? pattIds}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByPattId(pattIds: pattIds);
            print("Getting principal with PattIds: $pattIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByCInvolvedId({List<int>? cInvolvedIds}) async {
        try {
            listPrincipal = await client.principal.getPrincipalByCInvolvedId(
                cInvolvedIds: cInvolvedIds);
            print("Getting principal with CInvolvedIds: $cInvolvedIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

  fetchPrincipalByPInvolvedId({List<int>? pInvolvedIds}) async {
    try {
      listPrincipal = await client.principal.getPrincipalByPInvolvedId(pInvolvedIds: pInvolvedIds);
      print("Getting principal with PInvolvedIds: $pInvolvedIds");
      principalIds = listPrincipal.map((item) => item.id as int).toList();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCattInvolvedId({List<int>? cattsInvolvedIds}) async {
    try {
      listPrincipal = await client.principal.getPrincipalByCattInvolvedId(cattInvolvedIds: cattsInvolvedIds);
      print("Getting principal with CattsInvolvedIds: $cattsInvolvedIds");
      principalIds = listPrincipal.map((item) => item.id as int).toList();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPattInvolvedId({List<int>? pattsInvolvedIds}) async {
    try {
      listPrincipal = await client.principal.getPrincipalByPattInvolvedId(pattInvolvedIds: pattsInvolvedIds);
      print("Getting principal with PattsInvolvedIds: $pattsInvolvedIds");
      principalIds = listPrincipal.map((item) => item.id as int).toList();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

    Future<void> fetchPrincipalByStarsObservedId(
        {List<int>? starObservedIds}) async {
        try {
            listPrincipal = await client.principal.getPrincipalByStarsInvolvedId(
                starInvolvedIds: starObservedIds);
            print("Getting principal with StarObservedIds: $starObservedIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByOrgsId({List<int>? orgIds}) async {
        try {
            listPrincipal = await client.principal.getPrincipalByOrgsId(orgIds: orgIds);
            print("Getting principal with OrgIds: $orgIds");
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByPersonId({List<int>? personIds}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByPersonId(personIds: personIds);
            print("Getting principal with PersonIds: $personIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByCategoryId({List<int>? categoryIds}) async {
        try {
            listPrincipal = await client.principal.getPrincipalByCategoryId(
                categoryIds: categoryIds);
            print("Getting principal with CategoryIds: $categoryIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByTermId({List<int>? termIds}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByTermId(termIds: termIds);
            print("Getting principal with TermIds: $termIds");
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByDetailId({List<int>? detailIds}) async {
      try {
        listPrincipal = await client.principal.getPrincipalByDetailIds(detailIds: detailIds);
        print("getting principal with detailIds: $detailIds");
        principalIds = listPrincipal.map((item) => item.id as int).toList();
      } on Exception catch (e) {
        debugPrint('$e');
      }
    }

}