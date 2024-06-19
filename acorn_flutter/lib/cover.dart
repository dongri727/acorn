import 'package:acorn_flutter/serverpod_client.dart';
import 'package:acorn_flutter/utils/language_button.dart';
import 'package:acorn_flutter/utils/shadowed_container.dart';
import 'package:flutter/material.dart';
import 'info_page.dart';
import 'mode.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class CoverPage extends StatefulWidget {
  const CoverPage({super.key});

  @override
  CoverPageState createState() => CoverPageState();
}

class CoverPageState extends State<CoverPage> {

  @override
  void initState() {
    super.initState();

    // Make sure that we rebuild the page if signed in status changes.
    sessionManager.addListener(() {
      setState(() {});
    });
  }

  final Uri url = Uri.parse('https://www.youtube.com/@laporte_academy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppLocalizations.of(context)!.cover),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ShadowedContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    TextButton(
                        child: const Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.yellow,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push<String>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ModePage(),
                              /*                   builder: (context) => sessionManager.isSignedIn
                              ? const AccountPage()
                              : const SignInPage(),*/
                            ),
                          );
                        }),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: LanguageDropdownButton(),
                    ),

                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const InfoPage()));
                        },
                        icon: const Icon(Icons.info_outline))

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
