import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/search/multiple_search_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'multiple_search_page.dart';

class ResultPage extends StatelessWidget {
  final List<Principal>? principal;
  const ResultPage({ super.key , this.principal});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => MultipleSearchModel(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => const MultiSearchPage(),
                ),
              );
            },
          ),
          title: const Text('CLASSIC VIEW'),
        ),
        body: Consumer<MultipleSearchModel>(
          builder: (context, model, child) {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/both.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child: ListView.builder(
                itemCount: principal?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Card(
                      color: const Color(0xFFe6e6fa),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Text('${principal?[index].annee}-${principal?[index].month}-${principal?[index].day}' ,
                          style: const TextStyle(fontSize: 16),
                          ),
                          title: Text(principal![index].affair,
                            style: const TextStyle(fontSize: 24),
                          ),
                          trailing: Text('${principal?[index].location}, ${principal?[index].precise}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
