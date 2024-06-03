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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
            title: Text(
              AppLocalizations.of(context)!.tabTopA,
            ),
            backgroundColor: Colors.grey[200],
            //automaticallyImplyLeading: false,
            leading: ShadowedContainer(
              child: NavigationButton(
                destinationPage: IndexPage(),
                buttonText: AppLocalizations.of(context)!.tabTopB,
              )
            ),
            leadingWidth: 100,
            actions: [
              NavigationButton(
                  destinationPage: const MultiSearchPage(),
                  buttonText: AppLocalizations.of(context)!.tabTopC,)
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/both.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: DefaultTabController(
                length: 6,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.yellow,
                      indicatorColor: Colors.yellow,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(text: AppLocalizations.of(context)!.tabTopD),
                        Tab(text: AppLocalizations.of(context)!.tabTopE),
                        Tab(text: AppLocalizations.of(context)!.tabTopF),
                        Tab(text: AppLocalizations.of(context)!.tabTopG),
                        Tab(text: AppLocalizations.of(context)!.tabTopH),
                        Tab(text: AppLocalizations.of(context)!.tabTopI),
                      ],
                    ),
                    const Expanded(
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