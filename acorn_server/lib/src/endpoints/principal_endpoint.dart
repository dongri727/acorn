import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(Session session, Principal principal) async {
    await Principal.insert(session, principal);
    return principal.id!;
  }

  Future<List<Principal>> getPrincipal(Session session,
      {List<String>? keywords}) async {
    print("Getting principal with keywords: $keywords");

    var whereClause;
    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (whereClause == null) {
          whereClause = Principal.t.location.like('%$keyword%');
        } else {
          whereClause = whereClause | Principal.t.location.like('%$keyword%');
        }
      }
    } else {
      whereClause = Constant(true);
    }

    return await Principal.find(
      session,
      where: (_) => whereClause,
      orderBy: Principal.t.point, 
    );
  }

  Future<List<Principal>> getPrincipalByPrecise(Session session, {List<String>? keywords}) async {
    print("Getting principal with placeIds: $keywords");

    var whereClause;

    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (whereClause == null) {
          whereClause = Principal.t.precise.like('%$keyword%');
        } else {
          whereClause = whereClause | Principal.t.precise.like('%$keyword%');
        }
      }
    } else {
      whereClause = Constant(true);
    }

    return await Principal.find(
      session,
      where: (_) => whereClause,
      orderBy: Principal.t.annee,
    );
}

Future<List<Principal>> getPrincipalByCattId(Session session, {List<int>? cattIds}) async {
  print("Getting principal with cattIds: $cattIds");

  if (cattIds == null || cattIds.isEmpty) {
    return Future.value([]); // Return empty list if no cattIds are provided
  }

  // Step 1: Get principalIds from TableA using cattIds
  var whereClausePrincipalCatt;
  for (var cattId in cattIds) {
    if (whereClausePrincipalCatt == null) {
      whereClausePrincipalCatt = PrincipalCatt.t.catt_id.equals(cattId);
    } else {
      whereClausePrincipalCatt = whereClausePrincipalCatt | PrincipalCatt.t.catt_id.equals(cattId);
    }
  }

  var PrincipalCattResults = await PrincipalCatt.find(session, where: (_) => whereClausePrincipalCatt);
  var principalIds = PrincipalCattResults.map((row) => row.principal_id).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.find(
    session,
    where: (_) => whereClausePrincipal,
    orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByPersonId(Session session, {List<int>? personIds}) async {
  print("Getting principal with personIds: $personIds");

  if (personIds == null || personIds.isEmpty) {
    return Future.value([]); // Return empty list if no personIds are provided
  }

  // Step 1: Get principalIds from PrincipalPeople using personIds
  var whereClausePrincipalPeople;
  for (var personId in personIds) {
    if (whereClausePrincipalPeople == null) {
      whereClausePrincipalPeople = PrincipalPeople.t.person_id.equals(personId);
    } else {
      whereClausePrincipalPeople = whereClausePrincipalPeople | PrincipalPeople.t.person_id.equals(personId);
    }
  }

  var PrincipalPeopleResults = await PrincipalPeople.find(session, where: (_) => whereClausePrincipalPeople);
  var principalIds = PrincipalPeopleResults.map((row) => row.principal_id).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.find(
    session,
    where: (_) => whereClausePrincipal,
    orderBy: Principal.t.point,
  );
}



}
