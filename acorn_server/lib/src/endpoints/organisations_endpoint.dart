import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class OrganisationsEndpoint extends Endpoint {
  //Fetch places from DB
  Future<List<Organisations>> getOrganisations(Session session, {String? keyword}) async {
    return await Organisations.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      orderBy: Organisations.t.organisation,
    );
  }

  //Add place in DB
  Future<int> addOrganisations(Session session, Organisations organisations) async {
    await Organisations.insert(session, organisations);
    var organisationLastVal = await session.db.query('SELECT LASTVAL()');
    return organisationLastVal[0][0] as int;
  }
}