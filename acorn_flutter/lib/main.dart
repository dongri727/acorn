import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'bloc_provider.dart';
import 'cover.dart';
import 'timeline/timeline.dart';

//late SessionManager sessionManager;
late Client client;

void main() /* async*/{
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  client = Client(
    'http://localhost:8080/',
    //authenticationKeyManager: FlutterAuthenticationKeyManager(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        platform: Theme.of(context).platform,
        t: Timeline(Theme.of(context).platform),

      child: MaterialApp(
        title: 'ACORN',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const CoverPage(),
      ),
    );
  }
}
