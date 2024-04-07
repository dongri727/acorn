import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/tff_format.dart';
import '../../../utils/card_format.dart';
import 'add_detail_page.dart';
import 'detail_model.dart';

class DetailPage extends StatelessWidget {
  final Principal principalData;

  const DetailPage({super.key, required this.principalData}) ;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DetailModel>(
        create: (_) => DetailModel()..fetchDetailBundled(principalData.id!),
        child: Builder(
          builder: (context) {
            return Consumer<DetailModel>(
                builder: (_, model, __) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.grey[200],
                      leading: const PopBackButton(
                        buttonText: 'back to the list',
                      ),
                      leadingWidth: 150,
                      title: const Text('DETAIL'),
                    ),
                    floatingActionButton: FloatingActionButton.extended(
                        onPressed: () async {
                          await Navigator.push<String>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddDetailPage(principalId: principalData.id!),
                            ),
                          );
                          Provider.of<DetailModel>(context, listen: false).fetchDetailBundled(principalData.id!);
                        },
                        label: const Text('add keywords')),
                    body: SafeArea(
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/both.png'),
                              fit: BoxFit.cover,
                            )
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                                    child: Text(
                                      'WHEN',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ConfirmText(
                                        confirmText: principalData.annee,
                                        confirmColor: const Color(0xFFF0E68C)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ConfirmText(
                                        confirmText: '${principalData.month}',
                                        confirmColor: const Color(0xFF8fbc8f)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ConfirmText(
                                        confirmText: '${principalData.day}',
                                        confirmColor: const Color(0xFF8fbc8f)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: Text(
                                      'WHERE',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ConfirmText(
                                        confirmText: principalData.location,
                                        confirmColor: const Color(0xFFF0E68C)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ConfirmText(
                                        confirmText: principalData.precise,
                                        confirmColor: const Color(0xFF8fbc8f)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                                    child: Text(
                                      'WHAT',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ConfirmTextBig(
                                        confirmText: principalData.affair,
                                        confirmColor: const Color(0xFFF0E68C)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 50, 20, 0),
                                  child: Text('KEY WORDS',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 8, 30, 8),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        //physics: const NeverScrollableScrollPhysics(),
                                        itemCount: model.listDetail.length,
                                        itemBuilder: (context, index) {
                                          return TermCard(
                                            model.listDetail[index].mot as String?,
                                          );
                                        }
                                    )
                                ),
                              ]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
            );
          }
        )
    );
  }
}