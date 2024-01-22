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
}
