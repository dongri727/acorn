import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchSpaceRepository {
  List<Space> listSpace = [];

  fetchSpace() async {
    try {
      listSpace = await client.space.getSpace();
    } catch (e) {
      debugPrint('$e');
    }
  }
}