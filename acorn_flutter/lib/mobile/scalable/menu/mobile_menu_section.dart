import 'package:flutter/material.dart';
import '../../../utils/shadowed_container.dart';
import 'menu_data.dart';

typedef NavigateToM = Function(MenuItemDataM mitem, BuildContext context);

/// This widget displays the single menu section of the [MainMenuWidget].
/// There are main sections, as loaded from the menu.json file in the　assets folder.

class MenuSectionM extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color accentColor;
  final List<MenuItemDataM> menuOptions;
  final NavigateToM navigateToM;

  const MenuSectionM(this.title, this.backgroundColor, this.accentColor,
      this.menuOptions, this.navigateToM, {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(50,10,50,10),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: menuOptions.map<Widget>((mitem) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
              child: ShadowedContainer(
                child: ListTile(
                  tileColor: backgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  title: Text(
                    mitem.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () => navigateToM(mitem, context),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ],
    );
  }
}