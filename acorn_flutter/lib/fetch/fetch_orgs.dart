import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchOrgsRepository {
  //List<Organisations> listOrgs = [];
  List<Detail> listDetailOrgs = [];

/*  fetchOrgs() async {
    try {
      listOrgs = await client.organisations.getOrganisations();
    } catch (e) {
      debugPrint('$e');
    }
  }*/

/*  //todo 複数語を同時に挿入できるようにする
  Future<void> addOrgsAndFetch(String newOrg) async {
    try{
      var orgs = Organisations(organisation: newOrg);
      listOrgs = await client.organisations.addAndReturnOrgs(orgs);
    } catch (e) {
      debugPrint('$e');
    }
  }*/

  ///get detail with genre
  fetchOrgsInDetail() async {
    try {
      listDetailOrgs = await client.detail.getDetailByGenre(genre: 'organisations');
    } catch (e) {
      debugPrint('$e');
    }
  }

  ///add and get detail with genre
  addDetailOrgsAndFetch(String orgs, String newOrgs) async {
    try {
      var detailOrgs = Detail(genre: orgs, mot: newOrgs);
      listDetailOrgs = await client.detail.addAndReturnDetailByGenre(detailOrgs);
    } catch (e) {
      debugPrint('$e');
    }
  }
}