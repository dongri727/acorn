import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class StarsInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of stars-involved from DB.
  Future<List<StarsInvolved>> getStarsInvolved(Session session,
      {int? keynumber}) async {
    return await StarsInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.starId.equals(keynumber) : Constant.bool(true),
      orderBy: (starsInvolved) => starsInvolved.principalId,
    );
  }

  ///Adds a junctions of stars involved in DB
  Future<void> addStarsInvolved(Session session, StarsInvolved starsInvolved) async {
    await StarsInvolved.db.insertRow(session, starsInvolved);
  }
}