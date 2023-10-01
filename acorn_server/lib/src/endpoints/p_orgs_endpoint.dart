import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalOrgsEndpoint extends Endpoint {
  //Fetch principal-Orgs from DB
  Future<List<PrincipalOrgs>> getPOrgs(Session session,
      {String? keyword}) async {
    return await PrincipalOrgs.find(
      session,
      //where: (t) => keyword !=null ? t.pOrgs.like('%$keyword%') : Constant(true),
      orderBy: PrincipalOrgs.t.org_id,
    );
  }

  //Add POrgs in DB
  Future<int> addPOrgs(Session session, PrincipalOrgs pOrgs) async {
    await PrincipalOrgs.insert(session, pOrgs);
    return pOrgs.id!;
  }
}