import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

//Catt where it happend, uniquely determined for principal

class PrincipalCattEndpoint extends Endpoint {
  ///Selects some junctions of principal-Catt from DB
  Future<List<PrincipalCatt>> getPCatt(Session session,
      {int? keynumber}) async {
    return await PrincipalCatt.db.find(
      session,
      where: (t) => keynumber !=null ? t.cattId.equals(keynumber) : Constant.bool(true),
      orderBy: (principalCatt) => principalCatt.principalId,
    );
  }

  ///Adds a junctions of PCatt in DB
  Future<void> addPCatt(Session session, PrincipalCatt pCatt) async {
    await PrincipalCatt.db.insertRow(session, pCatt);
  }
}