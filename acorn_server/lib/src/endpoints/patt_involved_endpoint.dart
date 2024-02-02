import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PattInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of patts-involved from DB.
  Future<List<PattsInvolved>> getPattsInvolved(Session session,
      {int? keynumber}) async {
    return await PattsInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.pattId.equals(keynumber) : Constant.bool(true),
      orderBy: (pcattsInvolved) => pcattsInvolved.principalId,
    );
  }

  ///Adds a junction of country-att involved in DB
  Future<void> addPattsInvolved(Session session, PattsInvolved pattsInvolved) async {
    await PattsInvolved.db.insertRow(session, pattsInvolved);
  }
}