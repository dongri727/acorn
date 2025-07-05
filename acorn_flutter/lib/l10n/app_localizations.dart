import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
    Locale('ja')
  ];

  /// No description provided for @indexA.
  ///
  /// In en, this message translates to:
  /// **'This is the mobile version of the \"ChronoMap.\" Only essential data entry and country-specific searches are available. For full version features such as detailed registration and various searches, please access from a larger screen such as a PC or tablet at the following URL.\nhttp://app.laporte.academy'**
  String get indexA;

  /// No description provided for @indexB.
  ///
  /// In en, this message translates to:
  /// **'The database of the \"ChronoMap\" is operated in English. Please always register country names in English using predictive text. For example,\nUnited States for America\nUnited Kingdom for Great Britain\nSouth Korea for Republic of Korea\nNorth Korea for Democratic People\'s Republic of Korea'**
  String get indexB;

  /// No description provided for @indexC.
  ///
  /// In en, this message translates to:
  /// **'If an event name is registered in Japanese, it will be progressively corrected to English. You can copy the CLASSIC view event names to use in your own translation tool.'**
  String get indexC;

  /// No description provided for @infoA.
  ///
  /// In en, this message translates to:
  /// **'This app does not acquire any of your personal information, nor does it track or use information on your device.'**
  String get infoA;

  /// No description provided for @infoB.
  ///
  /// In en, this message translates to:
  /// **'The historical information you register is not linked to you. There are no records of what you register or search for.'**
  String get infoB;

  /// No description provided for @infoC.
  ///
  /// In en, this message translates to:
  /// **'The \"ChronoMap\" is a database that encompasses all historical events from the origin of the universe to the endless \'now,\' without regard to field. It aims to accurately display temporal and spatial distances, with \'when\' and \'where\' as mandatory items.\nWeb version of \"ChronoMap\"\nhttps://app.laporte.academy\nWeb version of three-dimensional and four-dimensional views\nhttps://tempo-spaco.web.app\nHow to use the ChronoMap\nhttps://youtube.com/@laporte_academy'**
  String get infoC;

  /// No description provided for @infoD.
  ///
  /// In en, this message translates to:
  /// **'In the \"ChronoMap\" a historical event refers to a single occurrence that is defined by \'when\' and \'where\' it took place. For example, the \"English Civil War\" is not considered a single event. Registration would look like \"March 19, 1654, Battle of Hopton Heath, England.\" If you want to make it searchable as \"English Civil War,\" please add \"English Civil War\" as a term in the web version of the \"ChronoMap.\"'**
  String get infoD;

  /// No description provided for @infoE.
  ///
  /// In en, this message translates to:
  /// **'Information contrary to the purpose of the \"ChronoMap\" will be handled by the administrator as follows.\n1. Correction\n2. Viewing stop (may be made public in the future)\n3. Deletion'**
  String get infoE;

  /// No description provided for @infoF.
  ///
  /// In en, this message translates to:
  /// **'The historical information you register is treated as a public good, and you yourself cannot delete it. Please be careful not to write personal information. If you want to delete information registered by mistake or find information that should be deleted, please contact the following address.'**
  String get infoF;

  /// No description provided for @infoG.
  ///
  /// In en, this message translates to:
  /// **'We are looking for people to join us in developing the \"ChronoMap.\" If you are an engineer who can handle Flutter, AWS, PostgreSQL, Unity, etc., or can assist with data entry and correction, please contact us below.'**
  String get infoG;

  /// No description provided for @infoH.
  ///
  /// In en, this message translates to:
  /// **'when.where.what.database727@gmail.com'**
  String get infoH;

  /// No description provided for @registerA.
  ///
  /// In en, this message translates to:
  /// **'Entry'**
  String get registerA;

  /// No description provided for @registerB.
  ///
  /// In en, this message translates to:
  /// **'When'**
  String get registerB;

  /// No description provided for @registerC.
  ///
  /// In en, this message translates to:
  /// **'In which country did it take place?'**
  String get registerC;

  /// No description provided for @registerD.
  ///
  /// In en, this message translates to:
  /// **'What happened?'**
  String get registerD;

  /// No description provided for @registerE.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerE;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Enter the country name and touch the 🔍 to search. For a complete retrieval, touch with the field left blank.'**
  String get search;

  /// No description provided for @scalableA.
  ///
  /// In en, this message translates to:
  /// **'Enter the country name and touch the 🔍 to search. For a complete retrieval, touch with the field left blank. Proceeding without touching will result in an error.'**
  String get scalableA;

  /// No description provided for @scalableB.
  ///
  /// In en, this message translates to:
  /// **'After touching the 🔍, please select the display area'**
  String get scalableB;

  /// No description provided for @gameA.
  ///
  /// In en, this message translates to:
  /// **'Please choose a country from the predictive text. Starting the game without selecting any will target all entries.'**
  String get gameA;

  /// No description provided for @gameB.
  ///
  /// In en, this message translates to:
  /// **'Arrange the cards in the correct order.'**
  String get gameB;

  /// No description provided for @gameDialogA.
  ///
  /// In en, this message translates to:
  /// **'Too bad!'**
  String get gameDialogA;

  /// No description provided for @gameDialogB.
  ///
  /// In en, this message translates to:
  /// **'Would you like to try again?'**
  String get gameDialogB;

  /// No description provided for @gameDialogC.
  ///
  /// In en, this message translates to:
  /// **'The same cards again'**
  String get gameDialogC;

  /// No description provided for @gameDialogD.
  ///
  /// In en, this message translates to:
  /// **'New cards'**
  String get gameDialogD;

  /// No description provided for @gameAlertA.
  ///
  /// In en, this message translates to:
  /// **'Not enough events'**
  String get gameAlertA;

  /// No description provided for @gameAlertB.
  ///
  /// In en, this message translates to:
  /// **'At least 5 events are required'**
  String get gameAlertB;

  /// No description provided for @gameAlertC.
  ///
  /// In en, this message translates to:
  /// **'Add more events'**
  String get gameAlertC;

  /// No description provided for @gameAlertD.
  ///
  /// In en, this message translates to:
  /// **'Choose another country'**
  String get gameAlertD;

  /// No description provided for @cover.
  ///
  /// In en, this message translates to:
  /// **'assets/images/cover_en.png'**
  String get cover;

  /// No description provided for @modeA.
  ///
  /// In en, this message translates to:
  /// **'A 4D Journey\nThrough Time and Space'**
  String get modeA;

  /// No description provided for @modeB.
  ///
  /// In en, this message translates to:
  /// **'About This Project'**
  String get modeB;

  /// No description provided for @modeC.
  ///
  /// In en, this message translates to:
  /// **'How-to-use Video on YouTube'**
  String get modeC;

  /// No description provided for @modeD.
  ///
  /// In en, this message translates to:
  /// **'Detailed version in Widescreen'**
  String get modeD;

  /// No description provided for @modeE.
  ///
  /// In en, this message translates to:
  /// **'Simple version for Mobile Phones'**
  String get modeE;

  /// No description provided for @modeF.
  ///
  /// In en, this message translates to:
  /// **'iOS App'**
  String get modeF;

  /// No description provided for @modeG.
  ///
  /// In en, this message translates to:
  /// **'Android App'**
  String get modeG;

  /// No description provided for @webIndexA.
  ///
  /// In en, this message translates to:
  /// **'Register Event'**
  String get webIndexA;

  /// No description provided for @webIndexB.
  ///
  /// In en, this message translates to:
  /// **'Search & View'**
  String get webIndexB;

  /// No description provided for @webIndexC.
  ///
  /// In en, this message translates to:
  /// **'Bulk Import'**
  String get webIndexC;

  /// No description provided for @tabTopA.
  ///
  /// In en, this message translates to:
  /// **'Register an Event'**
  String get tabTopA;

  /// No description provided for @tabTopB.
  ///
  /// In en, this message translates to:
  /// **'index'**
  String get tabTopB;

  /// No description provided for @tabTopC.
  ///
  /// In en, this message translates to:
  /// **'search'**
  String get tabTopC;

  /// No description provided for @tabTopD.
  ///
  /// In en, this message translates to:
  /// **'PRINCIPAL'**
  String get tabTopD;

  /// No description provided for @tabTopE.
  ///
  /// In en, this message translates to:
  /// **'ADDITIONAL \'WHERE\''**
  String get tabTopE;

  /// No description provided for @tabTopF.
  ///
  /// In en, this message translates to:
  /// **'PARTICIPANT A'**
  String get tabTopF;

  /// No description provided for @tabTopG.
  ///
  /// In en, this message translates to:
  /// **'PARTICIPANT B'**
  String get tabTopG;

  /// No description provided for @tabTopH.
  ///
  /// In en, this message translates to:
  /// **'SEARCH TERMS'**
  String get tabTopH;

  /// No description provided for @tabTopI.
  ///
  /// In en, this message translates to:
  /// **'CONFIRM'**
  String get tabTopI;

  /// No description provided for @principalA.
  ///
  /// In en, this message translates to:
  /// **'Event(within 50 letters)'**
  String get principalA;

  /// No description provided for @showSelect.
  ///
  /// In en, this message translates to:
  /// **'Show and Select Options'**
  String get showSelect;

  /// No description provided for @saveTempo.
  ///
  /// In en, this message translates to:
  /// **'Save Temporarily'**
  String get saveTempo;

  /// No description provided for @principalD.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get principalD;

  /// No description provided for @principalE.
  ///
  /// In en, this message translates to:
  /// **'There are some fields that have not been filled in.\nAll required.'**
  String get principalE;

  /// No description provided for @principalModelA.
  ///
  /// In en, this message translates to:
  /// **'epochEn'**
  String get principalModelA;

  /// No description provided for @principalModelB.
  ///
  /// In en, this message translates to:
  /// **'cosmosEn'**
  String get principalModelB;

  /// No description provided for @principalModelC.
  ///
  /// In en, this message translates to:
  /// **'merEn'**
  String get principalModelC;

  /// No description provided for @principalModelD.
  ///
  /// In en, this message translates to:
  /// **'principalOptionsEn'**
  String get principalModelD;

  /// No description provided for @universe.
  ///
  /// In en, this message translates to:
  /// **'Universe'**
  String get universe;

  /// No description provided for @currentCountryName.
  ///
  /// In en, this message translates to:
  /// **'Current Country-name'**
  String get currentCountryName;

  /// No description provided for @oceanName.
  ///
  /// In en, this message translates to:
  /// **'Ocean-name'**
  String get oceanName;

  /// No description provided for @billion.
  ///
  /// In en, this message translates to:
  /// **'Billion Years'**
  String get billion;

  /// No description provided for @million.
  ///
  /// In en, this message translates to:
  /// **'Million Years'**
  String get million;

  /// No description provided for @thousand.
  ///
  /// In en, this message translates to:
  /// **'Thousand Years'**
  String get thousand;

  /// No description provided for @dating.
  ///
  /// In en, this message translates to:
  /// **'Years by Dating Methods'**
  String get dating;

  /// No description provided for @bce.
  ///
  /// In en, this message translates to:
  /// **'Before-CommonEra'**
  String get bce;

  /// No description provided for @ce.
  ///
  /// In en, this message translates to:
  /// **'Common-Era'**
  String get ce;

  /// No description provided for @newNameWant.
  ///
  /// In en, this message translates to:
  /// **'a New Name You Want'**
  String get newNameWant;

  /// No description provided for @addNewName.
  ///
  /// In en, this message translates to:
  /// **'Add a New Name'**
  String get addNewName;

  /// No description provided for @latitude.
  ///
  /// In en, this message translates to:
  /// **'Latitude(decimal)'**
  String get latitude;

  /// No description provided for @longitude.
  ///
  /// In en, this message translates to:
  /// **'Longitude(decimal)'**
  String get longitude;

  /// No description provided for @searchA.
  ///
  /// In en, this message translates to:
  /// **'Multiple Search Page'**
  String get searchA;

  /// No description provided for @searchB.
  ///
  /// In en, this message translates to:
  /// **'Which display format do you prefer?'**
  String get searchB;

  /// No description provided for @searchC.
  ///
  /// In en, this message translates to:
  /// **'CLASSIC'**
  String get searchC;

  /// No description provided for @searchD.
  ///
  /// In en, this message translates to:
  /// **'What narrows your search?'**
  String get searchD;

  /// No description provided for @searchE.
  ///
  /// In en, this message translates to:
  /// **'Show and Select your options'**
  String get searchE;

  /// No description provided for @searchF.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get searchF;

  /// No description provided for @saveAll.
  ///
  /// In en, this message translates to:
  /// **'register them ?'**
  String get saveAll;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
    case 'ja': return AppLocalizationsJa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
