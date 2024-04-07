import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../search/multiple_search_page.dart';
import 'package:acorn_flutter/serverpod_client.dart';

/// 検索結果を持ってtempo-spacoに飛ぶ設定になっているが、
/// Dataが多すぎると飛べない。（７件なら飛べる）
/// tempo-spaco側がDataを受け取る設定になっていないため、まだ機能しない。

class ThreeDViewPage extends StatefulWidget {
  final List<int>? principalIds;

  const ThreeDViewPage({super.key, this.principalIds});

  @override
  ThreeDViewPageState createState() => ThreeDViewPageState();
}

class ThreeDViewPageState extends State<ThreeDViewPage> {
  List<WithMap> withMaps = [];

  @override
  void initState() {
    super.initState();
  }

  ///前ページでの検索結果をもとに、Unityに送るべきListを取得する。
  Future<void>fetchWithMap({List<int>? principalIds}) async {
    try {
      withMaps = await client.withMap.getWithMap(keyNumbers: widget.principalIds);
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///取得したListをCsvに変換する。
  String convertListMapToCsv(List<WithMap> withGlobes) {
    if (withMaps.isEmpty) return '';

    List<String> rows = [];
    rows.add('annee, affair, location, precise, latitude, longitude, logarithm');

    for (var withMap in withMaps) {
      List<dynamic> row = [
        withMap.annee,
        withMap.affair,
        withMap.location,
        withMap.precise,
        withMap.latitude,
        withMap.longitude,
        withMap.logarithm,
      ];
      rows.add(row.join(','));
    }
    return rows.join('\n');
  }

  ///変換したCSVDataをUriにencodeし、さらにurlとしてparseして飛ぶ。
  Future onLaunchUrl() async {
    String csvMap = convertListMapToCsv(withMaps);
    String encodedCsvMap = Uri.encodeComponent(csvMap);
    final Uri url = Uri.parse('https://tempo-spaco.web.app?data=$encodedCsvMap');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => const MultiSearchPage(),
                ),
              );
            },
          ),
          title: const Text('3D VIEW'),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton.extended(
              onPressed: () async {
                ///Listを取得する。
                await fetchWithMap(principalIds: widget.principalIds);
                ///飛ぶ。
                onLaunchUrl();
              },
              label: const Text ('Jump for Unity')),
        ),

        body: Container(
          constraints: const BoxConstraints.expand( ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/3d.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}