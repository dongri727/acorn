import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/fetch/fetch_publisher.dart';
import '../../confirm/confirm.dart';
import '../../fetch/fetch_orgs.dart';
import '../../fetch/fetch_people.dart';
import '../../fetch/fetch_ships.dart';
import '../../fetch/fetch_univs.dart';
import '../../lists/who_options_list.dart';
import '../../utils/build_chips.dart';


class WhoModel extends ChangeNotifier {

  late final FetchOrgsRepository _fetchOrgsRepository;
  late final FetchUnivsRepository _fetchUnivsRepository;
  late final FetchPublisherRepository _fetchPublisherRepository;
  late final FetchPeopleRepository _fetchPeopleRepository;
  late final FetchShipsRepository _fetchShipsRepository;

  WhoModel(){
    _fetchOrgsRepository = FetchOrgsRepository();
    _fetchUnivsRepository = FetchUnivsRepository();
    _fetchPublisherRepository = FetchPublisherRepository();
    _fetchPeopleRepository = FetchPeopleRepository();
    _fetchShipsRepository = FetchShipsRepository();
  }

  final List<String> filtersOrgs = <String>[];
  final List<int> filtersOrgsId = <int>[];

  final List<String> filtersUnivs = <String>[];
  final List<int> filtersUnivsId = <int>[];

  final List<String> filtersPublisher = <String>[];
  final List<int> filtersPublisherId = <int>[];

  final List<String> filtersPeople = <String>[];
  final List<int> filtersPeopleId = <int>[];

  final List<String> filtersShips = <String>[];
  final List<int> filtersShipsId = <int>[];

  var newOrg = '';
  var newUniv = '';
  var newPublisher = '';
  var newPerson = '';
  var newShip = '';

  List<String> options = whoOptions;
  List<String> optionsFr = whoOptionsFr;
  List<String> optionsJa = whoOptionsJa;

  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Institutions, Organisations etc.':
      case '機関、組織、施設など':
        await _fetchOrgsRepository.fetchOrgsInDetail();
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'Universities':
      case 'Universités':
      case '大学':
        await _fetchUnivsRepository.fetchUnivsInDetail();
        currentDisplayList = _fetchUnivsRepository.listDetailUnivs;
        break;
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
        await _fetchPublisherRepository.fetchPublisherInDetail();
        currentDisplayList = _fetchPublisherRepository.listDetailPublisher;
        break;
      case 'People':
      case 'Personnes':
      case '人物':
        await _fetchPeopleRepository.fetchPeopleInDetail();
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
      case 'Ships':
      case 'Nom du navire':
      case '船名':
        await _fetchShipsRepository.fetchShipsInDetail();
        currentDisplayList = _fetchShipsRepository.listDetailShips;
        break;
    }
    notifyListeners();
  }

  setNewWord(text) {
    switch (selectedOption) {
      case 'Institutions, Organisations etc.':
      case '機関、組織、施設など':
        newOrg = text;
        break;
      case 'Universities':
      case 'Universités':
      case '大学':
        newUniv = text;
        break;
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
        newPublisher = text;
        break;
      case 'People':
      case 'Personnes':
      case '人物':
        newPerson = text;
        break;
      case 'Ships':
      case 'Nom du navire':
      case '船名':
        newShip = text;
        break;
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Institutions, Organisations etc.':
      case '機関、組織、施設など':
        await _fetchOrgsRepository.addDetailOrgsAndFetch('organisations', newOrg);
        currentDisplayList = _fetchOrgsRepository.listDetailOrgs;
        break;
      case 'Universities':
      case 'Universités':
      case '大学':
        await _fetchUnivsRepository.addDetailUnivsAndFetch('universities', newUniv);
        currentDisplayList = _fetchUnivsRepository.listDetailUnivs;
        break;
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
        await _fetchPublisherRepository.addDetailPublisherAndFetch('publisher', newPublisher);
        currentDisplayList = _fetchPublisherRepository.listDetailPublisher;
        break;
      case 'People':
      case 'Personnes':
      case '人物':
        await _fetchPeopleRepository.addDetailPeopleAndFetch('people', newPerson);
        currentDisplayList = _fetchPeopleRepository.listDetailPeople;
        break;
      case 'Ships':
      case 'Nom du navire':
      case '船名':
        await _fetchShipsRepository.addDetailShipsAndFetch('ships', newShip);
        currentDisplayList = _fetchShipsRepository.listDetailShips;
        break;
    }
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Institutions, Organisations etc.':
      case '機関、組織、施設など':
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
      case 'Universities':
      case 'Universités':
      case '大学':
        return buildFilterFormatImediat(
          filteredKeys: filtersUnivs,
          filteredValues: filtersUnivsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedUnivs = key;
            selectedUnivsId = value;
            updateSelectedUnivs(key);
          },
        );
      case 'Publishers, Websites':
      case 'Éditeurs, Sites Web':
      case '出版社、ウェブサイト':
        return buildFilterFormatImediat(
          filteredKeys: filtersPublisher,
          filteredValues: filtersPublisherId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPublisher = key;
            selectedPublisherId = value;
            updateSelectedPublisher(key);
          },
        );
      case 'People':
      case 'Personnes':
      case '人物':
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
      case 'Ships':
      case 'Nom du navire':
      case '船名':
        return buildFilterFormatImediat(
          filteredKeys: filtersShips,
          filteredValues: filtersShipsId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedShips = key;
            selectedShipsId = value;
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

  void updateSelectedUnivs(String newSelectedUnivs) {
    selectedUnivs = newSelectedUnivs;
    notifyListeners();
  }

  void updateSelectedPublisher(String newSelectedPublisher) {
    selectedPublisher = newSelectedPublisher;
    notifyListeners();
  }

  void updateSelectedPeople(String newSelectedPeople) {
    selectedPeople = newSelectedPeople;
    notifyListeners();
  }

  void updateSelectedShips(String newSelectedShips) {
    selectedShips = newSelectedShips;
    notifyListeners();
  }

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedOrg = filtersOrgs;
    confirm.selectedOrgId = filtersOrgsId;

    confirm.selectedUniv = filtersUnivs;
    confirm.selectedUnivId = filtersUnivsId;

    confirm.selectedPublisher = filtersPublisher;
    confirm.selectedPublisherId = filtersPublisherId;

    confirm.selectedWho = filtersPeople;
    confirm.selectedWhoId = filtersPeopleId;

    confirm.selectedShips = filtersShips;
    confirm.selectedShipsId = filtersShipsId;

  }

  ///RadioButton
  String selectedOption = '';

  ///仮表示
  String selectedOrgs = '';
  int selectedOrgsId = 0;

  ///仮表示
  String selectedUnivs = '';
  int selectedUnivsId = 0;

  ///仮表示
  String selectedPublisher = '';
  int selectedPublisherId = 0;

  ///仮表示
  String selectedPeople = '';
  int selectedPeopleId = 0;

  ///仮表示
  String selectedShips = '';
  int selectedShipsId = 0;

}
