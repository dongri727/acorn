import 'package:acorn_flutter/export/exporter.dart';
import 'utils/describe_card.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Information'),
        ),
        body: Container(
          constraints: const BoxConstraints.expand( ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
          /*                CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoA),*/
          /*                CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoB),*/
                  CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoC),
                  CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoD),
                  CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoE),
                  CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoF),
                  CustomTextContainer(textContent:
                  AppLocalizations.of(context)!.infoG),
                  CustomTextContainer(textContent: AppLocalizations.of(context)!.infoH),
                  const LaunchUrlContainer(),
                ],
              ),
            ),
          ),
        )
    );
  }
}