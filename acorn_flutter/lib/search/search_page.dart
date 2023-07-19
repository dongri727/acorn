import 'package:acorn_client/acorn_client.dart';
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

  @override
  void initState() {
    super.initState();
    fetchPrincipal();
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
        child: ListView.builder(
          itemCount: _principal.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(350, 10, 350, 10),
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

  fetchPrincipal() async {
    try {
      _principal = await client.principal.getPrincipal();
      setState(() {});
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }
}
