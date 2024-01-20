import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalTermsEndpoint extends Endpoint {
  ///Fetches principal-Terms from DB
  Future<List<PrincipalTerms>> getPTerms(Session session,
      {String? keyword}) async {
    return await PrincipalTerms.db.find(
      session,
      //where: (t) => keyword !=null ? t.pTerms.like('%$keyword%') : Constant(true),
      //orderBy: PrincipalTerms.t.termId,
    );
  }

  ///Adds principal terms in DB
  Future<int> addPrincipalTerms(Session session, PrincipalTerms pTerms) async {
    await PrincipalTerms.db.insertRow(session, pTerms);
    return pTerms.id!;
  }
}