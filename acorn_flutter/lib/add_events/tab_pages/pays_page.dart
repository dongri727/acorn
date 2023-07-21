import 'package:acorn_flutter/utils/chips_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:acorn_client/acorn_client.dart';

import '../../confirm/confirm.dart';
import '../../utils/button_format.dart';
import '../../utils/formats.dart';


var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class PaysPage extends StatefulWidget {
  const PaysPage({Key? key}) : super(key: key);

  @override
  State<PaysPage> createState() => _PaysPageState();
}

class _PaysPageState extends State<PaysPage> {

  List<Pays> listPays = [];
  List<Map<String, String>> displayListPays = [];
  final List<String> filtersPays = <String>[];
  final List<String> filtersPaysId = <String>[];

  List<Countryatts> listCATTs = [];
  List<Map<String, String>> displayListCATTs = [];
  final List<String> filtersCATTs = <String>[];
  final List<String> filtersCATTId = <String>[];

  Future<void> fetchPaysInvolved() async {
    try {
      listPays = await client.pays.getPays();
      setState(() {
        displayListPays = listPays.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  Future<void> fetchCountriesAttInvolved() async {
    try {
      listCATTs = await client.countryatts.getCountryATTs();
      setState(() {
        displayListCATTs = listCATTs.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }

  }

  var newCATT = '';

  late int countryattLastVal;

  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCATT);
    countryattLastVal = await client.countryatts.addCountryATTs(catts);
    print(countryattLastVal);
    debugPrint("add a CountryATT");
    listCATTs = await client.countryatts.getCountryATTs();
    setState(() {});
  }

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
            child: Center(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: OutlinedButton(
                                  onPressed: fetchPaysInvolved,
                                  child: const Text('Show and Select Countries Involved'),
                                ),
                              ),
                              Text(
                                'Selected: ${filtersPays.join(', ')}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 5.0,
                                  children: listPays.map((pays) {
                                    return FilterFormat(
                                        filterFilter: filtersPays,
                                        filterData: pays.pays);
/*                                    return FilterChip(
                                      label: Text(pays.pays),
                                      selected: filtersPays.contains(pays.pays),
                                      onSelected: (bool value) {
                                        setState(() {
                                          if (value) {
                                            if (!filtersPays.contains(pays.pays)) {
                                              filtersPays.add(pays.pays);
                                            }
                                            if (!filtersPaysId.contains(pays.id)) {
                                              filtersPaysId.add(pays.id as String);
                                            }

                                          } else {
                                            filtersPays.removeWhere((filtersPays) => filtersPays == pays.pays);
                                            filtersPaysId.removeWhere((filtersPaysId) => filtersPaysId == pays.id);
                                          }
                                        });
                                      },
                                    );*/
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: ButtonFormat(
                                  onPressed: fetchCountriesAttInvolved,
                                  label: 'Show and Select Countries Involved at that time',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 5.0,
                                  children: listCATTs.map((countryatts) {
                                    return FilterFormat(
                                        filterFilter: filtersCATTs,
                                        filterData: countryatts.countryatt);
/*                                    return FilterChip(
                                      label: Text(catts.catt),
                                      selected: filtersATTs.contains(atts.att),
                                      onSelected: (bool value) {
                                        setState(() {
                                          if (value) {
                                            if (!filtersATTs.contains(atts.att)) {
                                              filtersATTs.add(atts.att);
                                            }
                                            if(!filtersATTId.contains(atts.id)){
                                              filtersATTId.add(atts.id as String);
                                            }
                                          } else {
                                            // ignore: unrelated_type_equality_checks
                                            filtersATTs.removeWhere((filtersAtts) => filtersATTs == atts.att);
                                            // ignore: unrelated_type_equality_checks
                                            filtersATTId.removeWhere((filtersAttId) => filtersATTId == atts.id);
                                          }
                                        });
                                      },
                                    );*/
                                  }).toList(),
                                ),
                              ),
                              Text(
                                'Selected: ${filtersCATTs.join(', ')}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: TffFormat(
                                  hintText: 'a New Country Involved at that time You Want',
                                  onChanged: (text) {
                                    newCATT = text;
                                  },
                                  tffColor1: Colors.black54,
                                  tffColor2: const Color(0x99e6e6fa),
                                ),
                              ),
                              OutlinedButton (
                                onPressed: addCountryATTandFetch,
                                child: const Text('Add a New Country Involved at that time'),
                              )
                            ],
                          )
                      ),

                    ]
                )
            )),),
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

          confirm.selectedPays = filtersPays;
          confirm.selectedPaysId = filtersPaysId;
          print ("$filtersPaysId");


          confirm.selectedATT = filtersCATTs;
          confirm.selectedATTId = filtersCATTId;
          print ("$filtersCATTId");

        },
        label: const Text('Temporarily Save'),
      ),
    );
  }
}
