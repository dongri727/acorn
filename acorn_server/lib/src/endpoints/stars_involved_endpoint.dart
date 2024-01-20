import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class StarsInvolvedEndpoint extends Endpoint {
  ///Fetches stars-involved from DB
  Future<List<StarsInvolved>> getStarsInvolved(Session session,
      {String? keyword}) async {
    return await StarsInvolved.db.find(
      session,
      //where: (t) => keyword !=null ? t.starsInvolved.like('%$keyword%') : Constant(true),
      //orderBy: StarsInvolved.t.starId,
    );
  }

  ///Adds stars involved in DB
  Future<int> addStarsInvolved(Session session, StarsInvolved starsInvolved) async {
    await StarsInvolved.db.insertRow(session, starsInvolved);
    return starsInvolved.id!;
  }
}