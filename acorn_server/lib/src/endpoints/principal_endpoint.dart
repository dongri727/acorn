import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(Session session, Principal principal) async {
    await Principal.insert(session, principal);
    var principalLastVal = await session.db.query('SELECT LASTVAL()');
    return principalLastVal[0][0] as int;
  }

  Future<List<Principal>> getPrincipal(Session session,
      {String? keyword}) async {
        print("Getting principal with keyword: $keyword");
    return await Principal.find(
      session,
      //where: (t) =>keyword != null ? t.affair.like('%$keyword%') : Constant(true),
      where: (t) =>keyword != null ? t.pays.like('%$keyword%') : Constant(true),
      orderBy: Principal.t.annee,
    );
  }
}
