import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';

import 'dart:math' as math;

class PrincipalModel extends ChangeNotifier {

  String location = "";

  ///DropdownButton
  String _selectedCalendar = '';
  String get selectedCalendar => _selectedCalendar;

  set selectedCalendar(String value) {
    _selectedCalendar = value;
    notifyListeners();
  }

  ///RadioButton
  String _selectedOption = '';
  String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }

  ///仮表示
  String _chosenUniverse = '';
  String get chosenUniverse => _chosenUniverse;

  set chosenUniverse(String choice) {
    _chosenUniverse = choice;
    print(chosenUniverse);
    notifyListeners();
  }

  String _chosenPays = '';
  String get chosenPays => _chosenPays;

  set chosenPays(String choice) {
    _chosenPays = choice;
    notifyListeners();
  }

  String _chosenOcean = '';
  String get chosenOcean => _chosenOcean;

  set chosenOcean(String choice) {
    _chosenOcean = choice;
    notifyListeners();
  }

  String _chosenLocation = '';
  String get chosenLocation => _chosenLocation;

  List<String> currentDisplayList = [];

  set chosenLocation(String location) {
    _chosenLocation = "";
    notifyListeners();
  }

  void updateLocation(String newLocation) {
    location = newLocation;
    notifyListeners();
  }

  void updateDisplayList(List<String> newList) {
    currentDisplayList = newList;
    notifyListeners();
  }

}