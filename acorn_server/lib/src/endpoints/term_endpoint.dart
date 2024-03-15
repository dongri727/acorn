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

  ///Adds a new Term and returns all Terms
  Future<List<Terms>> addAndReturnTerms(
      Session session, Terms terms) async {
    await Terms.db.insertRow(session, terms);
    var allTerms = await Terms.db.find(
      session,
      orderBy: (terms) => terms.term,
    );
    return allTerms;
  }

   ///Fetches selected terms with principalId
  Future<List<Terms>> getTermsByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get TermIds from PrincipalCategories using principalId
    var whereClausePrincipalTerms =
        PrincipalTerms.t.principalId.equals(principalId);

    var principalTermsResults = await PrincipalTerms.db
        .find(session, where: (_) => whereClausePrincipalTerms);
    var termIds =
        principalTermsResults.map((row) => row.termId).toList();

    if (termIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Terms using termIds
    return await getTermsByIds(session, termIds);
  }

  Future<List<Terms>> getTermsByIds(
      Session session, List<int> termIds) async {
    if (termIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClauseTerms;
    for (var termId in termIds) {
      if (whereClauseTerms == null) {
        whereClauseTerms = Terms.t.id.equals(termId);
      } else {
        whereClauseTerms =
            whereClauseTerms | Terms.t.id.equals(termId);
      }
    }
    return await Terms.db.find(
      session,
      where: (_) => whereClauseTerms,
      orderBy: (terms) => terms.term,
    );
  }
}
