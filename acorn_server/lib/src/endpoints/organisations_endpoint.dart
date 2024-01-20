import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class OrganisationsEndpoint extends Endpoint {
  ///Fetches places from DB
  Future<List<Organisations>> getOrganisations(Session session,
      {String? keyword}) async {
    return await Organisations.db.find(
      session,
      //where: (t) => keyword !=null ? t.organisation.like('%$keyword%') : Constant.bool(true),
      //orderBy: Organisations.t.organisation,
    );
  }

  ///Adds place in DB
  Future<int> addOrganisations(
      Session session, Organisations organisations) async {
    await Organisations.db.insert(session, organisations as List<Organisations>);
    return organisations.id!;
  }
}
