import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalCattEndpoint extends Endpoint {
  //Fetch principal-Catt from DB
  Future<List<PrincipalCatt>> getPCatt(Session session,
      {String? keyword}) async {
    return await PrincipalCatt.find(
      session,
      //where: (t) => keyword !=null ? t.pCatt.like('%$keyword%') : Constant(true),
      orderBy: PrincipalCatt.t.catt_id,
    );
  }

  //Add PCatt in DB
  Future<int> addPCatt(Session session, PrincipalCatt pCatt) async {
    await PrincipalCatt.insert(session, pCatt);
    return pCatt.id!;
  }
}