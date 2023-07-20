import 'dart:core';

import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/foundation.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';


import 'confirm.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class ConfirmModel extends ChangeNotifier {
  ConfirmModel();

  int annee = 0;
  String affair = "";
  String pays = "";

  String month = "";
  String jour = "";
  String localDate = "";

  String place = "";
  String att = "";

  final latitude = 0.0;
  final longitude = 0.0;
  final dx = 0.0;
  final dy = 0.0;
  final dz = 0.0;

  List<String> countriesInvolved = [];
  List<String> attsInvolved = [];
  List<String> orgs = [];
  List<String> people = [];
  List<String> categories = [];
  List<String> terms = [];

  late int principalLastVal;
  late int placeLastVal;
  late int principalMoisLastVal;
  late int principalJourLastVal;
  late int principalLocalDateLastVal;
  late int principalPlaceLastVal;
  late int principalAttLastVal;
  late int principalLieuxLastVal;
  late int principalPaysInvolvedLastVal;
  late int principalAttsInvolvedLastVal;
  late int principalOrgsLastVal;
  late int principalPeopleLastVal;
  late int principalCategoriesLastVal;
  late int principalTermsLastVal;
  late int billionLastVal;
  late int billionPlaceLastVal;
  late int billionCategoriesLastVal;
  late int billionTermsLastVal;

  Future addPrincipal(Principal principal) async {
    try {
      var result = await client.principal.addPrincipal(principal);
      print('Add principal : $result');
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future addMonths(Months months) async {
    try {
      var result = await client.months.addMonths(months);
      debugPrint('Add months : $result');
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future addDays(Days days) async {
    try {
      var result = await client.days.addDays(days);
      debugPrint('Add days : $result');
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }


  //insert into DB
  Future<void> save(Confirm confirm) async {
    try {
    var principal = Principal(annee: confirm.year, affair: confirm.name, pays: confirm.country);
    var principalId = await client.principal.addPrincipal(principal);
    if (principalId == null) {
      debugPrint('Error: Failed to add principal');
      return;
    }
    debugPrint('Add principal : $principalId');


    if (confirm.isSelectedMonth != null) {
      var months = Months(
          principal_id: principalId, month: confirm.isSelectedMonth!);
      var monthsResult = await addMonths(months);
      if (monthsResult == null) {
        debugPrint('Error: Failed to add months');
        return;
      }
      debugPrint('save month');
    }

    if (confirm.isSelectedDate != null) {
      var days = Days(
          principal_id: principalId, day: confirm.isSelectedDate!);
      var daysResult = await addDays(days);
      if (daysResult == null) {
        debugPrint('Error: Failed to add days');
        return;
      }
      debugPrint('save date');
    }
    } catch (e) {
    debugPrint('Error: $e');
  }



/*    Future addPrincipalJours() async {
      var principalJours =
      PrincipalJours(principal_id: principalLastVal, jour: jour);
      principalJourLastVal =
      await client.principalJours.addPrincipalJours(principalJours);
      <String, String?>{
        jour: confirm.isSelectedDate,
      };
    }*/

/*    Future addPrincipalLocalDates() async {
      var principalLocalDates = PrincipalLocalDates(
          principal_id: principalLastVal, localDate: localDate);
      principalLocalDateLastVal = await client.principalLocalDates
          .addPrincipalLocalDates(principalLocalDates);
      <String, String?>{
        "localDate": confirm.dateLocal,
      };
    }*/

/*    Future addPrincipalPlaces() async {
      var principalPlaces =
      PrincipalPlaces(principal_id: principalLastVal, place: place);
      principalPlaceLastVal =
      await client.principalPlaces.addPrincipalPlaces(principalPlaces);
      <String, String?>{
        "place": confirm.place,
      };
    }*/

/*    Future addPrincipalAtts() async {
      var principalAtts =
      PrincipalAtts(principal_id: principalLastVal, att: att);
      principalAttLastVal =
      await client.principalAtts.addPrincipalAtts(principalAtts);
      <String, String?>{
        "att": confirm.att,
      };
    }*/

/*    Future addPrincipalLieux() async {
      var principalLieux = PrincipalLieux(
        principal_id: principalLastVal,
        latitude: latitude,
        longitude: longitude,
        three_d_x: dx,
        three_d_y: dy,
        three_d_z: dz,
      );
      principalLieuxLastVal =
      await client.principalLieux.addPrincipalLieux(principalLieux);
      <double, double?>{
        latitude: confirm.latitude,
        longitude: confirm.longitude,
        dx: confirm.x,
        dy: confirm.y,
        dz: confirm.z,
      };
    }*/

/*    ///todo Listを入力するにはどうすればいいのか？
    Future addPrincipalPaysInvolved() async {
      var principalPaysInvolved = PrincipalPaysInvolved(
          principal_id: principalLastVal, paysInvolved: countriesInvolved);
      principalPaysInvolvedLastVal = await client.principalPaysInvolved
          .addPrincipalPaysInvolved(principalPaysInvolved);
      <List<String>, List<String>?>{
        countriesInvolved: confirm.selectedPays,
      };
    }*/

/*    Future addPrincipalAttsInvolved() async {
      var principalAttsInvolved = PrincipalAttsInvolved(
          principal_id: principalLastVal, atts: attsInvolved);
      principalAttsInvolvedLastVal = await client.principalAttsInvolved
          .addPrincipalAttsInvolved(principalAttsInvolved);
      <List<String>, List<String>?>{
        attsInvolved: confirm.selectedATT,
      };
    }*/

/*    Future addPrincipalOrgs() async {
      var principalOrgs =
      PrincipalOrgs(principal_id: principalLastVal, orgs: orgs);
      principalOrgsLastVal =
      await client.principalOrgs.addPrincipalOrgs(principalOrgs);
      <List<String>, List<String>?>{
        orgs: confirm.selectedOrg,
      };
    }*/

/*    Future addPrincipalPeople() async {
      var principalPeople =
      PrincipalPeople(principal_id: principalLastVal, people: people);
      principalPeopleLastVal =
      await client.principalPeople.addPrincipalPeople(principalPeople);
      <List<String>, List<String>?>{
        people: confirm.selectedWho,
      };
    }*/

/*    Future addPrincipalCategories() async {
      var principalCategories = PrincipalCategories(
          principal_id: principalLastVal, categories: categories);
      principalCategoriesLastVal = await client.principalCategories
          .addPrincipalCategories(principalCategories);
      <List<String>, List<String>?>{
        categories: confirm.selectedCategory,
      };
    }*/

/*    Future addPrincipalTerms() async {
      var principalTerms =
      PrincipalTerms(principal_id: principalLastVal, terms: terms);
      principalTermsLastVal =
      await client.principalTerms.addPrincipalTerms(principalTerms);
      <List<String>, List<String>?>{
        terms: confirm.selectedTerm,
      };
    }*/


/*    Future addBillionPlaces() async {
      var billionPlaces =
      BillionPlaces(billion_id: billionLastVal, place: place);
      billionPlaceLastVal =
      await client.billionPlaces.addBillionPlaces(billionPlaces);
      <String, String?>{
        "place": confirm.place,
      };
    }*/

/*    Future addBillionLieux() async {
      var principalLieux = PrincipalLieux(
        principal_id: principalLastVal,
        latitude: latitude,
        longitude: longitude,
        three_d_x: dx,
        three_d_y: dy,
        three_d_z: dz,
      );
      principalLieuxLastVal =
      await client.principalLieux.addPrincipalLieux(principalLieux);
      <double, double?>{
        latitude: confirm.latitude,
        longitude: confirm.longitude,
        dx: confirm.x,
        dy: confirm.y,
        dz: confirm.z,
      };
    }*/

/*    Future addBillionCategories() async {
      var billionCategories =
      BillionCategories(billion_id: billionLastVal, categories: categories);
      billionCategoriesLastVal = await client.billionCategories
          .addBillionCategories(billionCategories);
      <List<String>, List<String>?>{
        categories: confirm.selectedCategory,
      };
    }*/

/*    Future addBillionTerms() async {
      var billionTerms = BillionTerms(billion_id: billionLastVal, terms: terms);
      billionTermsLastVal =
      await client.billionTerms.addBillionTerms(billionTerms);
      <List<String>, List<String>?>{
        terms: confirm.selectedTerm,
      };
    }*/

/*    switch (confirm.isSelectedCalendar) {
      case 'PrincipalYears':
      //when
        addPrincipal;
        if (confirm.isSelectedMonth != 'No-Month') {
          addPrincipalMois;
        }
        if (confirm.isSelectedDate != 'No-Date') {
          addPrincipalJours;
        }
        if (confirm.dateLocal != null) {
          addPrincipalLocalDates;
        }
        //where
        if (confirm.place != null) {
          addPrincipalPlaces();
        }
        if (confirm.att != null) {
          addPrincipalAtts();
        }
        if (confirm.latitude != null) {
          addPrincipalLieux();
        }
        //participantsA
        if (confirm.selectedPays.isNotEmpty) {
          addPrincipalPaysInvolved();
        }
        if (confirm.selectedATT.isNotEmpty) {
          addPrincipalAttsInvolved();
        }
        //participantsB
        if (confirm.selectedOrg.isNotEmpty) {
          addPrincipalOrgs();
        }
        if (confirm.selectedWho.isNotEmpty) {
          addPrincipalPeople();
        }
        //terms
        if (confirm.selectedCategory.isNotEmpty) {
          addPrincipalCategories();
        }
        if (confirm.selectedTerm.isNotEmpty) {
          addPrincipalTerms();
        }
        break;
      case 'BillionYears':
        addBillion;
        //where
        if (confirm.place != null) {
          addBillionPlaces();
        }
        if (confirm.latitude != null) {
          addBillionLieux();
        }
        //participantsA

        //terms
        if (confirm.selectedCategory.isNotEmpty) {
          addBillionCategories();
        }
        if (confirm.selectedTerm.isNotEmpty){
          addBillionTerms();
        }
        break;*/
/*       case 'MillionYears':
        break;
      case 'ThousandYears':
        break;
      case 'DatingMethods':
        break;
 */
    }

    //if place data exist, insert place data into Places table

    //Insert 2Ids into lilational table

    //if longitude, latitude data exist, insert into locations table

    //Insert 2Ids into lilational table

    //if date data exist, insert date data into date table

    //Insert 2Ids into lilational table

    //if att data exist, insert att data into att table

    //Insert 2Ids into lilational table

    //country involved

    //Insert 2Ids into lilational table

    //ATT involved
    //todo Listを入力するのはこれでいいのか？
   // if (confirm.selectedATT.isNotEmpty) {}

    //Insert 2Ids into lilational table

    //organizations involved
    //todo Listを入力するのはこれでいいのか？

    //people involved
    //todo Listを入力するのはこれでいいのか？

    //category
    //todo Listを入力するのはこれでいいのか？

    //term
    //todo Listを入力するのはこれでいいのか？

    //ALL
    //todo 詳細表示を迅速にするための、すべてを一括管理するtableは必要か。
  }
//}
