// widget_helpers.dart
import 'package:flutter/material.dart';

import 'chips_format.dart';

Widget buildFilterFormatImediat({
  required List<String> filteredKeys,
  required List<int> filteredValues,
  required String filterKey,
  required int filterValue,
  required Function(String, int) onSelected,
}) {
  return FilterFormatImediat(
    filteredImKeys: filteredKeys,
    filteredImValues: filteredValues,
    filterImKey: filterKey,
    filterImValue: filterValue,
    onSelected: onSelected,
  );
}

Widget buildChoiceSIFormat({
  required List<String> choiceSIList,
  required String choiceSIKey,
  required onChoiceSISelected,
}) {
  return ChoiceSIFormat(
  choiceSIList: choiceSIList,
  choiceSIKey: choiceSIKey,
  onChoiceSISelected: onChoiceSISelected
  );
}
