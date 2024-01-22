import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class AttInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of catts-involved from DB.
  Future<List<AttsInvolved>> getAttsInvolved(Session session,
      {int? keynumber}) async {
    return await AttsInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.attId.equals(keynumber) : Constant.bool(true),
      orderBy: (attsInvolved) => attsInvolved.principalId,
    );
  }

  ///Adds a junction of country-att involved in DB
  Future<void> addAttsInvolved(Session session, AttsInvolved attsInvolved) async {
    await AttsInvolved.db.insertRow(session, attsInvolved);
  }
}