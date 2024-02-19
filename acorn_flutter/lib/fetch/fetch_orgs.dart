import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchOrgsRepository {
  List<Organisations> listOrgs= [];

  fetchOrgs() async {
    try {
      listOrgs = await client.organisations.getOrganisations();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  Future<void> addOrgsAndFetch(String newOrg) async {
    try{
      var orgs = Organisations(organisation: newOrg);
      listOrgs = await client.organisations.addAndReturnOrgs(orgs);
    } catch (e) {
      debugPrint('$e');
    }
  }
}