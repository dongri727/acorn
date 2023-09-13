import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';

class ResultPage extends StatelessWidget {
  final List<String>? listPays;
  final List<int>? listPlaceIds;
  final List<int>? listSeaIds;
  final List<int>? listCattIds;
  final List<int>? listPattIds;
  final List<int>? listOrgIds;
  final List<int>? listPersonIds;
  final List<int>? listCategoryIds;
  final List<int>? listTermIds;

  const ResultPage({
    super.key,
    this.listPays,
    this.listPlaceIds,
    this.listSeaIds,
    this.listCattIds,
    this.listPattIds,
    this.listOrgIds,
    this.listPersonIds,
    this.listCategoryIds,
    this.listTermIds,

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
        } else if (listCattIds != null) {
          model.fetchPrincipalByCatts(listCattIds: listCattIds);
        } else if (listPattIds != null) {
          model.fetchPrincipalByPatts(listPattIds: listPattIds);
        } else if (listOrgIds != null) {
          model.fetchPrincipalByOrgs(listOrgIds: listOrgIds);
        } else if (listPersonIds != null) {
          model.fetchPrincipalByPeople(listPersonIds: listPersonIds);
        } else if (listCategoryIds != null) {
          model.fetchPrincipalByCategories(listCategoryIds: listCategoryIds);
        } else if (listTermIds != null) {
          model.fetchPrincipalByTerms(listTermIds: listTermIds);
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
