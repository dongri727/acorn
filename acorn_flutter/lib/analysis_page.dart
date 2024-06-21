import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/export/exporter.dart';
import 'package:acorn_flutter/lists/data_count_countries.dart';
import 'package:acorn_flutter/serverpod_client.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => AnalysisPageState();
}

class AnalysisPageState extends State<AnalysisPage> {
  List<Pays> countCountries = [];
  //List<dynamic> countCountries = [];
  List<Categories> countCategories = [];

  Future<void> fetchCountCountries() async {
    countCountries = await client.pays.getPays();
    setState(() {});
  }

/*  Future<void> fetchCountCountries() async {
    countCountries = await client.analysis.getCountCountries();
    setState(() {});
  }*/

  Future<void> fetchCountCategories() async {
    countCategories = await client.categories.countCategories();
    print(countCategories);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchCountCountries();
      fetchCountCategories();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Data (as of June17)'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: countCountries.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(countCountries[index].pays),
                    trailing: Text(countCountries[index].combien.toString()),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: periodData.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(periodData[index]['name']),
                    trailing: Text(periodData[index]['count'].toString()),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: countCategories.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(countCategories[index].category),
                    trailing: Text(countCategories[index].combien.toString()),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
