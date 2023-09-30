import 'package:flutter/material.dart';

//import 'add_events/tab_top.dart';
//import 'read_select/single_search_page.dart';
import 'add_events/tab_top.dart';
import 'search/multiple_search_page.dart';
//import 'search/single_search_page.dart';
import 'timeline/menu.dart';
import 'utils/theme.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

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
                            "Register Events",
                            style: AcornTheme.textTheme.bodyLarge,
                          ),
                        ),
                      ),

/*                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push<String>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ThreeDViewPage(),
                              ),
                            );
                          },
                          child: Text(
                            "3D Space",
                            style: SpaceTimeTheme.textTheme.bodyLarge,
                          ),
                        ),
                      ), */
                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push<String>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MultiSearchPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Search & Read",
                            style: AcornTheme.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                             Navigator.push<String>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainMenuWidget(),
                              ),
                            );
                          },
                          child: Text(
                            "Timeline",
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