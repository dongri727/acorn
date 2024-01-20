import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalSeasEndpoint extends Endpoint {
  ///Fetches principal-Seas from DB
  Future<List<PrincipalSeas>> getPrincipalSeas(Session session,
      {String? keyword}) async {
    return await PrincipalSeas.db.find(
      session,
      //where: (t) => keyword !=null ? t.principalSeas.like('%$keyword%') : Constant(true),
      //orderBy: PrincipalSeas.t.seasId,
    );
  }

  ///Adds principal seas in DB
  Future<int> addPrincipalSeas(Session session, PrincipalSeas principalSeas) async {
    await PrincipalSeas.db.insertRow(session, principalSeas);
    return principalSeas.id!;
  }
}