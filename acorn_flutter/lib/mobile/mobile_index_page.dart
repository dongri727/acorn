import 'package:acorn_flutter/exporter.dart';
import 'package:acorn_flutter/export_utils.dart';

class MobileIndexPage extends StatefulWidget {
  const MobileIndexPage({super.key});

  @override
  MobileIndexPageState createState() => MobileIndexPageState();
}

class MobileIndexPageState extends State<MobileIndexPage> {

  bool _isVisible = false; // テキストの表示状態を管理するフラグ

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible; // 表示状態を切り替える
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Visibility(
                  visible: !_isVisible,
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: _toggleVisibility,
                        icon: const Icon(
                            Icons.question_mark_sharp,
                            color: Colors.green),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 20, 60, 60),
                        child: ShadowedContainer(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset('assets/images/mobile.png')),
                            )),
                      ),
                    ],
                  )
              ),
              Visibility(
                visible: _isVisible,
                child: Column(
                    children: [
                      CustomTextContainer(textContent:
                      AppLocalizations.of(context)!.indexA,
                      ),
                      CustomTextContainer(textContent:
                      AppLocalizations.of(context)!.indexB,
                      ),
                      CustomTextContainer(textContent:
                      AppLocalizations.of(context)!.indexC,
                      ),
                      IconButton(
                          onPressed: _toggleVisibility,
                          icon: const Icon(
                            Icons.thumb_up_alt_sharp,
                            color: Colors.green,
                          )),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}