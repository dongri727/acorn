import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../search/multiple_search_page.dart';

class FourDViewPage extends StatefulWidget {
  final List<int>? principalIds;

  const FourDViewPage({super.key, this.principalIds});

  @override
  _FourDViewPageState createState() => _FourDViewPageState();
}

class _FourDViewPageState extends State<FourDViewPage> {
  List<WithGlobe> withGlobes = [];

  @override
  void initState() {
    super.initState();
  }

  ///前ページでの検索結果をもとに、Unityに送るべきListを取得する。
  Future<void>fetchWithGlobe({List<int>? principalIds}) async {
    try {
      withGlobes = await client.withGlobe.getWithGlobe(keyNumbers: widget.principalIds);
      print('fetch with $principalIds');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///取得したListをCsvに変換する。
  String convertListGlobeToCsv(List<WithGlobe> withGlobes) {
    if (withGlobes.isEmpty) return '';

    List<String> rows = [];
    rows.add('annee, affair, location, precise, x_coordinate, y_coordinate, z_coordinate, coefficient');

    for (var withGlobe in withGlobes) {
      List<dynamic> row = [
        withGlobe.annee,
        withGlobe.affair,
        withGlobe.location,
        withGlobe.precise,
        withGlobe.x_coordinate,
        withGlobe.y_coordinate,
        withGlobe.z_coordinate,
        withGlobe.coefficient,
      ];
      rows.add(row.join(','));
    }
    return rows.join('\n');
  }

  ///変換したCSVDataをUriにencodeし、さらにurlとしてparseして飛ぶ。
  Future onLaunchUrl() async {
    String csvGlobe = convertListGlobeToCsv(withGlobes);
    print(withGlobes);
    String encodedCsvGlobe = Uri.encodeComponent(csvGlobe);
    print(encodedCsvGlobe);
    final Uri url = Uri.parse('https://tempo-spaco.web.app?data=$encodedCsvGlobe');
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
                  builder: (context) => MultiSearchPage(),
                ),
              );
            },
          ),
          title: const Text('4D VIEW'),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton.extended(
              onPressed: () async {
                ///Listを取得する。
                await fetchWithGlobe(principalIds: widget.principalIds);
                ///飛ぶ。
                onLaunchUrl();
              },
              label: const Text ('Jump for Unity')),
        ),

        body: Container(
          constraints: const BoxConstraints.expand( ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/4d.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
