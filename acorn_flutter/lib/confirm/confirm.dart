class Confirm {
  Confirm();

  //when
  String isSelectedCalendar = "HistoricalYears";
  int calendarNo = 0;
  double year = 0.0;
  int month = 0;
  int day = 0;
  int point = 0;

  //String? dateLocal = "No-Local-Date";

  //principal
  String name = "";
  String country = "";

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
