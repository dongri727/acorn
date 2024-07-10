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

  final Uri youtubeUrl = Uri.parse('https://www.youtube.com/@laporte_academy');
  final Uri appStoreUrl = Uri.parse('https://apps.apple.com/jp/app/%E5%9B%9B%E6%AC%A1%E5%85%83%E5%B9%B4%E8%A1%A8for-mobile/id6502634868'); // Replace with your App Store URL
  final Uri playStoreUrl = Uri.parse('https://play.google.com/store/apps/details?id=academy.laporte.chronomapMobile.chronomap_mobile&hl=ja'); // Replace with your Play Store URL


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
                color: Colors.white60),
            TextButtonFormat(
                label: 'How many data do we have ?',
                onPressed: () {
                  Navigator.push<String>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AnalysisPage(),
                    ),
                  );
                },
                color: Colors.white60),
            TextButtonFormat(
                label: AppLocalizations.of(context)!.modeC,
                onPressed: (_launchYouTube),
                color: Colors.white60),
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
            TextButtonFormat(
                label: AppLocalizations.of(context)!.modeF,
                onPressed: (_launchAppStore),
                color: Colors.white),
            TextButtonFormat(
                label: AppLocalizations.of(context)!.modeG,
                onPressed: (_launchPlayStore),
                color: Colors.white),
          ],
        ),
      ),
    );
  }

  Future<void> _launchYouTube() async {
    if (!await launchUrl(youtubeUrl)) {
      throw Exception('Could not launch $youtubeUrl');
    }
  }

  Future<void> _launchAppStore() async {
    if (!await launchUrl(appStoreUrl)) {
      throw Exception('Could not launch $appStoreUrl');
    }
  }

  Future<void> _launchPlayStore() async {
    if (!await launchUrl(playStoreUrl)) {
      throw Exception('Could not launch $playStoreUrl');
    }
  }
}