import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/tff_format.dart';
import '../../../utils/card_format.dart';
import 'confirm.dart';
import 'confirm_model.dart';


class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key? key, required Confirm confirm})
      :_confirm = confirm,
        super(key: key);

  final Confirm _confirm;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConfirmModel>(
        create: (_) => ConfirmModel(),
        child: Consumer<ConfirmModel>(
            builder: (_, model, __) {
              return Scaffold(
                floatingActionButton: FloatingActionButton.extended(
                    onPressed: () async {
                      int result = await model.save(_confirm) ;

                      switch (result) {
                        case 0:
                        showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: const Text('Succeeded'),
                                content: const Text('Thank you for adding Information'),
                                actions: <Widget>[
                                  GestureDetector(
                                    child: const Text('OK'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                        );
                        break;
                        case 1:
                        showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: const Text('Error'),
                                content: const Text('Oups! Something wrong...'),
                                actions: <Widget>[
                                  GestureDetector(
                                    child: const Text('OK'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                        );
                        break;
                        case 2:
                          showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: const Text('Error'),
                                content: const Text('Required fields are missing'),
                                actions: <Widget>[
                                  GestureDetector(
                                    child: const Text('OK'),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                          break;
                      }
                    },
                    label: const Text('register them ?')),
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
                                    confirmText: _confirm.isSelectedCalendar,
                                    confirmColor: const Color(0xFFF0E68C)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: '${_confirm.year}',
                                    confirmColor: const Color(0xFFF0E68C)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: _confirm.month.toString(),
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: _confirm.day.toString(),
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
                                    confirmText: _confirm.selectedLocation,
                                    confirmColor: const Color(0xFFF0E68C)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: _confirm.selectedPlace,
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: _confirm.selectedCatt,
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: _confirm.selectedPatt,
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: '${_confirm.latitude}',
                                    confirmColor: const Color(0xFF8fbc8f)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConfirmText(
                                    confirmText: '${_confirm.longitude}',
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
                                child: ConfirmText(
                                    confirmText: _confirm.name,
                                    confirmColor: const Color(0xFFF0E68C)),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Countries Involved',
                                    style: AcornTheme.textTheme.headlineSmall),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: _confirm.selectedCountries.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          _confirm.selectedCountries[index],
                                        );
                                      })
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Countries Involved at that time',
                                    style: AcornTheme.textTheme.headlineSmall),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: _confirm.selectedATT.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          _confirm.selectedATT[index],
                                        );
                                      }
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                                child: Text('Organizations Involved',
                                    style: AcornTheme.textTheme.headlineSmall),
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      30, 8, 30, 8),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: _confirm.selectedOrg.length,
                                      itemBuilder: (context, index) {
                                        return TermCard(
                                          _confirm.selectedOrg[index],
                                        );
                                      }
                                  )
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                              child: Text('People Involved',
                                  style: AcornTheme.textTheme.headlineSmall),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    30, 8, 30, 8),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: _confirm.selectedWho.length,
                                    itemBuilder: (context, index) {
                                      return TermCard(
                                        _confirm.selectedWho[index],
                                      );
                                    }
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                              child: Text('Category',
                                  style: AcornTheme.textTheme.headlineSmall),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    30, 8, 30, 8),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: _confirm.selectedCategory.length,
                                    //gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    //  crossAxisCount: 2),
                                    itemBuilder: (context, index) {
                                      return TermCard(
                                          _confirm.selectedCategory[index]
                                      );
                                    }
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 50, 30, 8),
                              child: Text('Search Terms',
                                  style: AcornTheme.textTheme.headlineSmall),
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    30, 8, 30, 8),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: _confirm.selectedTerm.length,
                                    itemBuilder: (context, index) {
                                      return TermCard(
                                        _confirm.selectedTerm[index],
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
            })
    );
  }
}