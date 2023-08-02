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

  var newCATT = '';

  ///関係国の現在名
  List<Pays> listPays = [];
  List<Map<String, String>> displayListPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  ///関係国の当時の名称
  List<Countryatts> listCATTs = [];
  List<Map<String, String>> displayListCATTs = [];
  final List<String> filtersCATTs = <String>[];
  final List<int> filtersCATTId = <int>[];

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

  int? countryattId;

  addCountryATTandFetch() async {
    var catts = Countryatts(countryatt: newCATT);
    countryattId = await client.countryatts.addCountryATTs(catts);
    listCATTs = await client.countryatts.getCountryATTs();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final confirm = Provider.of<Confirm>(context);
    final cinvKey = GlobalKey<FormFieldState>();

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
                                child: ButtonFormat(
                                  onPressed: fetchPaysInvolved,
                                  label: 'Show and Select Current Countries Involved',
                                ),
                              ),
/*                              Text(
                                'Selected: ${filtersPays.join(', ')}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow,
                                ),
                              ),*/
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 5.0,
                                  children: listPays.map((pays) {
                                    return FilterFormat(
                                        filteredKeys: filtersPays,
                                        filteredValues: filtersPaysId,
                                        filterKey: pays.pays,
                                        filterValue: pays.id,
                                    );
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
/*                              Text(
                                'Selected: ${filtersCATTs.join(', ')}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow,
                                ),
                              ),*/
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 5.0,
                                  children: listCATTs.map((countryatts) {
                                    return FilterFormat(
                                        filteredKeys: filtersCATTs,
                                        filteredValues: filtersCATTId,
                                        filterKey: countryatts.countryatt,
                                      filterValue: countryatts.id,
                                    );
                                  }).toList(),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: TffFormat(
                                  key: cinvKey,
                                  hintText: 'a New Country Involved at that time You Want',
                                  onChanged: (text) {
                                    newCATT = text;
                                  },
                                  tffColor1: Colors.black54,
                                  tffColor2: const Color(0x99e6e6fa),
                                ),
                              ),
                              ButtonFormat (
                                onPressed: () {
                                  addCountryATTandFetch();
                                  cinvKey.currentState!.reset();
                                  },
                                label: 'Add a New Country Involved at that time',
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
