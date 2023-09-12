import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';

class ResultPage extends StatelessWidget {
  final List<String>? listPays;
  final List<int>? listPlaceIds;
  final List<int>? listCategoriesId;
  final List<int>? listPeopleId;

  const ResultPage({
    super.key,
    this.listPays,
    this.listPlaceIds,
    this.listCategoriesId,
    this.listPeopleId
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final model = SearchByOptionsModel();

        if (listPays != null) {
          model.fetchPrincipal(countries: listPays);
        } else if (listPlaceIds != null) {
          model.fetchPrincipalByPlaces(listPlaceIds: listPlaceIds);
        } else if (listCategoriesId != null) {
          model.fetchPrincipalByCategories(listCategoryIds: listCategoriesId);
        } else if (listPeopleId != null) {
          model.fetchPrincipalByPeople(listPeopleIds: listPeopleId);
        }
        return model;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search Results'),
        ),
        body: Consumer<SearchByOptionsModel>(
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
