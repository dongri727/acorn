import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/index.dart';
import 'package:acorn_flutter/search/multiple_search_page.dart';
import 'package:acorn_flutter/utils/navigation_button.dart';
import 'package:acorn_flutter/utils/shadowed_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../confirm/confirm.dart';
import 'tab_pages/pays_page.dart';
import 'tab_pages/preview_page.dart';
import 'tab_pages/principal_page.dart';
import 'tab_pages/terms_page.dart';
import 'tab_pages/where_page.dart';
import 'tab_pages/who_page.dart';


class TabPage extends StatelessWidget {
  const TabPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // 各タブページで参照するjournal を生成(プレビュー用に各タブ入力を保持する必要があるため)
          Provider(create: (context) => Confirm()),
        ],

        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Register an Event",
            ),
            backgroundColor: Colors.grey[200],
            //automaticallyImplyLeading: false,
            leading: const ShadowedContainer(
              child: NavigationButton(
                destinationPage: IndexPage(),
                buttonText: 'index',
              )
            ),
            leadingWidth: 100,
            actions: const [
              NavigationButton(
                  destinationPage: MultiSearchPage(),
                  buttonText: 'search')
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/both.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const SafeArea(
              child: DefaultTabController(
                length: 6,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.yellow,
                      indicatorColor: Colors.yellow,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(text: 'PRINCIPAL'),
                        Tab(text: 'ADDITIONAL "WHERE"'),
                        Tab(text: 'PARTICIPANTS A'),
                        Tab(text: 'PARTICIPANTS B'),
                        Tab(text: 'SEARCH TERMS'),
                        Tab(text: 'CONFIRM'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          PrincipalPage(), // 必須
                          WherePageGate(), // 地名･座標
                          PaysPage(),//関係国・都市
                          WhoPage(), // 関係団体･関係者
                          TermsPage(), // 検索語
                          PreviewPage(), // プレビュー
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}