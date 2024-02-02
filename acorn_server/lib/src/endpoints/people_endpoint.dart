import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PeopleEndpoint extends Endpoint {
  ///Fetches all people from DB
  Future<List<People>> getPeople(Session session, {String? keyword}) async {
    return await People.db.find(
      session,
      orderBy: (people) => people.person,
    );
  }

  //Adds a person in DB
  Future<void> addPeople(Session session, People people) async {
    await People.db.insertRow(session, people);
  }

  ///Adds a new person and returns all People
  Future<List<People>> addAndReturnPeople(
      Session session, People people) async {
    await People.db.insertRow(session, people);
    var allPeople = await People.db.find(
      session,
      orderBy: (people) => people.person,
    );
    return allPeople;
  }
}
