import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

import '../index.dart';
import 'account_page.dart';




class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    DotEnv().load(fileName: '.env');
    String? googleClientId = dotenv.get('CLIENT_ID');
    String? googleServerClientId = dotenv.get('SERVER_CLIENT_ID');


    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Dialog(
            child: Container(
              width: 260,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SignInWithEmailButton(
                      caller: client.modules.auth,
                      onSignedIn: () {
                        Navigator.push<String>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AccountPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SignInWithGoogleButton(
                      caller: client.modules.auth,
                      clientId: googleClientId,
                      //clientId: null,
                      serverClientId: googleServerClientId,
                      redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
                      onSignedIn: () {
                        Navigator.push<String>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AccountPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}