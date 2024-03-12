import 'package:acorn_flutter/utils/shadowed_container.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_apple_flutter/serverpod_auth_apple_flutter.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'account_page.dart';
import 'package:acorn_flutter/index.dart';

var _googleClientId = '';
const _googleServerClientId = '';

class SignInPage extends StatelessWidget {
  const SignInPage({super. key});

  @override
  Widget build(BuildContext context) {

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Dialog(
                      child: ShadowedContainer(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Icon(Icons.build),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Hey, Investor!\n"
                                  "Ready to unlock premium features?\n"
                                  "Authenticate and become a paid member.\n"
                                  "Your awesome contributions will shine on your personal page.\n"
                                  "Join us in making this project even better.\n"
                                  "Plus, enjoy an ad-free experience!"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ElevatedButton(
                                child: const Text('Sign-in as an Investor'),
                                onPressed: () async {
                                  Navigator.push<String>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const IndexPage(),
                                    ),
                                  );
                                },
                              ),
                            ),

                          ],
                        ),
                      ))),
              Expanded(
                flex: 1,
                child: Dialog(
                  child: ShadowedContainer(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Icon(Icons.build),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text("Welcome, Free Member!\n"
                              "Let's get you started with one of the following options.\n"
                              "We'll keep a record of your contributions on your personal page.\n"
                              "Heads up: You might see some ads."),

                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
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
                          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                          child: SignInWithGoogleButton(
                            caller: client.modules.auth,
                            clientId: _googleClientId,
                            //clientId: null,
                            serverClientId: _googleServerClientId,
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
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 50),
                          child: SignInWithAppleButton(
                            caller: client.modules.auth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                  child: Dialog(
                      child: ShadowedContainer(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Hello, Guest!\n"
                                  "Skip the signup - no email registration required.\n"
                                  "Rest easy, your input stays anonymous.\n"
                                  "No personal page, no strings attached.\n"
                                  "Heads up: Ads might pop up."),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Now you can enter here.",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: ElevatedButton(
                                child: const Text('Sign-in as a Guest'),
                                onPressed: () async {
                                  Navigator.push<String>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const IndexPage(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}