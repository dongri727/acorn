import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PaysEndpoint extends Endpoint {
  ///Fetches all countries from DB
  Future<List<Pays>> getPays(Session session, {String? keyword}) async {
    return await Pays.db.find(
      session,
      orderBy: (pays) => pays.combien, 
      orderDescending: true,
    );
  }

  ///Adds a new country when it is certified by the United Nations.
  Future<int> addPays(Session session, Pays pays) async {
    await Pays.db.insertRow(session, pays);
    return pays.id!;
  }

       ///Fetches selected country involved with principalId
  Future<List<Pays>> getPaysByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get paysIds from country-involved using principalId
    var whereClauseCountryInvolved =
        CountryInvolved.t.principalId.equals(principalId);

    var countryInvolvedResults = await CountryInvolved.db
        .find(session, where: (_) => whereClauseCountryInvolved);
    var paysIds =
        countryInvolvedResults.map((row) => row.paysId).toList();

    if (paysIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Pays using paysIds
    return await getPaysByIds(session, paysIds);
  }

  Future<List<Pays>> getPaysByIds(
      Session session, List<int> paysIds) async {
    if (paysIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClausePays;
    for (var paysId in paysIds) {
      if (whereClausePays == null) {
        whereClausePays = Pays.t.id.equals(paysId);
      } else {
        whereClausePays =
            whereClausePays | Pays.t.id.equals(paysId);
      }
    }
    return await Pays.db.find(
      session,
      where: (_) => whereClausePays,
      orderBy: (pays) => pays.pays,
    );
  }
}
