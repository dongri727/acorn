import 'package:acorn_flutter/utils/formats.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';

class ReadAllPage extends StatelessWidget {
  const ReadAllPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ReadAllModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Consumer<ReadAllModel>(
          builder: (context, model, child) {
            return Container(
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
                          const Padding(padding: EdgeInsets.all(20.0),
                            child: Text(
                              'SEARCH',
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FormatGrey(
                              controller: model.controller,
                              hintText: 'current Country name where it happened',
                              onChanged: (text){},
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(5,20,20,20),
                              child: ElevatedButton(
                                onPressed: () {
                                  print("Submitted country: ${model.controller.text}");
                                  model.fetchPrincipal(country: model.controller.text.isNotEmpty
                                      ? model.controller.text
                                      : null);
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (BuildContext context){
                                        return AlertDialog(
                                          title: const Text('Successfully Selected'),
                                          content: const Text('Choose an Era and Move On'),
                                          actions: [
                                            TextButton(
                                                onPressed: () => Navigator.pop(context),
                                                child: const Text('OK')),
                                          ],
                                        );
                                      });
                                  model.controller.clear();
                                },
                                child: const Text("Submit"),
                              )),
                        ],
                      )

                  ),
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: model.principal.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Card(
                            color: const Color(0xFFe6e6fa),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Text(model.principal[index].annee.toString()),
                                title: Text(model.principal[index].affair),
                                subtitle: Text(model.principal[index].pays),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Provider.of<ReadAllModel>(context, listen: false).fetchPrincipal(),
          tooltip: 'ShowAll',
          backgroundColor: Colors.blueGrey,
          label: const Text(
            "Show all",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}




/*
import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/utils/formats.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class ReadAllPage extends StatefulWidget {
  const ReadAllPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ReadAllPage> createState() => ReadAllPageState();
}

class ReadAllPageState extends State<ReadAllPage> {
  List<Principal> _principal = [];
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    //fetchPrincipal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
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
                    const Padding(padding: EdgeInsets.all(20.0),
                      child: Text(
                          'SEARCH',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FormatGrey(
                        controller: controller,
                        hintText: 'current Country name where it happened',
                        onChanged: (text){},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,20,20,20),
                      child: ElevatedButton(
                        onPressed: () {
                          print("Submitted country: ${controller.text}");
                          fetchPrincipal(country: controller.text.isNotEmpty
                              ? controller.text
                              : null);
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  title: const Text('Successfully Selected'),
                                  content: const Text('Choose an Era and Move On'),
                                  actions: [
                                    TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OK')),
                                  ],
                                );
                              });
                          controller.clear();
                        },
                        child: const Text("Submit"),
                      )),
                  ],
                )

            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: _principal.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Card(
                      color: const Color(0xFFe6e6fa),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Text(_principal[index].annee.toString()),
                          title: Text(_principal[index].affair),
                          subtitle: Text(_principal[index].pays),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: fetchPrincipal,
        tooltip: 'ShowAll',
        backgroundColor: Colors.blueGrey,
        label: const Text(
          "Show all",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  fetchPrincipal({String? country}) async {
    try {
      _principal = await client.principal.getPrincipal(keyword: country);
      setState(() {});
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}*/
