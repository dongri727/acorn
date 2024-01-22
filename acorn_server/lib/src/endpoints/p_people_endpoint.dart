import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPeopleEndpoint extends Endpoint {
  ///Selects some junctions of principal-People from DB
  Future<List<PrincipalPeople>> getPPeople(Session session,
      {int? keynumber}) async {
    return await PrincipalPeople.db.find(
      session,
      where: (t) => keynumber !=null ? t.personId.equals(keynumber) : Constant.bool(true),
      orderBy: (principalPeople) => principalPeople.principalId,
    );
  }

  ///Adds a junction of Principal people in DB
  Future<void> addPPeople(Session session, PrincipalPeople principalPeople) async {
    await PrincipalPeople.db.insertRow(session, principalPeople);
  }
}