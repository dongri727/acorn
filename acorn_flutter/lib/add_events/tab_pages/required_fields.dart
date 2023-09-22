import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/tff_format.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class WhatPage extends StatefulWidget {
  const WhatPage({Key? key}) : super(key: key);

  @override
  State<WhatPage> createState() => _WhatPageState();
}

class _WhatPageState extends State<WhatPage> {
  var newYearD = 0.0;
  var newYearI = 0;
  var newMonth = 0;
  var newDay = 0;
  var newPoint = 0;
  var newName= '';
  String isSelectedCalendar = 'HistoricalYears';
  var calendarNo = 0;

  List<String> periods = <String>[
    'BillionYears',
    'MillionYears',
    'ThousandYears',
    'YearsByDatingMethods',
    'HistoricalYears',
  ];

  String isSelectedPay = 'Universe';

  List<String> countries = <String>[
    'Universe',
    'MilkyWay',
    'SolarSystem',
    'TheEarth',
    'Sea',
    'Antarctica',
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo, DR',
    'Congo, Republic of the',
    'Cook Islands',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Ivory Coast',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'Niue',
    'North Korea',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Korea',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'St. Kitts and Nevis',
    'St. Lucia',
    'St. Vincent and the Grenadines',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'UAE',
    'Uganda',
    'Ukraine',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Viet Nam',
    'Yemen',
    'Zambia',
    'Zimbabwe',
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
                )
            ),
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.all(20.0),
                          child: Text('WHEN',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: HintText(
                              hintText: 'Required a format from the following'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color(0x99e6e6fa),
                            ),
                            child: DropdownButton<String>(
                              value: isSelectedCalendar,
                              alignment: Alignment.center,
                              dropdownColor: const Color(0xCCe6e6fa),
                              borderRadius: BorderRadius.circular(15.0),
                              onChanged: (String? value) {
                                setState(() {
                                  isSelectedCalendar = value!;
                                });
                              },
                              items: periods
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                      style: AcornTheme.textTheme.bodyMedium,
                                      value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        const HintText(hintText: 'World Calendar'),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                            child: TffFormat(
                              hintText: "year (required)",
                              onChanged: (value) {
                                newYearD = double.parse(value);
                              },
                              tffColor1: Colors.black54,
                              tffColor2: const Color(0x99e6e6fa),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                            child: TffFormat(
                              hintText: "Month 1-12 or 0",
                              onChanged: (value) {
                                try {
                                  newMonth = int.parse(value);
                                } catch (e) {
                                  newMonth = 0;
                                }
                              },
                              tffColor1: Colors.black54,
                              tffColor2: const Color(0x99e6e6fa),
                            )),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                            child: TffFormat(
                              hintText: "Date 1-31 or 0",
                              onChanged: (value) {
                                try {
                                  newDay = int.parse(value);
                                } catch (e) {
                                  newDay = 0;
                                }
                              },
                              tffColor1: Colors.black54,
                              tffColor2: const Color(0x99e6e6fa),
                            )),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text('WHERE',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: HintText(
                              hintText:
                              'Select Where it happened from the following'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color(0x99e6e6fa),
                            ),
                            child: DropdownButton<String>(
                              value: isSelectedPay,
                              alignment: Alignment.center,
                              dropdownColor: const Color(0x99e6e6fa),
                              borderRadius: BorderRadius.circular(15.0),
                              onChanged: (String? value) {
                                setState(() {
                                  isSelectedPay = value!;
                                });
                              },
                              items: countries
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                      style: AcornTheme.textTheme.headlineMedium,
                                      value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('WHAT',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(100, 80, 100, 20),
                          child: TffFormat(
                            hintText: "Event　(within 50 letters)",
                            onChanged: (text) {
                              newName = text;
                            },
                            tffColor1: const Color(0xFF2f4f4f),
                            tffColor2: const Color(0x99e6e6fa),
                          )
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog<void>(
              context: context,
              builder: (_){
                return AlertDialog(
                  title: const Text('Data has been temporarily stored.'),
                  content: const Text('They are not uploaded yet. please continue to fill in the other fields.'),
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

          // convert the years depending on the selected calendar period
          switch (isSelectedCalendar) {
            case 'BillionYears':
              newYearI = (newYearD * 1000000000).round();
              calendarNo = 1;// billion years
              break;
            case 'MillionYears':
              newYearI = (newYearD * 1000000).round();
              calendarNo = 2;// million years
              break;
            case 'ThousandYears':
              newYearI = (newYearD * 1000).round();
              calendarNo = 3;
              break;
            case 'YearsByDatingMethods':
              newYearI = (2000 - newYearD).round();
              calendarNo = 4;
              break;
            case 'HistoricalYears':
              newYearI = (newYearD).round();
              calendarNo = 5;
              break;
          }
          ///make data of point
          newPoint = (((newYearI - 1) * 366 + (newMonth - 1) * 30.5 + newDay).toDouble()).round();


          confirm.isSelectedCalendar = isSelectedCalendar;
          confirm.calendarNo = calendarNo;
          confirm.year = newYearD;
          confirm.month = newMonth;
          confirm.day = newDay;
          confirm.point = newPoint;
          print(newPoint);

          confirm.country = isSelectedPay;
          print(isSelectedPay);
          confirm.name = newName;
          print(newName);
          print("save name");
        },
        label: const Text('Temporarily save'),
      ),

    );
  }
}