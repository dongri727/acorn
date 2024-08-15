import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalSitesEndpoint extends Endpoint {

  ///Adds a junctions of PSites in DB
  Future<void> addPSites(Session session, PrincipalSites pSites) async {
    await PrincipalSites.db.insertRow(session, pSites);
  }

  ///Selects some junctions of principal-Sites from DB with 
  Future<List<PrincipalSites>> getPSites(Session session,
      {int? pricipalId}) async {
    return await PrincipalSites.db.find(
      session,
      where: (t) => pricipalId !=null ? t.siteId.equals(pricipalId) : Constant.bool(true),
      orderBy: (principalSites) => principalSites.principalId,
    );
  }
}