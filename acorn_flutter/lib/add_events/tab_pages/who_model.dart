import 'package:acorn_flutter/exporter.dart';
import 'package:acorn_client/acorn_client.dart';
import '../../confirm/confirm.dart';
import '../../fetch/fetch_orgs.dart';
import '../../fetch/fetch_people.dart';
import '../../utils/build_chips.dart';


class WhoModel extends ChangeNotifier {

  late final FetchOrgsRepository _fetchOrgsRepository;
  late final FetchPeopleRepository _fetchPeopleRepository;

  WhoModel(){
    _fetchOrgsRepository = FetchOrgsRepository();
    _fetchPeopleRepository = FetchPeopleRepository();
  }

  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  var newOrg = '';
  var newPerson = '';

  List<String> options = ['Institutions,Organisations etc', 'People'];
  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        await _fetchOrgsRepository.fetchOrgsInDetail();
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'People':
        await _fetchPeopleRepository.fetchPeopleInDetail();
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
    }
    notifyListeners();
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        newOrg = text;
        break;
      case 'People':
        newPerson = text;
        break;
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        await _fetchOrgsRepository.addDetailOrgsAndFetch('organisations', newOrg);
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'People':
        await _fetchPeopleRepository.addDetailPeopleAndFetch('people', newPerson);
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
    }
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Institutions,Organisations etc':
        return buildFilterFormatImediat(
          filteredKeys: filtersOrgs,
          filteredValues: filtersOrgsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedOrgs = key;
            selectedOrgsId = value;
            updateSelectedOrgs(key);
          },
        );
      case 'People':
        return buildFilterFormatImediat(
          filteredKeys: filtersPeople,
          filteredValues: filtersPeopleId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPeople = key;
            selectedPeopleId = value;
            updateSelectedPeople(key);
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  void updateSelectedOrgs(String newSelectedOrgs) {
    selectedOrgs = newSelectedOrgs;
    notifyListeners();
  }

  void updateSelectedPeople(String newSelectedPeople) {
    selectedPeople = newSelectedPeople;
    notifyListeners();
  }

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedOrg = filtersOrgs;
    confirm.selectedOrgId = filtersOrgsId;

    confirm.selectedWho = filtersPeople;
    confirm.selectedWhoId = filtersPeopleId;

  }

  ///RadioButton
  String selectedOption = '';

  ///仮表示
  String selectedOrgs = '';
  int selectedOrgsId = 0;

  ///仮表示
  String selectedPeople = '';
  int selectedPeopleId = 0;

}
