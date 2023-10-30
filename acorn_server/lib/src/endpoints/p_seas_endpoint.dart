import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalSeasEndpoint extends Endpoint {
  //Fetch principal-Seas from DB
  Future<List<PrincipalSeas>> getPrincipalSeas(Session session,
      {String? keyword}) async {
    return await PrincipalSeas.find(
      session,
      //where: (t) => keyword !=null ? t.principalSeas.like('%$keyword%') : Constant(true),
      orderBy: PrincipalSeas.t.seas_id,
    );
  }

  //Add principal seas in DB
  Future<int> addPrincipalSeas(Session session, PrincipalSeas principalSeas) async {
    await PrincipalSeas.insert(session, principalSeas);
    return principalSeas.id!;
  }
}