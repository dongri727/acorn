import 'package:acorn_flutter/analysis_page.dart';
//import 'package:acorn_flutter/csv_page.dart';
import 'add_events/tab_top.dart';
import 'search/multiple_search_page.dart';
import 'utils/theme.dart';
import 'package:acorn_flutter/export/exporter.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          constraints: const BoxConstraints.expand( ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 300,
                ),
              ),
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
                    ],
                  )
              ),],
          )),);
  }
}