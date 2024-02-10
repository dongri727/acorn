import 'package:flutter/material.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:acorn_flutter/serverpod_client.dart';

import '../../confirm/confirm.dart';
import '../../utils/build_chips.dart';
import '../../utils/chips_format.dart';

class WhoModel extends ChangeNotifier {
  List<Organisations> listOrgs = [];
  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  List<People> listPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  var newOrg = '';
  var newPerson = '';

  List<String> options = ['Institutions,Organisations etc', 'People'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  List<Map<String, String>> displayListPeople = [];

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

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        await fetchOrgsInvolved();
        break;
      case 'People':
        await fetchPeopleInvolved();
        break;
    }
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        newOrg = text;
        notifyListeners();
        break;
      case 'People':
        newPerson = text;
        notifyListeners();
        break;
    }
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        await addOrgsAndFetch(newOrg);
        break;
      case 'People':
        await addPeopleAndFetch(newPerson);
        break;
    }
  }

  Widget buildItemWidget(dynamic item) {
    String itemType = _getItemType(item);
    switch (itemType) {
      case 'Institutions,Organisations etc':
        return buildFilterFormatImediat(
          filteredKeys: filtersOrgs,
          filteredValues: filtersOrgsId,
          filterKey: (item as Organisations).organisation,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedOrgs = key;
            selectedOrgsId = value;
          },
        );
      case 'People':
        return buildFilterFormatImediat(
          filteredKeys: filtersPeople,
          filteredValues: filtersPeopleId,
          filterKey: (item as People).person,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPeople = key;
            selectedPeopleId = value;
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  String _getItemType(dynamic item) {
    if (item is Organisations) return 'Institutions,Organisations etc';
    if (item is People) return 'People';
    return 'Unknown';
  }

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedCountries = filtersOrgs;
    confirm.selectedCountriesId = filtersOrgsId;
    print("pays:$filtersOrgs");

    confirm.selectedPlaces = filtersPeople;
    confirm.selectedPlacesId = filtersPeopleId;
    print("places:$filtersPeople");

  }


/*  Widget _buildFilterFormatImediat({
    required List<String> filteredKeys,
    required List<int> filteredValues,
    required String filterKey,
    required int filterValue,
    required Function(String, int) onSelected,
  }) {
    return FilterFormatImediat(
        filteredImKeys: filteredKeys,
        filteredImValues: filteredValues,
        filterImKey: filterKey,
        filterImValue: filterValue,
        onSelected: onSelected);
  }*/

  ///RadioButton
  String selectedOption = '';
/*  String get selectedOption => _selectedOption;

  set selectedOption(String value) {
    _selectedOption = value;
    notifyListeners();
  }*/

  ///仮表示
  String selectedOrgs = '';
  int selectedOrgsId = 0;
/*  String get selectedOrgs => _selectedOrgs;
  int get selectedOrgsId => _selectedOrgsId;

  set selectedOrgs(String choice) {
    _selectedOrgs = choice;
    print(selectedOrgs);
    notifyListeners();
  }*/

/*  set selectedOrgsId(int value) {
    _selectedOrgsId = value;
    print(selectedOrgsId);
    notifyListeners();
  }*/

  ///仮表示
  String selectedPeople = '';
  int selectedPeopleId = 0;
/*  String get selectedPeople => _selectedPeople;
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
  }*/
}
