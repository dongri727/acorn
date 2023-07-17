import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class TermsEndpoint extends Endpoint {
  //Fetch terms from DB
  Future<List<Terms>> getTerms(Session session, {String? keyword}) async {
    return await Terms.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      orderBy: Terms.t.term,
    );
  }

  //Add a term in DB
  Future<int> addTerms(Session session, Terms terms) async {
    await Terms.insert(session, terms);
    var termLastVal = await session.db.query('SELECT LASTVAL()');
    return termLastVal[0][0] as int;
  }
}