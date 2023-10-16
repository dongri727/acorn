import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'multiple_search_page.dart';
import 'search_model.dart';

class ResultPage extends StatelessWidget {
  final List<String>? listPeriod;
  final List<String>? listLocation;
  final List<String>? listPrecise;
  final List<int>? listSeaIds;
  final List<int>? listCattIds;
  final List<int>? listPattIds;
  final List<int>? listPaysInvolvedIds;
  final List<int>? listPaysInvolvedATTIds;
  final List<int>? listStarsInvolvedIds;
  final List<int>? listOrgIds;
  final List<int>? listPersonIds;
  final List<int>? listCategoryIds;
  final List<int>? listTermIds;

  const ResultPage({
    super.key,
    this.listPeriod,
    this.listLocation,
    this.listPrecise,
    this.listSeaIds,
    this.listCattIds,
    this.listPattIds,
    this.listPaysInvolvedIds,
    this.listPaysInvolvedATTIds,
    this.listStarsInvolvedIds,
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
        if (listPeriod != null) {
          model.fetchPrincipalByPeriod(period: listPeriod);
        } else if (listLocation != null) {
          model.fetchPrincipal(location: listLocation);
          print('fetch Principal');
        } else if (listPrecise != null) {
          model.fetchPrincipalByPrecise(listPrecise: listPrecise);
        } else if (listCattIds != null) {
          model.fetchPrincipalByCattId(listCattIds: listCattIds);
          print(listCattIds);
        } else if (listPattIds != null) {
          model.fetchPrincipalByPattId(listPattIds: listPattIds);
        } else if (listPaysInvolvedIds != null) {
          model.fetchPrincipalByCInvolvedId(listCInvolvedIds: listPaysInvolvedIds);
        } else if (listPaysInvolvedATTIds != null) {
          model.fetchPrincipalByAttInvolvedId(listAttsInvolvedIds: listPaysInvolvedATTIds);
        } else if (listStarsInvolvedIds != null) {
          model.fetchPrincipalByStarsInvolvedId(listStarInvolvedIds: listStarsInvolvedIds);
        } else if (listOrgIds != null) {
          model.fetchPrincipalByOrgsId(listOrgIds: listOrgIds);
          print(listOrgIds);
        } else if (listPersonIds != null) {
          model.fetchPrincipalByPersonId(listPersonIds: listPersonIds);
          print(listPersonIds);
        } else if (listCategoryIds != null) {
          model.fetchPrincipalByCategoryId(listCategoryIds: listCategoryIds);
        } else if (listTermIds != null) {
          model.fetchPrincipalByTermId(listTermIds: listTermIds);
        }
        return model;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => MultiSearchPage(),
                ),
              );
            },
          ),
          title: const Text('Search Results'),
        ),
        body: Consumer<SearchByOptionsModel>(
          builder: (context, model, child) {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/both.png'),
                    fit: BoxFit.cover,
                  )
              ),
              child: ListView.builder(
                itemCount: model.principal.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Card(
                      color: const Color(0xFFe6e6fa),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Text(model.principal[index].annee.toString(),
                          style: const TextStyle(fontSize: 16),
                          ),
                          title: Text(model.principal[index].affair,
                            style: const TextStyle(fontSize: 24),
                          ),
                          trailing: Text('${model.principal[index].location}, ${model.principal[index].precise}',
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
