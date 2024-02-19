import 'package:acorn_flutter/utils/shadowed_container.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_apple_flutter/serverpod_auth_apple_flutter.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'account_page.dart';
import 'package:acorn_flutter/index.dart';

var _googleClientId = '849604984098-kr0n5fr7eiem1eo0q20do2dgmppkko9d.apps.googleusercontent.com';
const _googleServerClientId = '849604984098-hgp1ddeqslbrsn70vrd8grvp3cbvji0s.apps.googleusercontent.com';

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
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 300, 20, 300),
                      child: ShadowedContainer(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Investor\n'
                                  'Please authenticate as a paid member.\n'
                                  'Your contributions will be recorded on your personal page.\n'
                                  'You can participate in improving this project.\n'
                                  'Ads are not displayed.'),
                            ),
                            ElevatedButton(
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
                            const Icon(Icons.build),
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
                          child: Text('Free Member\n'
                              'Please authenticate with one of the following.\n'
                              'Your contributions will be recorded on your personal page.\n'
                              'Ads may be displayed.'),
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
                          child: Row(
                            children: [
                              const Icon(Icons.build),
                              SignInWithGoogleButton(
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
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 50),
                          child: Row(
                            children: [
                              const Icon(Icons.build),
                              SignInWithAppleButton(
                                caller: client.modules.auth,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 300, 100, 300),
                      child: ShadowedContainer(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text('Guest\n'
                                  'No need to register your email.\n'
                                  'Your input data is stored anonymously.\n'
                                  'There is no personal page.\n'
                                  'Ads may be displayed.'),
                            ),
                            ElevatedButton(
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