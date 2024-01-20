import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PeopleEndpoint extends Endpoint {
  ///Fetches people from DB
  Future<List<People>> getPeople(Session session, {String? keyword}) async {
    return await People.db.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      //orderBy: People.t.person,
    );
  }

  //Adds people in DB
  Future<int> addPeople(Session session, People people) async {
    await People.db.insertRow(session, people);
    return people.id!;
  }
}
