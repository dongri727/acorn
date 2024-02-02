import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';

class WhoModel extends ChangeNotifier {
  List<Organisations> listOrgs = [];
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  List<People> listPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  Future<void> fetchOrgsInvolved() async {
    try {
      listOrgs = await client.organisations.getOrganisations();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  Future<void> addOrgsAndFetch(String newOrg) async {
    try{
      var orgs = Organisations(organisation: newOrg);
      listOrgs = await client.organisations.addAndReturnOrgs(orgs);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchPeopleInvolved() async {
    try {
      listPeople = await client.people.getPeople();
      notifyListeners();
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  Future<void> addPeopleAndFetch(String newPerson) async {
    try{
      var people = People(person: newPerson);
      listPeople = await client.people.addAndReturnPeople(people);
      notifyListeners();
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///RadioButton
  String _selectedOption = '';
  String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }

  ///仮表示
  String _selectedOrgs = '';
  int _selectedOrgsId = 0;
  String get selectedOrgs => _selectedOrgs;
  int get selectedOrgsId => _selectedOrgsId;

  set selectedOrgs(String choice) {
    _selectedOrgs = choice;
    print(selectedOrgs);
    notifyListeners();
  }

  set selectedOrgsId(int value) {
    _selectedOrgsId = value;
    print(selectedOrgsId);
    notifyListeners();
  }

  ///仮表示
  String _selectedPeople = '';
  int _selectedPeopleId = 0;
  String get selectedPeople => _selectedPeople;
  int get selectedPeopleId => _selectedPeopleId;

  set selectedPeople(String choice) {
    _selectedPeople = choice;
    print(selectedPeople);
    notifyListeners();
  }

  set selectedPeopleId(int value) {
    _selectedPeopleId = value;
    print(selectedPeopleId);
    notifyListeners();
  }
}
