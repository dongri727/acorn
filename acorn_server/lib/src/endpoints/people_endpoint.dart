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

     ///Fetches selected People with principalId
  Future<List<People>> getPeopleByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get personIds from PrincipalCategories using principalId
    var whereClausePrincipalPeople =
        PrincipalPeople.t.principalId.equals(principalId);

    var principalPeopleResults = await PrincipalPeople.db
        .find(session, where: (_) => whereClausePrincipalPeople);
    var personIds =
        principalPeopleResults.map((row) => row.personId).toList();

    if (personIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get People using personIds
    return await getPeopleByIds(session, personIds);
  }

  Future<List<People>> getPeopleByIds(
      Session session, List<int> personIds) async {
    if (personIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClausePeople;
    for (var personId in personIds) {
      if (whereClausePeople == null) {
        whereClausePeople = People.t.id.equals(personId);
      } else {
        whereClausePeople =
            whereClausePeople | People.t.id.equals(personId);
      }
    }
    return await People.db.find(
      session,
      where: (_) => whereClausePeople,
      orderBy: (people) => people.person,
    );
  }
}
