class Confirm {
  Confirm();

  //when

  String? isSelectedCalendar = "HistoricalYears";
  int year = 0;
  String? date = "";

  String? isSelectedMonth = "No-Month";
  String? isSelectedDate = "No-Date";

  String? dateLocal = "";

  //what
  String name = "";

  //where
  String? att = "";

  String country = "";
  String? place = "";
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
