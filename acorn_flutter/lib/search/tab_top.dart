import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/timeline/scalable.dart';
import 'package:flutter/material.dart';

import '../export/export_utils.dart';
import '../index.dart';
import '../scatter_view/globe_page.dart';
import '../scatter_view/map_page.dart';
import '../scatter_view/pacific_page.dart';
import 'classic_view.dart';

class ResultTabTop extends StatelessWidget {
  final List<Principal> principal;
  final List<int>? principalIds;
  final List<Map<String, dynamic>> scatterData;
  final List<Map<String, dynamic>> pacificData;
  final List<dynamic> coastLine;
  final List<dynamic> pacificLine;
  final List<dynamic> globeLine;
  final List<dynamic> ridgeLine;
  final List<dynamic> pacificRidge;
  final List<dynamic> globeRidge;
  final List<dynamic> trenchLine;
  final List<dynamic> pacificTrench;
  final List<dynamic> globeTrench;

  const ResultTabTop({
    super.key,
    required this.principal,
    this.principalIds,
    required this.scatterData,
    required this.pacificData,
    required this.coastLine,
    required this.pacificLine,
    required this.globeLine,
    required this.ridgeLine,
    required this.pacificRidge,
    required this.globeRidge,
    required this.trenchLine,
    required this.pacificTrench,
    required this.globeTrench,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/both.png'),
                    fit: BoxFit.cover)
            ),
          ),
          leading: const NavigationButton(
              destinationPage: IndexPage(),
              buttonText: 'INDEX'),
          leadingWidth: 100,
          title: Text(
            'Result View',
            style: AcornTheme.textTheme.headlineMedium,
          ),
          actions: [
            IconButton(
                onPressed: () {
/*                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MiniMoonHint()));*/
                },
                icon: const Icon(Icons.question_mark, color: Colors.blue,))
          ],
          bottom: TabBar(
            labelStyle: AcornTheme.textTheme.headlineMedium?.copyWith(
                fontSize: screenWidth < 600 ? 16 : 30),
            indicatorColor: Colors.yellow,
            tabs: const [
              Tab(text: "CLASSIC"),
              Tab(text: "Scalable"),
              Tab(text: "Atlantic"),
              Tab(text: "Pacific"),
              Tab(text: "Globe"),
              //Tab(text: "Space"),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ClassicViewPage(principal: principal),
            Scalable(principal: principal),
            MapPage(scatterData: scatterData, coastLine: coastLine, ridgeLine: ridgeLine, trenchLine: trenchLine),
            PacificPage(pacificData: pacificData, pacificLine: pacificLine, pacificRidge: pacificRidge, pacificTrench: pacificTrench),
            GlobePage(scatterData: scatterData, globeLine: globeLine, globeRidge: globeRidge, globeTrench: globeTrench),
            //SpaceView(),
          ],
        ),
      ),
    );
  }
}