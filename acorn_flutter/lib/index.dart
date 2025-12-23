import 'package:acorn_flutter/analysis_page.dart';
import 'package:acorn_flutter/mode.dart';
import 'package:acorn_flutter/show_case/cassini_huygens.dart';
import 'package:acorn_flutter/show_case/interstellar.dart';
import 'package:acorn_flutter/utils/showcase_button.dart';

//import 'package:acorn_flutter/csv_page.dart';
import 'add_events/tab_top.dart';
import 'search/multiple_search_page.dart';
import 'utils/theme.dart';
import 'package:acorn_flutter/export/exporter.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

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
            const Expanded(flex: 1, child: SizedBox(height: 300)),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  /*                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push<String>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AnalysisPage(),
                              ),
                            );
                          },
                          child: const Text( 'Analysis'
                          ),
                        ),
                      ),*/
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push<String>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TabPage(),
                          ),
                        );
                      },
                      child: Text(
                        AppLocalizations.of(context)!.webIndexA,
                        style: AcornTheme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  /*                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push<String>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CSVPage(),
                              ),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(context)!.webIndexC,
                            style: AcornTheme.textTheme.bodyLarge,
                          ),
                        ),
                      ),*/
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push<String>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MultiSearchPage(),
                          ),
                        );
                      },
                      child: Text(
                        AppLocalizations.of(context)!.webIndexB,
                        style: AcornTheme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Showcase",
                      style: TextStyle(color: Colors.yellow, fontSize: 30),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 2,          // ← 2列
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 3.5,      // ← 横長ボタン向け
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            ShowcaseButton(
                                label: 'Interstellar Missions',
                                page: const PioneerVoyager()
                            ),
                            ShowcaseButton(
                              label: 'Interstellar Objects',
                              page: const PioneerVoyager(),
                            ),
                            ShowcaseButton(
                              label: 'Cassini_Huygens',
                              page: const CassiniHuygens(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
