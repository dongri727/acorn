import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../../confirm/confirm.dart';
import '../../utils/formats.dart';


var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class WhoPage extends StatefulWidget {
  const WhoPage({Key? key}) : super(key: key);

  @override
  State<WhoPage> createState() => _WhoPageState();
}

class _WhoPageState extends State<WhoPage> {
  List<Organisations> listOrgs = [];
  List<Map<String, String>> displayListOrgs = [];
  final List<String> filtersOrgs = <String>[];
  final List<String> filtersOrgsId = <String>[];

  List<People> listPeople = [];
  List<Map<String, String>> displayListPeople = [];
  final List<String> filtersPeople = <String>[];
  final List<String> filtersPeopleId = <String>[];

  Future<void> fetchOrgsInvolved() async {
    try {
      listOrgs = await client.organisations.getOrganisations();
      setState(() {
        displayListOrgs = listOrgs.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  var newOrg = '';
  late int organisationLastVal;

  Future<void> addOrgsAndFetch() async {
    var organisations = Organisations(organisation: newOrg);
    organisationLastVal =
    await client.organisations.addOrganisations(organisations);
    print(organisationLastVal);
    debugPrint("add a place");
    listOrgs = await client.organisations.getOrganisations();
    setState(() {});
  }

  Future<void> fetchPeopleInvolved() async {
    try {
      listPeople = await client.people.getPeople();
      setState(() {
        displayListPeople = listPeople.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  var newPerson = '';
  late int personLastVal;

  Future<void> addPeoplendFetch() async {
    var people = People(person: newPerson);
    personLastVal = await client.people.addPeople(people);
    print(personLastVal);
    debugPrint("add a place");
    listPeople = await client.people.getPeople();
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
                )),
            child: Center(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: OutlinedButton(
                                  onPressed: fetchOrgsInvolved,
                                  child: const Text(
                                      'Show and Select Organizations Involved'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Wrap(
                                  spacing: 5.0,
                                  children: listOrgs.map((organisations) {
                                    return FilterChip(
                                      label: Text(organisations.organisation),
                                      selected: filtersOrgs
                                          .contains(organisations.organisation),
                                      onSelected: (bool value) {
                                        setState(() {
                                          if (value) {
                                            if (!filtersOrgs.contains(
                                                organisations.organisation)) {
                                              filtersOrgs
                                                  .add(organisations.organisation);
                                            }
                                          } else {
                                            filtersOrgs.removeWhere((filtersOrgs) =>
                                            filtersOrgs ==
                                                organisations.organisation);
                                          }
                                        });
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                              Text(
                                'Selected: ${filtersOrgs.join(', ')}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: TffFormat(
                                  hintText: 'a New Organization You Want',
                                  onChanged: (text) {
                                    newOrg = text;
                                  },
                                  tffColor1: Colors.black54,
                                  tffColor2: const Color(0x99e6e6fa),
                                ),
                              ),
                              OutlinedButton(
                                onPressed: addOrgsAndFetch,
                                child: const Text('Add a New Organization'),
                              )
                            ],
                          )),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: OutlinedButton(
                                onPressed: fetchPeopleInvolved,
                                child:
                                const Text('Show and Select People Involved'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                spacing: 5.0,
                                children: listPeople.map((people) {
                                  return FilterChip(
                                    label: Text(people.person),
                                    selected: filtersPeople.contains(people.person),
                                    onSelected: (bool value) {
                                      setState(() {
                                        if (value) {
                                          if (!filtersPeople
                                              .contains(people.person)) {
                                            filtersPeople.add(people.person);
                                          }
                                        } else {
                                          filtersPeople.removeWhere(
                                                  (filtersPeople) =>
                                              filtersPeople == people.person);
                                        }
                                      });
                                    },
                                  );
                                }).toList(),
                              ),
                            ),
                            Text(
                              'Selected: ${filtersPeople.join(', ')}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.yellow,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: TffFormat(
                                hintText: 'a New Person You Want',
                                onChanged: (text) {
                                  newPerson = text;
                                },
                                tffColor1: Colors.black54,
                                tffColor2: const Color(0x99e6e6fa),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: addPeoplendFetch,
                              child: const Text('Add a New Person'),
                            )
                          ],
                        ),
                      ),
                    ]))),
      ),
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

          confirm.selectedOrg = filtersOrgs;
          confirm.selectedOrgId = filtersOrgs;
          ;
          print("$filtersOrgs");

          confirm.selectedWho = filtersPeople;
          confirm.selectedWhoId = filtersPeople;
          print("$filtersPeople");
        },
        label: const Text('Temporarily Save'),
      ),
    );
  }
}
