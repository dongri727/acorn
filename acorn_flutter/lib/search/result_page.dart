import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';

class ResultPage extends StatelessWidget {
  final List<String>? listLocation;
  final List<String>? listPrecise;
  final List<int>? listSeaIds;
  final List<int>? listCattIds;
  final List<int>? listPattIds;
  final List<int>? listOrgIds;
  final List<int>? listPersonIds;
  final List<int>? listCategoryIds;
  final List<int>? listTermIds;

  const ResultPage({
    super.key,
    this.listLocation,
    this.listPrecise,
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

        if (listLocation != null) {
          model.fetchPrincipal(countries: listLocation);
          print('fetch Principal');
        } else if (listPrecise != null) {
          model.fetchPrincipalByPrecise(listPrecise: listPrecise);
/*        } else if (listSeaIds != null) {
          model.fetchPrincipalBySeas(listSeaIds: listSeaIds);
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
          model.fetchPrincipalByTerms(listTermIds: listTermIds);*/
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
                        subtitle: Text(model.principal[index].location),
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
