import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalTermsEndpoint extends Endpoint {
  ///Selects some junctions of principal-Terms from DB
  Future<List<PrincipalTerms>> getPTerms(Session session,
      {int? keynumber}) async {
    return await PrincipalTerms.db.find(
      session,
      where: (t) => keynumber !=null ? t.termId.equals(keynumber) : Constant.bool(true),
      orderBy: (principalTerms) => principalTerms.principalId,
    );
  }

  ///Adds principal terms in DB
  Future<void> addPrincipalTerms(Session session, PrincipalTerms pTerms) async {
    await PrincipalTerms.db.insertRow(session, pTerms);
  }
}