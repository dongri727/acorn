class Confirm {
  Confirm();

  //when
  String isSelectedCalendar = "Common-Era";
  String annee = '';
  int year = 0;
  int month = 0;
  int day = 0;
  int point = 0;
  double logarithm = 0.0;
  double coefficient = 0.0;

  //principal
  String name = "";

  //統合された位置(単)
  String selectedLocation = 'location';
  String selectedPrecise = '(whole)';
  double latitude = 0.0;
  double longitude = 0.0;

  //選択されたplace（単）
  String? selectedPlace;
  int selectedPlaceId = 0;

  //選択されたsea（単）
  String? selectedSea;
  int? selectedSeaId;

  //選択されたCatt（単）
  String selectedCatt = '';
  int selectedCattId = 0;

  //選択されたPatt（単）
  String selectedPatt = '';
  int selectedPattId = 0;

  double x = 0.0;
  double y = 0.0;
  double z = 0.0;
  String geo = '';

  //pays involved
  List<String> selectedCountries = [];
  List<int> selectedCountriesId = [];

  //place involved
  List<String> selectedPlaces = [];
  List<int> selectedPlacesId = [];

  //pays involved at that time
  List<String> selectedATT = [];
  List<int> selectedATTId = [];

  //place involved at that time
  List<String> selectedPATT = [];
  List<int> selectedPATTId = [];

  //stars observed
  List<String> selectedStar = [];
  List<int> selectedStarId = [];

  //Org involved
  List<String> selectedOrg = [];
  List<int> selectedOrgId = [];

  //who
  List<String> selectedWho = [];
  List<int> selectedWhoId = [];

  //ship
  List<String> selectedShips = [];
  List<int> selectedShipsId = [];

  //categories
  List<String> selectedCategory = [];
  List<int> selectedCategoryId = [];

  //terms
  List<String> selectedTerm = [];
  List<int> selectedTermId = [];
}
