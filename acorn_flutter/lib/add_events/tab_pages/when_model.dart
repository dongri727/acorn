import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/lists/geologic_time_scale.dart';
import 'package:acorn_flutter/lists/principal_options_list.dart';
import 'package:acorn_flutter/lists/when_options_list.dart';
import '../../confirm/confirm.dart';
import '../../utils/build_chips.dart';

class WhenModel extends ChangeNotifier {

/*  List<String> era = epoch;
  List<String> periodsFr = epochFr;
  List<String> periodsJa = epochJa;*/

  ///GeoTime
  List<Map<String, dynamic>> geoTime = geologicTimeScale;


  //Chipに表示されるListとそこで選ばれたもの
  List<Map<String, dynamic>> currentDisplayList = [];
  String? selectedOption = '';

  List<String> optionWhen = whenOptions;
  List<String> principalOptionFr = principalOptionsFr;
  List<String> principalOptionJa = principalOptionsJp;

  final List<String> filtersGeoTime = <String>[];
  final List<int> filtersGeoTimeId = <int>[];
  var newGeoTime = '';

  String selectedGeoTime = '';
  int selectedDetailId = 0;



  void setSelectedOption(String? value) {
    if (value != null) {
      selectedOption = value;
    }
    notifyListeners();
  }

  Future<void> listRadioButtonBasis(selectedOption) async {
    switch (selectedOption) {
      case 'Geologic Time Scale':
        currentDisplayList = geoTime;
        break;
    }
    notifyListeners();
  }

  Widget buildItemWidget(Map<String,dynamic> item) {
    return buildFilterFormatImediat(
        filteredKeys: filtersGeoTime,
        filteredValues:  filtersGeoTimeId,
        filterKey: item['name'] as String,
        filterValue: item['detailId'] as int,
        onSelected: (key, value) {
            selectedGeoTime = key;
            selectedDetailId = value;
            updateSelectedGeoTime(key);
        },
    );
  }

  void temporarilySaveData(Function(BuildContext) showDialogCallback, BuildContext context) {
    // ダイアログ表示
    showDialogCallback(context);
    final confirm = Provider.of<Confirm>(context, listen: false);


    // データの一時保存処理

    ///選択されたgeoTime
    confirm.selectedGeoTime = filtersGeoTime;
    confirm.selectedGeoTimeId = filtersGeoTimeId;
  }


  ///仮表示

  void updateSelectedGeoTime(String newSelectedGeoTime) {
    selectedGeoTime = newSelectedGeoTime;
    notifyListeners();
  }

/*  void updateDisplayList(List<String> newList) {
    currentDisplayList = newList.cast<Map<String, dynamic>>();
    notifyListeners();
  }*/
}