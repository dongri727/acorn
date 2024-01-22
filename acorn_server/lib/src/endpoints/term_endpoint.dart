import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class TermsEndpoint extends Endpoint {
  ///Fetches all terms from DB
  Future<List<Terms>> getTerms(Session session, {String? keyword}) async {
    return await Terms.db.find(
      session,
      orderBy: (terms) => terms.term,
    );
  }

  ///Adds a term in DB
  Future<int> addTerms(Session session, Terms terms) async {
    await Terms.db.insertRow(session, terms);
    return terms.id!;
  }
}
