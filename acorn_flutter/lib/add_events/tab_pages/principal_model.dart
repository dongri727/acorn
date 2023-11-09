import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'dart:math' as math;

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

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

/*  int calculateNewPoint(int newYearI, int newMonth, int newDay) {
    //make data of point
    return (((newYearI - 1) * 366 + (newMonth - 1) * 30.5 + newDay).toDouble()).round();
  }

  double calculateNewLogarithm(int newPoint) {
    //make data of logarithm
    return 5885.0 - double.parse((1000 * (math.log((newPoint - 768600).abs()))).toStringAsFixed(4));
  }

  double calculateNewCoefficient(double newLogarithm) {
    //make data of reverseLogarithm
    return 6820.0 + newLogarithm;
  }

  void calculateData(int newYearI, int newMonth, int newDay) {
    // Calculate newPoint
    int newPoint = calculateNewPoint(newYearI, newMonth, newDay);
    print('New Point: $newPoint');

    // Calculate newLogarithm using newPoint
    double newLogarithm = calculateNewLogarithm(newPoint);
    print('New Logarithm: $newLogarithm');

    // Calculate newCoefficient using newLogarithm
    double newCoefficient = calculateNewCoefficient(newLogarithm);
    print('New Coefficient: $newCoefficient');
  }*/

}