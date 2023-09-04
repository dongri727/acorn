import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../confirm/confirm.dart';
import '../../utils/tff_format.dart';


class WhenPage extends StatefulWidget {
  const WhenPage({Key? key}) : super(key: key);

  @override
  State<WhenPage> createState() => _WhenPageState();
}

class _WhenPageState extends State<WhenPage> {

  var newDate = "";
  var newDateLocal = "";

  var isDisabledM = true;
  var isDisabledD = true;


  String? isSelectedMois = 'No-Month';
  String? isSelectedJour = 'No-Date';

  List<String> mois = <String>[
    'No-Month',
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
    '07',
    '08',
    '09',
    '10',
    '11',
    '12',
  ];

  List<String> jours = <String>[
    'No-Date',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);

    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/both.png'),
                  fit: BoxFit.cover,
                )),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,

                    // principal year
                    child: Column(
                      children: [
                        //month
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                          child: OutlinedButton(
                            onPressed: () {
                              setState(toggleMonthButton);
                            },
                            child: const Text(
                                'Select "Month" ?',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        //dropdownButtonの無効化で対応
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 250,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color(0x99e6e6fa),
                            ),
                            child: DropdownButton<String>(
                              value: isSelectedMois,
                              alignment: Alignment.center,
                              dropdownColor: const Color(0xCCe6e6fa),
                              borderRadius: BorderRadius.circular(15.0),
                              onChanged: isDisabledM
                                  ? null
                                  : (String? value) {
                                setState(() {
                                  isSelectedMois = value;
                                });
                              },
                              items: mois.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                          style:
                                          AcornTheme.textTheme.bodyMedium,
                                          value),
                                    );
                                  }).toList(),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            style: AcornTheme.textTheme.bodyLarge,
                            'Format',
                          ),
                        ),
                        const HintText(
                            hintText:
                            'If it lasts for a while,'),
                        const HintText(hintText: 'please select "Start Month"'),

                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(60, 20, 60, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: OutlinedButton(
                                onPressed: () {
                                  setState(toggleDateButton);
                                },
                                child: const Text('Select "Date" ?',
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                              ),
                            ),
                            //date
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: 250,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: const Color(0x99e6e6fa),
                                ),
                                child: DropdownButton<String>(
                                  value: isSelectedJour,
                                  alignment: Alignment.center,
                                  dropdownColor: const Color(0xCCe6e6fa),
                                  borderRadius: BorderRadius.circular(15.0),
                                  onChanged: isDisabledD
                                      ? null
                                      : (String? value) {
                                    setState(() {
                                      isSelectedJour = value;
                                    });
                                  },
                                  items:
                                  jours.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                          style:
                                          AcornTheme.textTheme.bodyMedium,
                                          value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                style: AcornTheme.textTheme.bodyLarge,
                                'Format',
                              ),
                            ),
                            const HintText(
                                hintText:
                                'If it lasts for a while,'),
                            const HintText(hintText: 'please enter "Start Date"'),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // date local
                          const HintText(hintText: 'Other Calendars'),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 20, 100, 20),
                            child: TffFormat(
                              hintText: "ex: Hijura year-month-date (option)",
                              onChanged: (text) {
                                newDateLocal = text;
                              },
                              tffColor1: Colors.black54,
                              tffColor2: const Color(0x99e6e6fa),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog<void>(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text('Data has been temporarily stored.'),
                  content: const Text(
                      'They are not uploaded yet. please continue to fill in the other fields.'),
                  actions: <Widget>[
                    GestureDetector(
                      child: const Text('OK'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });


          confirm.date = newDate;
          confirm.dateLocal = newDateLocal;


          confirm.isSelectedMonth = isSelectedMois;
          confirm.isSelectedDate = isSelectedJour;
          print("save when");
        },
        label: const Text('Keep Temporarily'),
      ),
    );
  }
/*  void toggleShowButton(){
    isVisible = !isVisible;
  }*/

  void toggleMonthButton(){
    isDisabledM = !isDisabledM;
  }
  void toggleDateButton(){
    isDisabledD = !isDisabledD;
  }
}
