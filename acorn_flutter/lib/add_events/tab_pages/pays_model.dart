import 'package:acorn_flutter/exporter.dart';
import 'dart:core';
import 'package:acorn_flutter/lists/pays_options_list.dart';
import 'package:acorn_client/acorn_client.dart';
import '../../confirm/confirm.dart';
import '../../fetch/fetch_catt.dart';
import '../../fetch/fetch_patt.dart';
import '../../fetch/fetch_place.dart';
import '../../fetch/fetch_stars.dart';
import '../../lists/countries_list.dart';
import '../../utils/build_chips.dart';


class PaysModel extends ChangeNotifier {

  late final FetchStarsRepository  _fetchStarsRepository;
  late final FetchCattRepository _fetchCattRepository;
  late final FetchPattRepository _fetchPattRepository;
  late final FetchPlaceRepository _fetchPlaceRepository;

  PaysModel(){
    _fetchStarsRepository = FetchStarsRepository();
    _fetchCattRepository = FetchCattRepository();
    _fetchPattRepository = FetchPattRepository();
    _fetchPlaceRepository = FetchPlaceRepository();
  }

  var newPlace = '';
  var newCATT = '';
  var newPATT = '';
  var newStar = '';

  List<String> options = paysOptions;
  List<String> optionsFr = paysOptionsFr;
  List<String> optionsJa = paysOptionsJa;

  String isSelectedOption = '';
  List<dynamic> currentDisplayList = [];

  var keyCountry = '';

  ///関係国の現在名
  List<Map<String, dynamic>> listPaysInv = countries;
  final List<String> filtersPaysInv = <String>[];
  final List<int> filtersPaysInvId = <int>[];

  ///関係都市等の現在名
  //List<Places> listPlaces = [];
  //List<Detail> listDetailPlaces = [];
  final List<String> filtersPlaces = <String>[];
  final List<int> filtersPlacesId = <int>[];

  ///関係国の当時の名称
  //List<Countryatts> listCATTs = [];
  final List<String> filtersCATTs = <String>[];
  final List<int> filtersCATTId = <int>[];

  ///関係都市等の当時の名称
  //List<Placeatts> listPATTs = [];
  final List<String> filtersPATTs = <String>[];
  final List<int> filtersPATTId = <int>[];

  ///観測された星
  //List<Stars> listStars = [];
  //List<Detail> listDetailStars = [];
  final List<String> filtersStars = <String>[];
  final List<int> filtersStarId = <int>[];

  Future<void> fetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Current Name of Country Involved':
      case 'Nom actuel du pays impliqué':
      case '関係国の現在名':
        currentDisplayList = listPaysInv;
        break;
      case 'Current Name of Place Involved':
      case 'Nom actuel du lieu impliqué':
      case '関係都市の現在名':
        await _fetchPlaceRepository.fetchPlaceInvolvedInDetail();
        currentDisplayList = _fetchPlaceRepository.listDetailPlaces;
        break;
      case 'Name of Country Involved at that time':
      case 'Nom du pays impliqué à l\'époque':
      case '当時の関係国名':
        await _fetchCattRepository.fetchCattsInDetail();
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Name of Place Involved at that time':
      case 'Nom du lieu impliqué à l\'époque':
      case '当時の関係都市名':
        await _fetchPattRepository.fetchPattsInDetail();
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
      case 'Stars Observed or Aimed at':
      case 'Étoiles observées ou visées':
      case '観測された星、目指した星など':
        await _fetchStarsRepository.fetchStarsInDetail();
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;
    }
    notifyListeners();
  }

  setNewWord(text) {
    switch (selectedOption) {
      //country must not be added
      case 'Current Name of Place Involved':
      case 'Nom actuel du lieu impliqué':
      case '関係都市の現在名':
        newPlace = text;
        break;
      case 'Name of Country Involved at that time':
      case 'Nom du pays impliqué à l\'époque':
      case '当時の関係国名':
        newCATT = text;
        break;
      case 'Name of Place Involved at that time':
      case 'Nom du lieu impliqué à l\'époque':
      case '当時の関係都市名':
        newPATT = text;
        break;
      case 'Stars Observed or Aimed at':
      case 'Étoiles observées ou visées':
      case '観測された星、目指した星など':
        newStar = text;
        break;
    }
    notifyListeners();
  }

  Future<void> addAndFetchRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      //country must not be added
      case 'Current Name of Place Involved':
      case 'Nom actuel du lieu impliqué':
      case '関係都市の現在名':
        await _fetchPlaceRepository.addDetailPlacesAndFetch('places_involved', newPlace);
        currentDisplayList = _fetchPlaceRepository.listPlaces;
        break;
      case 'Name of Country Involved at that time':
      case 'Nom du pays impliqué à l\'époque':
      case '当時の関係国名':
        await _fetchCattRepository.addDetailCattsAndFetch('countryatts', newCATT);
        currentDisplayList = _fetchCattRepository.listDetailCatts;
        break;
      case 'Name of Place Involved at that time':
      case 'Nom du lieu impliqué à l\'époque':
      case '当時の関係都市名':
        await _fetchPattRepository.addDetailPattsAndFetch('placeatts', newPATT);
        currentDisplayList = _fetchPattRepository.listDetailPatts;
        break;
      case 'Stars Observed or Aimed at':
      case 'Étoiles observées ou visées':
      case '観測された星、目指した星など':
        await _fetchStarsRepository.addDetailStarsAndFetch('stars_involved', newStar);
        currentDisplayList = _fetchStarsRepository.listDetailStars;
        break;
    }
    notifyListeners();
  }

  Widget buildItemWidget(dynamic item) {
    switch (selectedOption) {
      case 'Current Name of Country Involved':
      case 'Nom actuel du pays impliqué':
      case '関係国の現在名':
        return buildFilterFormatImediat(
          filteredKeys: filtersPaysInv,
          filteredValues: filtersPaysInvId,
          filterKey: item['name'],
          filterValue: item['detailId'],
          onSelected: (key, value) {
            selectedPaysInv = key;
            selectedPaysInvId = value;
            updateSelectedPaysInv(key);
          });
      case 'Current Name of Place Involved':
      case 'Nom actuel du lieu impliqué':
      case '関係都市の現在名':
        return buildFilterFormatImediat(
          filteredKeys: filtersPlaces,
          filteredValues: filtersPlacesId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPlaceInv = key;
            selectedPlaceInvId = value;
            updateSelectedPlaceInv(key);
          },
        );
      case 'Name of Country Involved at that time':
      case 'Nom du pays impliqué à l\'époque':
      case '当時の関係国名':
        return buildFilterFormatImediat(
          filteredKeys: filtersCATTs,
          filteredValues: filtersCATTId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedCattInv = key;
            selectedCattInvId = value;
            updateSelectedCattInv(key);
          },
        ); 
      case 'Name of Place Involved at that time':
      case 'Nom du lieu impliqué à l\'époque':
      case '当時の関係都市名':
        return buildFilterFormatImediat(
          filteredKeys: filtersPATTs,
          filteredValues: filtersPATTId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedPattInv = key;
            selectedPattInvId = value;
            updateSelectedPattInv(key);
          },
        ); 
      case 'Stars Observed or Aimed at':
      case 'Étoiles observées ou visées':
      case '観測された星、目指した星など':
        return buildFilterFormatImediat(
          filteredKeys: filtersStars,
          filteredValues: filtersStarId,
          filterKey: (item as Detail).mot,
          filterValue: item.id!,
          onSelected: (key, value) {
            selectedStarInv = key;
            selectedStarInvId = value;
            updateSelectedStarInv(key);
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  void updateSelectedPaysInv(String newSelectedPaysInv) {
    selectedPaysInv = newSelectedPaysInv;
    notifyListeners();
  }

  void updateSelectedPlaceInv(String newSelectedPlaceInv) {
    selectedPlaceInv = newSelectedPlaceInv;
    notifyListeners();
  }

  void updateSelectedCattInv(String newSelectedCattInv) {
    selectedCattInv = newSelectedCattInv;
    notifyListeners();
  }

  void updateSelectedPattInv(String newSelectedPattInv) {
    selectedPattInv = newSelectedPattInv;
    notifyListeners();
  }

  void updateSelectedStarInv(String newSelectedStarInv) {
    selectedStarInv = newSelectedStarInv;
    notifyListeners();
  }


  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);

    // データの一時保存処理
    confirm.selectedCountries = filtersPaysInv;
    confirm.selectedCountriesId = filtersPaysInvId;

    confirm.selectedPlaces = filtersPlaces;
    confirm.selectedPlacesId = filtersPlacesId;

    confirm.selectedATT = filtersCATTs;
    confirm.selectedATTId = filtersCATTId;

    confirm.selectedPATT = filtersPATTs;
    confirm.selectedPATTId = filtersPATTId;

    confirm.selectedStar = filtersStars;
    confirm.selectedStarId = filtersStarId;
  }  

  String selectedPaysInv = '';
  int selectedPaysInvId = 0;

  String selectedPlaceInv = '';
  int selectedPlaceInvId = 0;

  String selectedCattInv = '';
  int selectedCattInvId = 0;

  String selectedPattInv = '';
  int selectedPattInvId = 0;

  String selectedStarInv = '';
  int selectedStarInvId = 0;

  ///RadioButton
  String selectedOption = '';
}
