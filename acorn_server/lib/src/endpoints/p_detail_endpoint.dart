import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalDetailEndpoint extends Endpoint {

  ///Adds a junctions of PDetail in DB
  Future<void> addPDetail(Session session, PrincipalDetail pDetail) async {
    await PrincipalDetail.db.insertRow(session, pDetail);
  }

  ///Selects some junctions of principal-Detail from DB with 
  Future<List<PrincipalDetail>> getPDetail(Session session,
      {int? pricipalId}) async {
    return await PrincipalDetail.db.find(
      session,
      where: (t) => pricipalId !=null ? t.detailId.equals(pricipalId) : Constant.bool(true),
      orderBy: (principalDetail) => principalDetail.principalId,
    );
  }
}