class Confirm {
  Confirm();

  //when
  String? isSelectedCalendar = "HistoricalYears";
  int year = 0;
  String? date = "";

  String? isSelectedMonth = "No-Month";
  String? isSelectedDate = "No-Date";

  String? dateLocal = "";

  //principal
  String name = "";
  String country = "";

  //where
  //追加されたplace
  String? place = "";
  int? placeId = 0;

  //選択されたplace
  List<String> selectedPlace = [];
  List<int> selectedPlaceId = [];

  //追加されたsea
  String? sea = "";
  int? seaId = 0;

  //選択されたsea
  List<String> selectedSea = [];
  List<int> selectedSeaId = [];

  //追加されたCatt
  String? countryatt = "";
  int? countryattId = 0;

  //選択されたCatt
  List<String> selectedCatt = [];
  List<int> selectedCattId = [];

  //追加されたPatt
  String? placeatt = "";
  int? placeattId = 0;

  //選択されたPatt
  List<String> selectedPatt = [];
  List<int> selectedPattId = [];


  double? latitude = 0.0;
  double? longitude = 0.0;

  double? x = 0.0;
  double? y = 0.0;
  double? z = 0.0;

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

  //terms
  List<String> selectedTerm = [];
  List<int> selectedTermId = [];

  //categories
  List<String> selectedCategory = [];
  List<int> selectedCategoryId = [];
}
