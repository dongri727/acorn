import 'package:acorn_flutter/serverpod_client.dart';
import 'package:acorn_flutter/users/account_page.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: const EdgeInsets.all(100.0),
            child: Text(
              'Welcome to our Database',
              style: AcornTheme.textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: Text(
                'About this Database',
                style: AcornTheme.textTheme.bodyLarge,
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
                child: Text(
                  "Enter",
                  style: AcornTheme.textTheme.bodyLarge,
                ),
                onPressed: () {
                  Navigator.push<String>(
                    context,
                    MaterialPageRoute(
                  builder: (context) => sessionManager.isSignedIn
                      ? const AccountPage()
                      : const SignInPage(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
