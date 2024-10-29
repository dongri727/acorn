import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/lists/principal_options_list.dart';
import 'dart:math';
import '../../confirm/confirm.dart';
import '../../lists/countries_list.dart';
import '../../lists/oceans_list.dart';
import '../../lists/period_list.dart';
import '../../lists/universe_list.dart';
import '../../utils/build_chips.dart';

class PrincipalModel extends ChangeNotifier {

  double log10(num x) => log(x) / ln10;

  var newYearD = 0.0;
  var newYearI = 0;
  var newAnnee = '';
  var newMonth = 0;
  var newDay = 0;
  late int newPoint;
  late double newLogarithm;
  late double newCoefficient;
  var newName = '';
  //var calendarNo = 0;

  List<String> periods = epoch;
  List<String> periodsFr = epochFr;
  List<String> periodsJa = epochJa;


  final List<String> filtersLocation = <String>[];

  ///Universe
  List<String> universe = cosmos;

  ///Pays
  List<Map<String, dynamic>> pays = countries;

  ///Oceans
  List<String> oceans = mer;

  //Chipに表示されるListとそこで選ばれたもの
  List<String> currentDisplayList = [];
  String? selectedOption = '';

  List<String> principalOption = principalOptions;
  List<String> principalOptionFr = principalOptionsFr;
  List<String> principalOptionJa = principalOptionsJp;

  String location = "";

  setNewName (text) {
    newName = text;
    notifyListeners();
  }

  ///DropdownButton
  String selectedCalendar = 'Common-Era';

  void setCalendar(String? value) {
    if (value != null) {
      //selectedCalendar = value;
      switch (value) {
        case 'Billion Years':
        case "Milliards d'années":
        case '〜十億年前':
          selectedCalendar = 'Billion Years';
          break;
        case 'Million Years':
        case "Millions d'années":
        case '〜百万年前':
          selectedCalendar = 'Million Years';
          break;
        case 'Thousand Years':
        case "Milliers d'années":
        case '千年単位':
          selectedCalendar = 'Thousand Years';
          break;
        case 'Years by Dating Methods':
        case "Années par méthodes de datation":
        case '炭素年代測定':
          selectedCalendar = 'Years by Dating Methods';
          break;
        case 'Before-CommonEra':
        case "Avant l'ère commune":
        case '紀元前':
          selectedCalendar = 'Before-CommonEra';
          break;
        case 'Common-Era':
        case "Ère commune":
        case '西暦':
          selectedCalendar = 'Common-Era';
          break;
      }
      print(selectedCalendar);
    }
    notifyListeners();
  }

  setNewYearD (value) {
    newYearD = double.parse(value);
    notifyListeners();
  }

  setNewMonth (value) {
    try {
      newMonth = int.parse(value);
    } catch (e) {
      newMonth = 0;
    }
    notifyListeners();
  }

  setNewDay (value) {
    try {
      newDay = int.parse(value);
    } catch (e) {
      newDay = 0;
    }
    notifyListeners();
  }

  void setSelectedOption(String? value) {
    if (value != null) {
      selectedOption = value;
    }
    notifyListeners();
  }

  Future<void> listRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Universe':
      case 'Univers':
      case '宇宙':
        currentDisplayList = universe;
        break;
      case 'Current Country-name':
      case 'Nom actuel du pays':
      case '現在の国名':
        currentDisplayList = pays.map((country) => country['name'] as String).toList();
        break;
      case 'Ocean-name':
      case 'Nom de l\'océan':
      case '海洋名':
        currentDisplayList = oceans;
        break;
    }
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    return buildChoiceSIFormat(
        choiceSIList: filtersLocation,
        choiceSIKey: item,
        onChoiceSISelected: (choiceSIKey) {
          chosenLocation = choiceSIKey;
        }
    );
  }

  bool isAllFieldFilled() {
    return newName.isNotEmpty &&
    selectedCalendar.isNotEmpty &&
    newYearD >= 0 &&
    newMonth >= 0 &&
    newDay >= 0 &&
    location.isNotEmpty;
  }

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    /// convert the years depending on the selected calendar period
    switch (selectedCalendar) {
      case 'Billion Years':
      case "Milliards d'années":
      case '〜十億年前':
        newYearI = (newYearD * 1000000000).round();
        newYearI = -newYearI.abs();
        break;
      case 'Million Years':
      case "Millions d'années":
      case '〜百万年前':
        newYearI = (newYearD * 1000000).round();
        newYearI = -newYearI.abs();
        break;
      case 'Thousand Years':
      case "Milliers d'années":
      case '千年単位':
        newYearI = (newYearD * 1000).round();
        newYearI = -newYearI.abs();
        break;
      case 'Years by Dating Methods':
      case "Années par méthodes de datation":
      case '炭素年代測定':
        newYearI = (2000 - newYearD).round();
        break;
      case 'Before-CommonEra':
      case "Avant l'ère commune":
      case '紀元前':
        newYearI = (newYearD).round();
        newYearI = -newYearI.abs();
        break;
      case 'Common-Era':
      case "Ère commune":
      case '西暦':
        newYearI = (newYearD).round();
        break;
    }
    print(newYearI);

    ///make data of point
    newPoint =
        (((newYearI - 1) * 366 + (newMonth - 1) * 30.5 + newDay)
            .toDouble())
            .round();

    ///make data of logarithm
    newLogarithm = double.parse(
        (5885.0 - (1000 * (log10((newPoint - 768600).abs()))))
            .toStringAsFixed(4));

    ///make data of reverseLogarithm
    newCoefficient = 6820.0 + newLogarithm;

    switch (selectedCalendar) {
      case 'Billion Years':
      case "Milliards d'années":
      case '〜十億年前':
        newAnnee = '${newYearD}B years ago';
        break;
      case 'Million Years':
      case "Millions d'années":
      case '〜百万年前':
        newAnnee = '${newYearD}M years ago';
        break;
      case 'Thousand Years':
      case "Milliers d'années":
      case '千年単位':
        newAnnee = '${newYearD}K years ago';
        break;
      case 'Years by Dating Methods':
      case "Années par méthodes de datation":
      case '炭素年代測定':
        newAnnee = 'about $newYearD years ago';
        break;
      case 'Before-CommonEra':
      case "Avant l'ère commune":
      case '紀元前':
        newAnnee = 'BCE ${(newYearD).round()}';
        break;
      case 'Common-Era':
      case "Ère commune":
      case '西暦':
        newAnnee = 'CE ${(newYearD).round()}';
        break;
    }

    // データの一時保存処理
    confirm.isSelectedCalendar = selectedCalendar;
    confirm.year = newYearI;
    confirm.annee = newAnnee;
    confirm.month = newMonth;
    confirm.day = newDay;
    confirm.point = newPoint;
    confirm.logarithm = newLogarithm;
    confirm.coefficient = newCoefficient;

    ///選択されたlocation
    confirm.selectedLocation = location;

    confirm.name = newName;

    ///選択されたlocation
    confirm.selectedLocation = location;

  }


  ///仮表示
  String chosenUniverse = '';

  String chosenPays = '';

  String chosenOcean = '';

  String chosenLocation = '';

  void updateLocation(String newLocation) {
    location = newLocation;
    notifyListeners();
  }

  void updateDisplayList(List<String> newList) {
    currentDisplayList = newList;
    notifyListeners();
  }
}