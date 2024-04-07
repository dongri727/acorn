import 'dart:core';
import 'package:acorn_client/acorn_client.dart';
import 'package:flutter/foundation.dart';

import '../serverpod_client.dart';

class DetailModel extends ChangeNotifier {
  List<Detail> listDetail = [];

  Future<void> fetchDetailBundled(int principalId) async {
    try {
      listDetail = await client.detail.getDetailByPrincipalId(principalId: principalId);
      notifyListeners();

    } catch (e) {
      debugPrint('Error fetching detail: $e');
    }
  }

}

