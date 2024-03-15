import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryattsEndpoint extends Endpoint {
  ///Fetches all countries-att from DB
  Future<List<Countryatts>> getCountryATTs(Session session,
      {String? keyword}) async {
    return await Countryatts.db.find(
      session,
      orderBy: (countryatts) => countryatts.countryatt,
    );
  }

  ///Adds a country-att in DB
  Future<int> addCountryATTs(Session session, Countryatts countryatts) async {
    var newCatt = await Countryatts.db.insertRow(session, countryatts);
    var newCattId = newCatt.id;
    return newCattId!;
  }
  
  //Catt where it happend, uniquely determined for principal

  ///Adds a new Catt and returns all Catts
  Future<List<Countryatts>> addAndReturnCatts(
      Session session, Countryatts countryatts) async {
    await Countryatts.db.insertRow(session, countryatts);
    var allCatts = await Countryatts.db.find(
      session,
      orderBy: (countryatts) => countryatts.countryatt,
    );
    return allCatts;
  }

  //Catt which involved, multiple possibilities for principal

  ///Adds list and re-fetch all from DB
  Future<List<Countryatts>> addListAndGetCatts(
      Session session, List<String>? newCatts) async {
    if (newCatts == null || newCatts.isEmpty) {
      return await Countryatts.db.find(
        session,
        orderBy: (countryatts) => countryatts.countryatt,
      );
    }
    var rows = newCatts.map((catt) => Countryatts(countryatt: catt)).toList();
    try {
      await Countryatts.db.insert(session, rows);
    } catch (e) {
      print('Error inserting catts: $e');
    }
    return await Countryatts.db.find(
      session,
      orderBy: (countryatts) => countryatts.countryatt,
    );
  }

  ///Fetches selected CattsInv with principalId
  Future<List<Countryatts>> getCattsInvByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get cattIds from PrincipalCatts using principalId
    var whereClauseCattsInv =
        CattsInvolved.t.principalId.equals(principalId);

    var cattsInvResults = await CattsInvolved.db
        .find(session, where: (_) => whereClauseCattsInv);
    var cattIds =
        cattsInvResults.map((row) => row.cattId).toList();

    if (cattIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Countryatts using cattIds
    return await getCountryattsByIds(session, cattIds);
  }

    ///Fetches selected Catt where it happened with principalId
  Future<List<Countryatts>> getCattsByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get cattIds from PrincipalCatts using principalId
    var whereClausePrincipalCatts =
        PrincipalCatt.t.principalId.equals(principalId);

    var principalCattsResults = await PrincipalCatt.db
        .find(session, where: (_) => whereClausePrincipalCatts);
    var cattIds =
        principalCattsResults.map((row) => row.cattId).toList();

    if (cattIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Countryatts using cattIds
    return await getCountryattsByIds(session, cattIds);
  }

  Future<List<Countryatts>> getCountryattsByIds(
      Session session, List<int> cattIds) async {
    if (cattIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClauseCountryatts;
    for (var cattId in cattIds) {
      if (whereClauseCountryatts == null) {
        whereClauseCountryatts = Countryatts.t.id.equals(cattId);
      } else {
        whereClauseCountryatts =
            whereClauseCountryatts | Countryatts.t.id.equals(cattId);
      }
    }
    return await Countryatts.db.find(
      session,
      where: (_) => whereClauseCountryatts,
      orderBy: (countryatts) => countryatts.countryatt,
    );
  }
}
