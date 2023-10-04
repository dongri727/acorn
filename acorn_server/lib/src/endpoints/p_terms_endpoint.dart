import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalTermsEndpoint extends Endpoint {
  //Fetch principal-Terms from DB
  Future<List<PrincipalTerms>> getPTerms(Session session,
      {String? keyword}) async {
    return await PrincipalTerms.find(
      session,
      //where: (t) => keyword !=null ? t.pTerms.like('%$keyword%') : Constant(true),
      orderBy: PrincipalTerms.t.term_id,
    );
  }

  //Add POrgs in DB
  Future<int> addPrincipalTerms(Session session, PrincipalTerms pTerms) async {
    await PrincipalTerms.insert(session, pTerms);
    return pTerms.id!;
  }
}