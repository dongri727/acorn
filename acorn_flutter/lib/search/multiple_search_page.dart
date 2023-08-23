import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/button_format.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import '../utils/chips_format.dart';
import 'search_model.dart';
import 'result_page.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class MultiSearchPage extends StatefulWidget {
  const MultiSearchPage({super.key});

  @override
  State<MultiSearchPage> createState() => _MultiSearchPageState();
}

class _MultiSearchPageState extends State<MultiSearchPage> {

  ///検索国の現在名
  List<Pays> listPays = [];
  List<Map<String, String>> displayListPays = [];
  final List<String> filtersPays = <String>[];
  final List<int> filtersPaysId = <int>[];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SelectModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Multiple Search Page'),
        ),
        body: Consumer<SelectModel>(
          builder: (context, model, child) {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/both.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                        child: ButtonFormat(
                          onPressed: fetchPaysLookingFor,
                          label: 'Show and Select Current Countries',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          spacing: 5.0, // Gap between FilterChips
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultPage(listPays: filtersPays),
                            ),
                          );
                          print ("$filtersPays");
                        },
                        child: const Text("Search"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //fetchPaysLookingFor();  // Fetch the list of countries when the widget is initialized.
  }

  Future<void> fetchPaysLookingFor() async {
    try {
      listPays = await client.pays.getPays();
      setState(() {
        displayListPays = listPays.cast<Map<String, String>>();
      });
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}

