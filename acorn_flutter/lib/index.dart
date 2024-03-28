import 'package:acorn_flutter/serverpod_client.dart';
import 'package:acorn_flutter/users/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'add_events/tab_top.dart';
import 'search/multiple_search_page.dart';
import 'users/account_page.dart';
import 'utils/theme.dart';

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
                            "Search & View",
                            style: AcornTheme.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            if (sessionManager.isSignedIn) {
                              // サインインしている場合はアカウントページに遷移
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AccountPage(),
                                ),
                              );
                            } else {
                              // サインインしていない場合はアラートダイアログを表示
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Alert'),
                                  content: const Text("There isn't any AccountPage of your-own"),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(); // ダイアログを閉じる
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          child: Text(
                            "Account Page",
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