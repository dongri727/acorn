import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

//idの取得Codeが冗長なようだが、Model側で変換すると全件取得になってしまう。

class FetchPrincipalRepository {
    List<Principal> listPrincipal = [];
    List<int> principalIds = [];

    Future<void> fetchPrincipalByPeriod({List<String>? period}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByPeriod(keywords: period);
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByLocation({List<String>? location}) async {
        try {
            listPrincipal = await client.principal.getPrincipal(keywords: location);
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByPrecise({List<String>? precise}) async {
        try {
            listPrincipal =
            await client.principal.getPrincipalByPrecise(keywords: precise);
            principalIds = listPrincipal.map((item) => item.id as int).toList();
        } on Exception catch (e) {
            debugPrint('$e');
        }
    }

    Future<void> fetchPrincipalByDetailId({List<int>? detailIds}) async {
      try {
        listPrincipal = await client.principal.getPrincipalByDetailIds(detailIds: detailIds);
        principalIds = listPrincipal.map((item) => item.id as int).toList();
      } on Exception catch (e) {
        debugPrint('$e');
      }
    }

}