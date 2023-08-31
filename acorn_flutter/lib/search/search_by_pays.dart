
import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import '../utils/chips_format.dart';

var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

class  SearchByPays {
  final Client client;

  SearchByPays(this.client);

  List<Pays> listPays = [];

  Future<void> fetchPaysLookingFor() async {
    try {
      listPays = await client.pays.getPays();
      print(listPays);
    } on Exception catch (e) {
      debugPrint('$e');
    }
  }

  List<Widget> buildChips(List<String> filtersPays, List<int> filtersPaysId) {
    return listPays.map<Widget>((item) {
        return FilterFormat(
          filteredKeys: filtersPays,
          filteredValues: filtersPaysId,
          filterKey: item.pays,
          filterValue: item.id,
        );
      }).toList();
  }
}
