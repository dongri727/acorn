import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of countries-involved from DB
  Future<List<CountryInvolved>> getCInvolved(Session session,
      {int? keynumber}) async {
    return await CountryInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.paysId.equals(keynumber) : Constant.bool(true),
      orderBy: (countryInvolved) => countryInvolved.principalId,
    );
  }

  ///Adds a junction of country involved in DB
  Future<void> addCInvolved(Session session, CountryInvolved cInvolved) async {
    await CountryInvolved.db.insertRow(session, cInvolved);
  }

    /// Gets a list of principalIds based on a list of cInvolvedIds
  Future<List<int>> getPrincipalIdsByCInvolvedIds(Session session, {List<int>? cInvolvedIds}) async {
    if (cInvolvedIds == null || cInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no cInvolvedIds are provided
    }

    dynamic whereClauseCountryInvolved;
    for (var cInvolvedId in cInvolvedIds) {
      if (whereClauseCountryInvolved == null) {
        whereClauseCountryInvolved = CountryInvolved.t.paysId.equals(cInvolvedId);
      } else {
        whereClauseCountryInvolved = whereClauseCountryInvolved | CountryInvolved.t.paysId.equals(cInvolvedId);
      }
    }

    var cInvolvedResults = await CountryInvolved.db
        .find(session, where: (_) => whereClauseCountryInvolved);
    return cInvolvedResults.map((row) => row.principalId).toList();
  }
}