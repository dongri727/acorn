import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPattEndpoint extends Endpoint {
  ///Selects some junctions of principal-Patt from DB
  Future<List<PrincipalPatt>> getPPatt(Session session,
      {int? keynumber}) async {
    return await PrincipalPatt.db.find(
      session,
      where: (t) => keynumber !=null ? t.pattId.equals(keynumber) : Constant.bool(true),
      orderBy: (principalPatt) => principalPatt.principalId,
    );
  }

  ///Adds a junction of PCatt in DB
  Future<void> addPPatt(Session session, PrincipalPatt pPatt) async {
    await PrincipalPatt.db.insertRow(session, pPatt);
  }
}