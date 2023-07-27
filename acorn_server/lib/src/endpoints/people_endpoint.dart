import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PeopleEndpoint extends Endpoint {
  //Fetch people from DB
  Future<List<People>> getPeople(Session session, {String? keyword}) async {
    return await People.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      orderBy: People.t.person,
    );
  }

  //Add people in DB
  Future<int> addPeople(Session session, People people) async {
    await People.insert(session, people);
    //var personLastVal = await session.db.query('SELECT LASTVAL()');
    //return personLastVal[0][0] as int;
    return people.id!;
  }
}
