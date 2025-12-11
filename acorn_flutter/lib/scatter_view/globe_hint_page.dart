import 'package:flutter/material.dart';
import '../utils/describe_card.dart';

class GlobeHintPage extends StatelessWidget {
  const GlobeHintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hints'),
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/both.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
                    child: CustomTextContainer(
                        textContent: "すべての事象は、位置情報と時系列に基づいてプロットされています。地球儀上では、時間軸が放射状に展開されているため、最新の事象ほど背景の地形線から離れて表示されることがあります。各事象を選択すると詳細情報が表示されるので、他の表示形式と合わせてご確認ください。",
                  ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: CustomTextContainer(
                        textContent: "All events, which consist of various historical occurrences, are plotted based on their geographical locations and chronological order. On the globe, since the timeline radiates outward, more recent events may appear offset from the underlying topographic lines. When you select an event, detailed information is displayed—please review it alongside other display formats."),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: CustomTextContainer(
                        textContent: "Tous les événements, qui correspondent à diverses manifestations historiques, sont représentés en fonction de leur position géographique et de leur ordre chronologique. Sur le globe, la ligne de temps s'étend de manière radiale, de sorte que les événements les plus récents peuvent apparaître décalés par rapport aux lignes topographiques de fond. En sélectionnant un événement, des informations détaillées s'affichent : veuillez les consulter parallèlement aux autres formats d'affichage."),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}