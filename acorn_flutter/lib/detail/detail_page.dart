import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/search/multiple_search_page.dart';
import 'package:acorn_flutter/search/result_page.dart';
import 'package:acorn_flutter/utils/navigation_button.dart';
import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/tff_format.dart';
import '../../../utils/card_format.dart';
import 'detail_model.dart';

class DetailPage extends StatelessWidget {
  final Principal principalData;

  const DetailPage({super.key, required this.principalData}) ;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DetailModel>(
        create: (_) => DetailModel()..fetchDetail(principalData.id!),
        child: Consumer<DetailModel>(
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
                    onPressed: () {},
                    label: const Text('add detail')),
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
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: model.detailCatt.join(', '),
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: model.detailPatt.join(', '),
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
/*                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: 'latitude',
                                    confirmColor: Color(0xFF8fbc8f)),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: 'longitude',
                                    confirmColor: Color(0xFF8fbc8f)),
                              ),*/
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                  child: Text('Countries Involved',
                                    style: AcornTheme.textTheme.headlineSmall,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: model.detailCountriesInv.length,
                                        itemBuilder: (context, index) {
                                          return TermCard(
                                            model.detailCountriesInv[index],
                                          );
                                        })
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                  child: Text('Places Involved',
                                    style: AcornTheme.textTheme.headlineSmall,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: model.detailPlacesInv.length,
                                        itemBuilder: (context, index) {
                                          return TermCard(
                                            model.detailPlacesInv[index],
                                          );
                                        })
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                  child: Text('Countries Involved at that time',
                                    style: AcornTheme.textTheme.headlineSmall,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 8, 30, 8),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: model.detailCattsInv.length,
                                        itemBuilder: (context, index) {
                                          return TermCard(
                                            model.detailCattsInv[index],
                                          );
                                        }
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                  child: Text('Places Involved at that time',
                                    style: AcornTheme.textTheme.headlineSmall,
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 8, 30, 8),
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: model.detailPattsInv.length,
                                        itemBuilder: (context, index) {
                                          return TermCard(
                                            model.detailPattsInv[index],
                                          );
                                        }
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Stars Observed',
                                    style: AcornTheme.textTheme.headlineSmall
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: model.detailStars.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          model.detailStars[index],
                                        );
                                      }
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Organizations Involved',
                                  style: AcornTheme.textTheme.headlineSmall,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: model.detailOrgs.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          model.detailOrgs[index],
                                        );
                                      }
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('People Involved',
                                  style: AcornTheme.textTheme.headlineSmall,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: model.detailPeople.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          model.detailPeople[index],
                                        );
                                      }
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Category',
                                  style: AcornTheme.textTheme.headlineSmall,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: model.detailCategories.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                            model.detailCategories[index] as String?
                                        );
                                      }
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Search Terms',
                                  style: AcornTheme.textTheme.headlineSmall,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: model.detailTerms.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          model.detailTerms[index] as String?,
                                        );
                                      }
                                  )
                              ),
                            ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
    );
  }
}