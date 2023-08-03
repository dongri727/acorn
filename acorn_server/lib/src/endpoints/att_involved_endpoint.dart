import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class AttInvolvedEndpoint extends Endpoint {
  //Fetch atts-involved from DB
  Future<List<AttsInvolved>> getAttsInvolved(Session session,
      {String? keyword}) async {
    return await AttsInvolved.find(
      session,
      //where: (t) => keyword !=null ? t.attsInvolved.like('%$keyword%') : Constant(true),
      orderBy: AttsInvolved.t.att_id,
    );
  }

  //Add country involved in DB
  Future<int> addAttsInvolved(Session session, AttsInvolved attsInvolved) async {
    await AttsInvolved.insert(session, attsInvolved);
    return attsInvolved.id!;
  }
}