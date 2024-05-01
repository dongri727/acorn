import 'package:acorn_flutter/index.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'users/account_page.dart';
import 'users/sign_in_page.dart';
import 'utils/theme.dart';

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/www.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'Global ChronoMap',
                style: AcornTheme.textTheme.headlineLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: Text(
                'A 3D Journey Through Time and Space',
                style: AcornTheme.textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  'About this Database',
                  style: AcornTheme.textTheme.bodyMedium,
                ),
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
                  }, ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: (_launchUrl),
                  child: Text(
                    "How-to-Use Video on YouTube",
                    style: AcornTheme.textTheme.bodyMedium,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                  child: Text(
                    "Enter",
                    style: AcornTheme.textTheme.bodyLarge,
                  ),
                  onPressed: () {
                    Navigator.push<String>(
                      context,
                      MaterialPageRoute(
                        //builder: (context) => const IndexPage(),
                   builder: (context) => sessionManager.isSignedIn
                        ? const AccountPage()
                        : const SignInPage(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
