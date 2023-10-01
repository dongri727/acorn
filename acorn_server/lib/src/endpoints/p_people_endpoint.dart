import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPeopleEndpoint extends Endpoint {
  //Fetch principal-People from DB
  Future<List<PrincipalPeople>> getPPeople(Session session,
      {String? keyword}) async {
    return await PrincipalPeople.find(
      session,
      //where: (t) => keyword !=null ? t.pPeople.like('%$keyword%') : Constant(true),
      orderBy: PrincipalPeople.t.person_id,
    );
  }

  //Add POrgs in DB
  Future<int> addPPeople(Session session, PrincipalPeople principalPeople) async {
    await PrincipalPeople.insert(session, principalPeople);
    return principalPeople.id!;
  }
}