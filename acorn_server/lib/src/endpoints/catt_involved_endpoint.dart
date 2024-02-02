import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CattInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of catts-involved from DB.
  Future<List<CattsInvolved>> getAttsInvolved(Session session,
      {int? keynumber}) async {
    return await CattsInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.cattId.equals(keynumber) : Constant.bool(true),
      orderBy: (cattsInvolved) => cattsInvolved.principalId,
    );
  }

  ///Adds a junction of country-att involved in DB
  Future<void> addCattsInvolved(Session session, CattsInvolved cattsInvolved) async {
    await CattsInvolved.db.insertRow(session, cattsInvolved);
  }
}