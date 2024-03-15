import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

//Patt where it happend, uniquely determined for principal

class PlaceattsEndpoint extends Endpoint {
  ///Fetches all places-att from DB.
  Future<List<Placeatts>> getPlaceATTs(Session session,
      {String? keyword}) async {
    return await Placeatts.db.find(
      session,
      orderBy: (placeatts) => placeatts.placeatt,
    );
  }

  ///Adds a place-att in DB.
  Future<void> addPlaceATTs(Session session, Placeatts placeatts) async {
    await Placeatts.db.insertRow(session, placeatts);
  }

  ///Adds and re-fetch all from DB
  Future<List<Placeatts>> addAndGetPatts(
      Session session, Placeatts placeatts) async {
    await Placeatts.db.insertRow(session, placeatts);
    return await Placeatts.db.find(
      session,
      orderBy: (placeatts) => placeatts.placeatt,
    );
  }

    ///Fetches selected PattsInv with principalId
  Future<List<Placeatts>> getPattsInvByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get PattIds from PrincipalPatts using principalId
    var whereClausePattsInv =
        PattsInvolved.t.principalId.equals(principalId);

    var pattsInvResults = await PattsInvolved.db
        .find(session, where: (_) => whereClausePattsInv);
    var cattIds =
        pattsInvResults.map((row) => row.pattId).toList();

    if (cattIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Placeatts using pattIds
    return await getPlaceattsByIds(session, cattIds);
  }

    ///Fetches selected Catt where it happened with principalId
  Future<List<Placeatts>> getPattsByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get PattIds from PrincipalPatts using principalId
    var whereClausePrincipalPatts =
        PrincipalCatt.t.principalId.equals(principalId);

    var principalPattsResults = await PrincipalCatt.db
        .find(session, where: (_) => whereClausePrincipalPatts);
    var cattIds =
        principalPattsResults.map((row) => row.cattId).toList();

    if (cattIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Placeatts using pattIds
    return await getPlaceattsByIds(session, cattIds);
  }

  Future<List<Placeatts>> getPlaceattsByIds(
      Session session, List<int> pattIds) async {
    if (pattIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClausePlaceatts;
    for (var pattId in pattIds) {
      if (whereClausePlaceatts == null) {
        whereClausePlaceatts = Placeatts.t.id.equals(pattId);
      } else {
        whereClausePlaceatts =
            whereClausePlaceatts | Placeatts.t.id.equals(pattId);
      }
    }
    return await Placeatts.db.find(
      session,
      where: (_) => whereClausePlaceatts,
      orderBy: (placeatts) => placeatts.placeatt,
    );
  }
}
