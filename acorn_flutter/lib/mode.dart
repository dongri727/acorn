import 'package:flutter/material.dart';

import 'index.dart';
import 'package:acorn_flutter/mobile/tab.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:url_launcher/url_launcher.dart';
import 'analysis_page.dart';
import 'utils/theme.dart';
import 'package:acorn_flutter/export/exporter.dart';

class ModePage extends StatefulWidget {
  const ModePage({super.key});

  @override
  ModePageState createState() => ModePageState();
}

class ModePageState extends State<ModePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'ChronoMap',
                style: AcornTheme.textTheme.headlineLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Text(
                textAlign: TextAlign.center,
                AppLocalizations.of(context)!.modeA,
                style: AcornTheme.textTheme.bodyLarge,
              ),
            ),
            Column(
              children: [
                TextButtonFormat(
                    label: AppLocalizations.of(context)!.modeB,
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('This is YOUR Database'),
                              content: const Text('Create a uniquely global platform\n'
                                  'where YOU contribute to expanding the wealth of data'),
                              actions: <Widget>[
                                TextButton(
                                    child: const Text('close'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    })
                              ],
                            );
                          });
                    },
                    color: Colors.white),

                /*            TextButtonFormat(
            label: 'How many data do we have ?',
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnalysisPage(),
                ),
              );
            },
            color: Colors.blueGrey),*/
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.desktop_mac_outlined, color: Colors.white),
                  ),
                  Icon(Icons.laptop, color: Colors.white),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.tablet, color: Colors.white),
                  ),
                ],
              ),
            ),
            TextButtonFormat(
                label: AppLocalizations.of(context)!.modeD,
                onPressed: () {
                  Navigator.push<String>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IndexPage(),
                    ),
                  );
                },
                color: Colors.white),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: const Icon(Icons.phone_android, color: Colors.white ),
            ),

            TextButtonFormat(
                label: AppLocalizations.of(context)!.modeE,
                onPressed: () {
                  Navigator.push<String>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TabWidget(),
                    ),
                  );
                },
                color: Colors.white),
          ],
        ),
      ),
    );
  }

/*  Future<void> _launchAppStoreMobile() async {
    if (!await launchUrl(appStoreMobileUrl)) {
      throw Exception('Could not launch $appStoreMobileUrl');
    }
  }

  Future<void> _launchAppStoreCosmos() async {
    if (!await launchUrl(appStoreCosmosUrl)) {
      throw Exception('Could not launch $appStoreCosmosUrl');
    }
  }

  Future<void> _launchPlayStore() async {
    if (!await launchUrl(playStoreUrl)) {
      throw Exception('Could not launch $playStoreUrl');
    }
  }*/
}