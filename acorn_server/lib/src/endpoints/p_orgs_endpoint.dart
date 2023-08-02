import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalOrgsEndpoint extends Endpoint {
  //Fetch principal-Orgs from DB
  Future<List<PrincipalOrgs>> getPrincipalOrganisations(Session session,
      {String? keyword}) async {
    return await PrincipalOrgs.find(
      session,
      //where: (t) => keyword !=null ? t.pOrgs.like('%$keyword%') : Constant(true),
      orderBy: PrincipalOrgs.t.org_id,
    );
  }

  //Add POrgs in DB
  Future<int> addPrincipalOrgs(Session session, PrincipalOrgs principalOrgs) async {
    await PrincipalOrgs.insert(session, principalOrgs);
    return principalOrgs.id!;
  }
}