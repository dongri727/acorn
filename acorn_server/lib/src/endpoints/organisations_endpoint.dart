import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class OrganisationsEndpoint extends Endpoint {
  ///Fetches organisations from DB
  Future<List<Organisations>> getOrganisations(Session session,
      {String? keyword}) async {
    return await Organisations.db.find(
      session,
      orderBy: (organisations) => organisations.organisation,
    );
  }

  ///Adds organisation in DB
  Future<int> addOrganisations(
      Session session, Organisations organisations) async {
    var newOrg = await Organisations.db.insertRow(session, organisations);
    var newOrgId = newOrg.id;
    return newOrgId!;
  }

  ///Adds a new Org and returns all Orgs
  Future<List<Organisations>> addAndReturnOrgs(
      Session session, Organisations organisations) async {
    await Organisations.db.insertRow(session, organisations);
    var allOrgs = await Organisations.db.find(
      session,
      orderBy: (organisations) => organisations.organisation,
    );
    return allOrgs;
  }

    ///Fetches selected Organisations with principalId
  Future<List<Organisations>> getOrgsByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get OrgIds from PrincipalOrgs using principalId
    var whereClausePrincipalOrgs =
        PrincipalOrgs.t.principalId.equals(principalId);

    var principalOrgsResults = await PrincipalOrgs.db
        .find(session, where: (_) => whereClausePrincipalOrgs);
    var orgIds =
        principalOrgsResults.map((row) => row.orgId).toList();

    if (orgIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Organisations using orgIds
    return await getOrganisationsByIds(session, orgIds);
  }

  Future<List<Organisations>> getOrganisationsByIds(
      Session session, List<int> orgIds) async {
    if (orgIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClauseOrganisations;
    for (var orgId in orgIds) {
      if (whereClauseOrganisations == null) {
        whereClauseOrganisations = Organisations.t.id.equals(orgId);
      } else {
        whereClauseOrganisations =
            whereClauseOrganisations | Organisations.t.id.equals(orgId);
      }
    }
    return await Organisations.db.find(
      session,
      where: (_) => whereClauseOrganisations,
      orderBy: (organisations) => organisations.organisation,
    );
  }
}
