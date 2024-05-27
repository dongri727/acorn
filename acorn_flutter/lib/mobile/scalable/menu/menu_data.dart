import 'package:flutter/material.dart';
import '../timeline/mobile_entry.dart';


//このクラスにはデータしかない。表示機能はSectionにある。

class MenuSectionData {
  late String label;
  final Color textColor = Colors.black;
  final Color backgroundColor = Colors.white;
  List<MenuItemDataM> mitems = [];
}

/// Data container for all the sub-elements of the [MenuSection].
/// 表示域を選択するTileに表示するもの
class MenuItemDataM {
  String label = "";
  double start = 0.0;
  double end = 0.0;
  bool pad = false;
  double padTop = 0.0;
  double padBottom = 0.0;

  MenuItemDataM();

  /// When initializing this object from a [TimelineEntry], fill in the
  /// fields according to the [entry] provided. The entry in fact specifies
  /// a [label], a [start] and [end] times.
  /// Padding is built depending on the type of the [entry] provided.
  MenuItemDataM.fromEntry(TimelineEntryM entryM) {
    label = entryM.name;

    /// Pad the edges of the screen.
    pad = true;

    if (entryM.type == TimelineEntryMType.era) {
      start = entryM.start;
      end = entryM.end;
    }
  }
}

class MenuData {
  List<MenuSectionData> sections = [];

  void initializeWithDefaultData() {
    List<MenuSectionData> menu = [];
    MenuSectionData menuSection = MenuSectionData();

    menuSection.label = " ";

    // Items
    List<MenuItemDataM> mitems = [
      MenuItemDataM()..label = "Whole Period"..start = -5100000000000..end = 800000,
      MenuItemDataM()..label = "BCE"..start = -366000..end = 0,
      MenuItemDataM()..label = "CE"..start = 0..end = 700000,
      MenuItemDataM()..label = "20th Century"..start = 690000..end = 750000,
      MenuItemDataM()..label = "21th Century"..start = 730000..end = 800000,
    ];

    menuSection.mitems = mitems;
    menu.add(menuSection);

    sections = menu;
  }
}
