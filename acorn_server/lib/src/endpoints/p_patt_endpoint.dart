import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPattEndpoint extends Endpoint {
  //Fetch principal-Patt from DB
  Future<List<PrincipalPatt>> getPPatt(Session session,
      {String? keyword}) async {
    return await PrincipalPatt.find(
      session,
      //where: (t) => keyword !=null ? t.pPatt.like('%$keyword%') : Constant(true),
      orderBy: PrincipalPatt.t.patt_id,
    );
  }

  //Add PCatt in DB
  Future<int> addPPatt(Session session, PrincipalPatt pPatt) async {
    await PrincipalPatt.insert(session, pPatt);
    return pPatt.id!;
  }
}