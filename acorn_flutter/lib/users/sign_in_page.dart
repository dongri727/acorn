import 'package:flutter/material.dart';
import 'package:serverpod_auth_apple_flutter/serverpod_auth_apple_flutter.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'account_page.dart';

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
                            padding: const EdgeInsetsDirectional.all(8.0),
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
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(200.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                            child: Image.asset('assets/images/wallet.png'))),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}