import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';

class ResultPage extends StatelessWidget {
  final List<String> listPays;
  const ResultPage({super.key, required this.listPays});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SearchByPaysModel()..fetchPrincipal(countries: listPays),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search Results for: $listPays'),
        ),
        body: Consumer<SearchByPaysModel>(
          builder: (context, model, child) {
            return ListView.builder(
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
            );
          },
        ),
      ),
    );
  }
}
