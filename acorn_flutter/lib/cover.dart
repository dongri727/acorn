import 'package:acorn_flutter/index.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:acorn_flutter/users/account_page.dart';
import 'package:flutter/material.dart';
import 'users/sign_in_page.dart';
import 'utils/theme.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key, required this.title}) : super(key: key);

  final String title;

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

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cover.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(400.0),
        child: OutlinedButton(
            child: Text(
              "WELCOME",
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
    );
  }
}
