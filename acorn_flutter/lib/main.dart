import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'timeline/bloc_provider.dart';
import 'cover.dart';
import 'timeline/timeline.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

  await initializeServerpodClient();

  Provider.debugCheckInvalidValueType = null;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        t: Timeline(Theme.of(context).platform),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WhenWhereWhatDatabase',
          theme: ThemeData(
            textTheme: GoogleFonts.kalamTextTheme(
              Theme.of(context).textTheme
            ),
            useMaterial3: true,
          ),
          home: const CoverPage(),
        ));
  }
}
