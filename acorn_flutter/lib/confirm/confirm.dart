class Confirm {
  Confirm();

  //when
  String isSelectedCalendar = "HistoricalYears";
  int calendarNo = 0;
  double annee = 0.0;
  int year = 0;
  int month = 0;
  int day = 0;
  int point = 0;

  //principal
  String name = "";

  //統合された位置(単)
  String selectedLocation = 'location';
  String selectedPrecise = 'precise';

  //String? selectedStar;

  //選択されたplace（単）
  String? selectedPlace;
  int selectedPlaceId = 0;

  //選択されたsea（単）
  String? selectedSea;
  int? selectedSeaId;

  //選択されたCatt（単）
  String? selectedCatt = '';
  int? selectedCattId = 0;

  //選択されたPatt（単）
  String? selectedPatt = '';
  int? selectedPattId = 0;


  double? latitude;
  double? longitude;

  double? x;
  double? y;
  double? z;

  //pays involved
  List<String> selectedCountries = [];
  List<int> selectedCountriesId = [];

  //pays involved at that time
  List<String> selectedATT = [];
  List<int> selectedATTId = [];

  //Org involved
  List<String> selectedOrg = [];
  List<int> selectedOrgId = [];

  //who
  List<String> selectedWho = [];
  List<int> selectedWhoId = [];

  //categories
  List<String> selectedCategory = [];
  List<int> selectedCategoryId = [];

  //terms
  List<String> selectedTerm = [];
  List<int> selectedTermId = [];
}
