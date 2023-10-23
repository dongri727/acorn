import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/search/multiple_search_page.dart';
import 'package:acorn_flutter/timeline/widget.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../index.dart';
import '../utils/blank_text_format.dart';
import '../utils/custom_page_route.dart';
import 'bloc_provider.dart';
import 'menu_data.dart';


///検索ワードを受け取る
class ScalablePage extends StatelessWidget {

  var client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();

  final List<String>? listPeriod;
  final List<String>? listLocation;
  final List<String>? listPrecise;
  final List<int>? listSeaIds;
  final List<int>? listCattIds;
  final List<int>? listPattIds;
  final List<int>? listPaysInvolvedIds;
  final List<int>? listPaysInvolvedATTIds;
  final List<int>? listStarsInvolvedIds;
  final List<int>? listOrgIds;
  final List<int>? listPersonIds;
  final List<int>? listCategoryIds;
  final List<int>? listTermIds;

  ScalablePage({
  super.key,
  this.listPeriod,
  this.listLocation,
  this.listPrecise,
  this.listSeaIds,
  this.listCattIds,
  this.listPattIds,
  this.listPaysInvolvedIds,
  this.listPaysInvolvedATTIds,
  this.listStarsInvolvedIds,
  this.listOrgIds,
  this.listPersonIds,
  this.listCategoryIds,
  this.listTermIds,
  });

  ///ワードで検索する

  List<Principal> _principal = [];

/*  List<Principal> get principal => _principal;
  List<Principal> get principalByPrecise => _principal;
  List<Principal> get principalByCatts => _principal;
  List<Principal> get principalByPatts => _principal;
  List<Principal> get principalByStars => _principal;
  List<Principal> get principalByOrgs => _principal;
  List<Principal> get principalByPeople => _principal;*/

  Future<void>fetchPrincipalByPeriod({List<String>? period}) async {
    try {
      print(period);
      _principal = await client.principal.getPrincipalByPeriod(keywords: period);
      print("Getting principal with keywords: $period");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void>fetchPrincipal({List<String>? location}) async {
    try {
      print(location);
      _principal = await client.principal.getPrincipal(keywords: location);
      print("Getting principal with keywords: $location");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPrecise({List<String>? listPrecise}) async {
    try {
      _principal = await client.principal.getPrincipalByPrecise(keywords: listPrecise);
      print("Getting principal with keywords: $listPrecise");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCattId({List<int>? listCattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCattId(cattIds: listCattIds);
      print("Getting principal with CattIds: $listCattIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPattId({List<int>? listPattIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPattId(pattIds: listPattIds);
      print("Getting principal with PattIds: $listPattIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCInvolvedId({List<int>? listCInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCInvolvedId(cInvolvedIds: listCInvolvedIds);
      print("Getting principal with CInvolvedIds: $listCInvolvedIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByAttInvolvedId({List<int>? listAttsInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByAttInvolvedId(attInvolvedIds: listAttsInvolvedIds);
      print("Getting principal with AttsInvolvedIds: $listAttsInvolvedIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByStarsInvolvedId({List<int>? listStarInvolvedIds}) async {
    try {
      _principal = await client.principal.getPrincipalByStarsInvolvedId(starInvolvedIds: listStarInvolvedIds);
      print("Getting principal with StarInvolvedIds: $listStarInvolvedIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByPersonId({List<int>? listPersonIds}) async {
    try {
      _principal = await client.principal.getPrincipalByPersonId(personIds: listPersonIds);
      print("Getting principal with PersonIds: $listPersonIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByOrgsId({List<int>? listOrgIds}) async {
    try {
      _principal = await client.principal.getPrincipalByOrgsId(orgIds: listOrgIds);
      print("Getting principal with OrgIds: $listOrgIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByCategoryId({List<int>? listCategoryIds}) async {
    try {
      _principal = await client.principal.getPrincipalByCategoryId(categoryIds: listCategoryIds);
      print("Getting principal with CategoryIds: $listCategoryIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  fetchPrincipalByTermId({List<int>? listTermIds}) async {
    try {
      _principal = await client.principal.getPrincipalByTermId(termIds: listTermIds);
      print("Getting principal with TermIds: $listTermIds");
      //notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }


  ///検索結果と表示領域をtimelineに送る
  navigateToTimeline(MenuItemData item, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) =>
          TimelineWidget(item, BlocProvider.getTimeline(context)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    if (listPeriod != null) {
      fetchPrincipalByPeriod(period: listPeriod);
    } else if (listLocation != null) {
      fetchPrincipal(location: listLocation);
      print('fetch Principal');
    } else if (listPrecise != null) {
      fetchPrincipalByPrecise(listPrecise: listPrecise);
    } else if (listCattIds != null) {
      fetchPrincipalByCattId(listCattIds: listCattIds);
      print(listCattIds);
    } else if (listPattIds != null) {
      fetchPrincipalByPattId(listPattIds: listPattIds);
    } else if (listPaysInvolvedIds != null) {
      fetchPrincipalByCInvolvedId(listCInvolvedIds: listPaysInvolvedIds);
    } else if (listPaysInvolvedATTIds != null) {
      fetchPrincipalByAttInvolvedId(listAttsInvolvedIds: listPaysInvolvedATTIds);
    } else if (listStarsInvolvedIds != null) {
      fetchPrincipalByStarsInvolvedId(listStarInvolvedIds: listStarsInvolvedIds);
    } else if (listOrgIds != null) {
      fetchPrincipalByOrgsId(listOrgIds: listOrgIds);
      print(listOrgIds);
    } else if (listPersonIds != null) {
      fetchPrincipalByPersonId(listPersonIds: listPersonIds);
      print(listPersonIds);
    } else if (listCategoryIds != null) {
      fetchPrincipalByCategoryId(listCategoryIds: listCategoryIds);
    } else if (listTermIds != null) {
      fetchPrincipalByTermId(listTermIds: listTermIds);
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MultiSearchPage()));
          }),
        title: const Text('half-way to SCALABLE VIEW'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand( ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/both.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
/*              //todo 受けとったキーワードを表示 -> IDを見てもしょうがないので止め
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlankTextFormat(text: [
                  ...?listPeriod,
                  ...?listLocation,
                  ...?listPrecise,
                ].join(', ')),
              ),*/
              //todo 表示領域を指定


              //todo 実行Button
              
              OutlinedButton(
                onPressed: () {
                  Navigator.push<String>(
                    context,
                    CustomPageRoute(
                      const IndexPage(),
                    ),
                  );
                },
                child: const Text(
                  "return",

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }}


