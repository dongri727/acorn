import 'package:acorn_client/acorn_client.dart';
import 'package:acorn_flutter/serverpod_client.dart';
import 'package:flutter/material.dart';

class FetchPeopleRepository {
  List<People> listPeople= [];

  fetchPeople() async {
    try {
      listPeople = await client.people.getPeople();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 複数語を同時に挿入できるようにする
  Future<void> addPeopleAndFetch(String newPerson) async {
    try{
      var people = People(person: newPerson);
      listPeople = await client.people.addAndReturnPeople(people);
    } catch (e) {
      debugPrint('$e');
    }
  }
}