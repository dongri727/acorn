class Confirm {
  Confirm();

  //when
  String? isSelectedCalendar = "HistoricalYears";
  int year = 0;
  String? date = "";

  String? isSelectedMonth = "No-Month";
  String? isSelectedDate = "No-Date";

  String? dateLocal = "No-Local-Date";

  //principal
  String name = "";
  String country = "";

  //where
  //追加されたplace
  String? place = "No-Place";
  int? placeId = 0;

  //選択されたplace
  String? selectedPlace;
  int? selectedPlaceId;
/*  List<String> selectedPlace = [];
  List<int> selectedPlaceId = [];*/

  //追加されたsea
  String? sea = "sea";
  int? seaId = 0;

  //選択されたsea
  List<String> selectedSea = [];
  List<int> selectedSeaId = [];

  //追加されたCatt
  String? countryatt = "country name at that time";
  int? countryattId = 0;

  //選択されたCatt
  List<String> selectedCatt = [];
  List<int> selectedCattId = [];

  //追加されたPatt
  String? placeatt = "place name at that time";
  int? placeattId = 0;

  //選択されたPatt
  List<String> selectedPatt = [];
  List<int> selectedPattId = [];


  double? latitude;
  double? longitude;

  double? x;
  double? y;
  double? z;

  //pays involved
  List<String> selectedPays = [];
  List<int> selectedPaysId = [];

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
