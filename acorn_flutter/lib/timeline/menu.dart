import "package:acorn_flutter/search/multiple_search_page.dart";
import "package:flutter/material.dart";
import 'bloc_provider.dart';
import "../utils/tff_format.dart";
import "menu_data.dart";
import "menu_section.dart";
import "widget.dart";

class MainMenuWidget extends StatefulWidget {

  final List<String>? listPeriod;
  final List<String>? listLocation;
  final List<String>? listPrecise;
  final List<int>? listCattIds;
  final List<int>? listPattIds;
  final List<int>? listPaysInvolvedIds;
  final List<int>? listPaysInvolvedATTIds;
  final List<int>? listStarsInvolvedIds;
  final List<int>? listOrgIds;
  final List<int>? listPersonIds;
  final List<int>? listCategoryIds;
  final List<int>? listTermIds;

  const MainMenuWidget({
    super.key,
    this.listPeriod,
    this.listLocation,
    this.listPrecise,
    this.listCattIds,
    this.listPattIds,
    this.listPaysInvolvedIds,
    this.listPaysInvolvedATTIds,
    this.listStarsInvolvedIds,
    this.listOrgIds,
    this.listPersonIds,
    this.listCategoryIds,
    this.listTermIds,
  });

  @override
  MainMenuWidgetState createState() => MainMenuWidgetState();
}

class MainMenuWidgetState extends State<MainMenuWidget> {

  List<String>? _currentListS;
  List<int>? _currentListI;
  String _currentKey = '';

  /// [MenuData] selects era witch will be displayed at the Timeline
  /// This data is loaded from the asset bundle during [initState()]
  final MenuData _menu = MenuData();


  /// Helper function which sets the [MenuItemData] for the [TimelineWidget].
  /// This will trigger a transition from the current menu to the Timeline,
  /// thus the push on the [Navigator], this widget will know where to scroll to.
  navigateToTimeline(MenuItemData item, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) =>
          TimelineWidget(item, BlocProvider.getTimeline(context)),
    ));
  }

  @override
  initState() {
    super.initState();

    // リストが存在するかチェックし、存在するリストを _currentList に設定
    if (widget.listPeriod != null) {
      _currentListS = widget.listPeriod;
      _currentKey = 'period';
    } else if (widget.listLocation != null) {
      _currentListS = widget.listLocation;
      _currentKey = 'location';
    } else if (widget.listPrecise != null) {
      _currentListS = widget.listPrecise;
      _currentKey = 'precise';
    } else if (widget.listCattIds != null) {
      _currentListI = widget.listCattIds;
      _currentKey = 'cattIds';
    } else if (widget.listPattIds != null) {
      _currentListI = widget.listPattIds;
      _currentKey = 'pattIds';
    } else if (widget.listPaysInvolvedIds != null) {
      _currentListI = widget.listPaysInvolvedIds;
      _currentKey = 'paysInvIds';
    } else if (widget.listPaysInvolvedATTIds != null) {
      _currentListI = widget.listPaysInvolvedATTIds;
      _currentKey = 'paysInvAttIds';
    } else if (widget.listStarsInvolvedIds != null) {
      _currentListI = widget.listStarsInvolvedIds;
      _currentKey = 'starsInvIds';
    } else if (widget.listOrgIds != null) {
      _currentListI = widget.listOrgIds;
      _currentKey = 'orgIds';
    } else if (widget.listPersonIds != null) {
      _currentListI = widget.listPersonIds;
      _currentKey = 'personIds';
    } else if (widget.listCategoryIds != null) {
      _currentListI = widget.listCategoryIds;
      _currentKey = 'categoryIds';
    } else if (widget.listTermIds != null) {
      _currentListI = widget.listTermIds;
      _currentKey = 'termIds';
    }

    /// The [_menu] loads a JSON file that's stored in the assets folder.
    /// This asset provides all the necessary information.
    _menu.loadFromBundle("assets/menu.json").then((bool success) {
      if (success) setState(() {}); // Load the menu.
    });
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;
    final timeline = BlocProvider.getTimeline(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push<String>(
                context,
                MaterialPageRoute(builder: (context) => MultiSearchPage()),
            );
          },
        ),

        title: const Text("SCALABLE"),

      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/both.png'),
              fit: BoxFit.cover,
            )
        ),
        child: Padding(
          padding: EdgeInsets.only(top: devicePadding.top),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 5, 20),
                        child: ConfirmText(
                          confirmText: _currentListS?.join(', ') ?? '',
                          confirmColor: Colors.yellow,
                        )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 20, 20),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_currentKey == 'period') {
                              timeline.fetchPrincipal(period: _currentListS);
                            } else if (_currentKey == 'location') {
                              timeline.fetchPrincipal(location: _currentListS);
                            } else if (_currentKey == 'precise') {
                              timeline.fetchPrincipal(precise: _currentListS);
                            } else if (_currentKey == 'cattIds') {
                              timeline.fetchPrincipal(cattIds: _currentListI);
                            } else if (_currentKey == 'pattIds') {
                              timeline.fetchPrincipal(pattIds: _currentListI);
                            } else if (_currentKey == 'paysInvIds') {
                              timeline.fetchPrincipal(paysInvIds: _currentListI);
                            } else if (_currentKey == 'paysInvAttIds') {
                              timeline.fetchPrincipal(paysInvAttIds: _currentListI);
                            } else if (_currentKey == 'starsInvIds') {
                              timeline.fetchPrincipal(starsInvolvedIds: _currentListI);
                            } else if (_currentKey == 'orgIds') {
                              timeline.fetchPrincipal(orgIds: _currentListI);
                            } else if (_currentKey == 'personIds') {
                              timeline.fetchPrincipal(personIds: _currentListI);
                            } else if (_currentKey == 'categoryIds') {
                              timeline.fetchPrincipal(categoryIds: _currentListI);
                            } else if (_currentKey == 'termIds') {
                              timeline.fetchPrincipal(termIds: _currentListI);
                            }
                            },
                          child: const Text(
                              "1. SUBMIT",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ..._menu.sections
                    .map<Widget>(
                        (MenuSectionData section) => Builder(builder: (context) {
                              return Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: MenuSection(
                                    section.label,
                                    section.backgroundColor,
                                    section.textColor,
                                    section.items,
                                    (item, context) =>
                                        navigateToTimeline(item, context),
                                  ));
                            }))
                    .toList(growable: false)
              ]),
        ),
      ),
    );
  }
}
