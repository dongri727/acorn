import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'mobile/scalable/timeline/mobile_bloc_provider.dart';
import 'mobile/scalable/timeline/mobile_timeline.dart';
import 'timeline/bloc_provider.dart';
import 'cover.dart';
import 'timeline/timeline.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
/*  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);*/

  await initializeServerpodClient();

  Provider.debugCheckInvalidValueType = null;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  @override
  void initState() {
    super.initState();
    _loadSavedLanguage();
  }

  void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  void _loadSavedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedLanguageCode = prefs.getString('languageCode');
    if (savedLanguageCode != null) {
      setState(() {
        _locale = Locale(savedLanguageCode);
      });
    }
  }

@override
  Widget build(BuildContext context) {
  return BlocProviderM(
      t: TimelineM(Theme.of(context).platform),
/*    return BlocProvider(
        t: Timeline(Theme.of(context).platform),*/
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WhenWhereWhatDatabase',
          theme: ThemeData(
            textTheme: GoogleFonts.tsukimiRoundedTextTheme(
              Theme.of(context).textTheme
            ),
            useMaterial3: true,
          ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: const [Locale('en'), Locale('ja'), Locale('fr')],
            locale: _locale,
          home: const CoverPage(),
        ));
  }
}
