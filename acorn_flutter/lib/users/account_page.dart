import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

import 'package:acorn_flutter/serverpod_client.dart';

import '../index.dart';
import 'sign_in_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Page'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Moving On'),
        onPressed: (){
          Navigator.push<String>(
            context,
            MaterialPageRoute(
              builder: (context) => sessionManager.isSignedIn
                  ? const IndexPage()
                  : const SignInPage(),
            ),
          );
        },
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/both.png'),
            fit: BoxFit.cover),
        ),
        child: Center(
          child: ListView(
            children: [
              ListTile(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                leading: CircularUserImage(
                  userInfo: sessionManager.signedInUser,
                  size: 42,
                ),
                title: Text(sessionManager.signedInUser!.userName,
                style: const TextStyle(color: Colors.white,fontSize: 20)),
                subtitle: Text(sessionManager.signedInUser!.email ?? '',
                style: const TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    sessionManager.signOut();
                    Navigator.push<String>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: const Text('Sign out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}