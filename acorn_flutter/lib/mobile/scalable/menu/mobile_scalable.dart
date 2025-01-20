import "package:acorn_client/acorn_client.dart";
import "package:flutter/material.dart";
import "../../../lists/countries_list.dart";
import "../../../serverpod_client.dart";
import "../../../timeline/widget.dart";
import "../timeline/mobile_bloc_provider.dart";
import "../timeline/mobile_timeline.dart";
import "../timeline/mobile_widget.dart";
import 'menu_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import "mobile_menu_section.dart";

class ScalableM extends StatefulWidget {
  final List<Principal>? principal;
  const ScalableM({ super.key , this.principal});

  @override
  ScalableMState createState() => ScalableMState();
}

class ScalableMState extends State<ScalableM> {


  /// [MenuData] selects era witch will be displayed at the Timeline
  /// This data is loaded from the asset bundle during [initState()]
  final MenuData _menu = MenuData();

  List<Principal> listPrincipal = [];
  List<int> principalIds = [];

  TextEditingController searchController = TextEditingController();

  Future<void> fetchPrincipalByLocation(String keywords) async {
    try {
      // 文字列をリストに変換してkeywords引数を渡す
      List<String> location = keywords.split(',').map((e) => e.trim()).toList();
      listPrincipal = await client.principal.getPrincipal(keywords: location);
      principalIds = listPrincipal.map((item) => item.id as int).toList();
      setState(() {}); // データの更新をUIに反映させる
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }


  /// Helper function which sets the [MenuItemData] for the [TimelineWidget].
  /// This will trigger a transition from the current menu to the Timeline,
  /// thus the push on the [Navigator], this widget will know where to scroll to.
  navigateToTimeline(MenuItemDataM mitem, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) =>
          TimelineWidgetM(mitem, BlocProviderM.getTimelineM(context)),
    ));
  }

  List<String> options = [];
  void getOptions() {
    for (var country in countries) {
      options.add(country['name']);
    }
  }

  @override
  void initState() {
    super.initState();
    getOptions();

    /// Initialize the menu with hardcoded data.
    _menu.initializeWithDefaultData();

    /// Notify the framework that the internal state of this object has changed.
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    //EdgeInsets devicePadding = MediaQuery.of(context).padding;
    final timelineM = BlocProviderM.getTimelineM(context);

    List<Widget> tail = [];

    tail
        .addAll(_menu.sections
        .map<Widget>((MenuSectionData section) => Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: MenuSectionM(
          section.label,
          section.backgroundColor,
          section.textColor,
          section.mitems,
          navigateToTimeline,
        )))
        .toList(growable: false)
    );

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("SCALABLE"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 20.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        icon: const Icon(
                          Icons.question_mark,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Search Hint'),
                                  content: Text(AppLocalizations.of(context)!.scalableA),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('close'))
                                  ],
                                );
                              });
                        }
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Autocomplete<String>(
                            optionsBuilder: (TextEditingValue textEditingValue) {
                              return options.where((String option) {
                                if (textEditingValue.text.isNotEmpty) {
                                  return option.contains(textEditingValue.text[0]
                                      .toUpperCase() +
                                      textEditingValue.text.substring(1).toLowerCase());
                                } else {
                                  return option.contains(textEditingValue.text);
                                }
                              });
                            },
                            onSelected: (String selection) {
                              searchController.text = selection;
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await fetchPrincipalByLocation(searchController.text);
                            timelineM.gatherEntries(listPrincipal);
                          },
                          icon: const Icon(Icons.search),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text(AppLocalizations.of(context)!.scalableB),
                    ),
                  ] + tail),
            ),
          ),
        )
    );
  }
}