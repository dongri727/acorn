import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../confirm/confirm.dart';
import 'tab_pages/pays_page.dart';
import 'tab_pages/preview_page.dart';
import 'tab_pages/required_fields.dart';
import 'tab_pages/terms_page.dart';
import 'tab_pages/when_page.dart';
import 'tab_pages/where_page.dart';
import 'tab_pages/who_page.dart';


class TabPage extends StatelessWidget {
  const TabPage ({Key? key}) : super(key: key);

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
                length: 7,
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Colors.yellow,
                      indicatorColor: Colors.yellow,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        Tab(text: 'REQUIRED'),
                        Tab(text: 'ADDITIONAL "WHEN"'),
                        Tab(text: 'ADDITIONAL "WHERE"'),
                        Tab(text: 'PARTICIPANTS A'),
                        Tab(text: 'PARTICIPANTS B'),
                        Tab(text: 'SEARCH TERMS'),
                        Tab(text: 'CONFIRM'),

                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const WhatPage(), // 必須
                          const WhenPage(), // 月日・地域暦
                          WherePage(), // 地名･座標
                          const PaysPage(),//関係国・都市
                          const WhoPage(), // 関係団体･関係者
                          const TermsPage(), // 検索語
                          const PreviewPage(), // プレビュー
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