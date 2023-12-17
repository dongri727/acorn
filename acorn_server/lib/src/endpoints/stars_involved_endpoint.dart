import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class StarsInvolvedEndpoint extends Endpoint {
  //Fetch stars-involved from DB
  Future<List<StarsInvolved>> getStarsInvolved(Session session,
      {String? keyword}) async {
    return await StarsInvolved.find(
      session,
      //where: (t) => keyword !=null ? t.starsInvolved.like('%$keyword%') : Constant(true),
      orderBy: StarsInvolved.t.star_id,
    );
  }

  //Add stars involved in DB
  Future<int> addStarsInvolved(Session session, StarsInvolved starsInvolved) async {
    await StarsInvolved.insert(session, starsInvolved);
    return starsInvolved.id!;
  }
}