import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalOrgsEndpoint extends Endpoint {
  ///Selects some junctions of principal-Orgs from DB
  Future<List<PrincipalOrgs>> getPOrgs(Session session,
      {int? keynumber}) async {
    return await PrincipalOrgs.db.find(
      session,
      where: (t) => keynumber !=null ? t.orgId.equals(keynumber) : Constant.bool(true),
      orderBy: (principalOrgs) => principalOrgs.principalId,
    );
  }

  ///Adds a junctions of POrgs in DB
  Future<void> addPOrgs(Session session, PrincipalOrgs pOrgs) async {
    await PrincipalOrgs.db.insertRow(session, pOrgs);
  }
}