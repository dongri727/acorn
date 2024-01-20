import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(Session session, Principal principal) async {
    await Principal.db.insertRow(session, principal);
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
      whereClause = Constant.bool(true);
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClause,
      //orderBy: Principal.t.point, 
    );
  }
  
    Future<List<Principal>> getPrincipalByPeriod(Session session,
      {List<String>? keywords}) async {
    print("Getting principal with keywords: $keywords");

    var whereClause;
    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (whereClause == null) {
          whereClause = Principal.t.period.equals(keyword);
        } else {
          whereClause = whereClause | Principal.t.period.equals(keyword);
        }
      }
    } else {
      whereClause = Constant.bool(true);
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClause,
      //orderBy: Principal.t.point, 
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
      whereClause = Constant.bool(true);
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClause,
      //orderBy: Principal.t.annee,
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
      whereClausePrincipalCatt = PrincipalCatt.t.cattId.equals(cattId);
    } else {
      whereClausePrincipalCatt = whereClausePrincipalCatt | PrincipalCatt.t.cattId.equals(cattId);
    }
  }

  var PrincipalCattResults = await PrincipalCatt.find(session, where: (_) => whereClausePrincipalCatt);
  var principalIds = PrincipalCattResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByPattId(Session session, {List<int>? pattIds}) async {
  print("Getting principal with pattIds: $pattIds");

  if (pattIds == null || pattIds.isEmpty) {
    return Future.value([]); // Return empty list if no pattIds are provided
  }

  // Step 1: Get principalIds from TableA using cattIds
  var whereClausePrincipalPatt;
  for (var pattId in pattIds) {
    if (whereClausePrincipalPatt == null) {
      whereClausePrincipalPatt = PrincipalPatt.t.pattId.equals(pattId);
    } else {
      whereClausePrincipalPatt = whereClausePrincipalPatt | PrincipalPatt.t.pattId.equals(pattId);
    }
  }

  var PrincipalPattResults = await PrincipalPatt.find(session, where: (_) => whereClausePrincipalPatt);
  var principalIds = PrincipalPattResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
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
      whereClausePrincipalPeople = PrincipalPeople.t.personId.equals(personId);
    } else {
      whereClausePrincipalPeople = whereClausePrincipalPeople | PrincipalPeople.t.personId.equals(personId);
    }
  }

  var PrincipalPeopleResults = await PrincipalPeople.db.find(session, where: (_) => whereClausePrincipalPeople);
  var principalIds = PrincipalPeopleResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByPInvolvedId(Session session, {List<int>? pInvolvedIds}) async {
  print("Getting principal with pInvolvedIds: $pInvolvedIds");

  if (pInvolvedIds == null || pInvolvedIds.isEmpty) {
    return Future.value([]); // Return empty list if no pattIds are provided
  }

  // Step 1: Get principalIds from TablePrincipalPlace using pInvIds
  var whereClausePrincipalPlace;
  for (var pInvolvedId in pInvolvedIds) {
    if (whereClausePrincipalPlace == null) {
      whereClausePrincipalPlace = PrincipalPlace.t.placeId.equals(pInvolvedId);
    } else {
      whereClausePrincipalPlace = whereClausePrincipalPlace | PrincipalPlace.t.placeId.equals(pInvolvedId);
    }
  }

  var PInvolvedResults = await PrincipalPlace.db.find(session, where: (_) => whereClausePrincipalPlace);
  var principalIds = PInvolvedResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByCInvolvedId(Session session, {List<int>? cInvolvedIds}) async {
  print("Getting principal with cInvolvedIds: $cInvolvedIds");

  if (cInvolvedIds == null || cInvolvedIds.isEmpty) {
    return Future.value([]); // Return empty list if no pattIds are provided
  }

  // Step 1: Get principalIds from TableA using cattIds
  var whereClauseCountryInvolved;
  for (var cInvolvedId in cInvolvedIds) {
    if (whereClauseCountryInvolved == null) {
      whereClauseCountryInvolved = CountryInvolved.t.paysId.equals(cInvolvedId);
    } else {
      whereClauseCountryInvolved = whereClauseCountryInvolved | CountryInvolved.t.paysId.equals(cInvolvedId);
    }
  }

  var CInvolvedResults = await CountryInvolved.db.find(session, where: (_) => whereClauseCountryInvolved);
  var principalIds = CInvolvedResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByAttInvolvedId(Session session, {List<int>? attInvolvedIds}) async {
  print("Getting principal with attInvolvedIds: $attInvolvedIds");

  if (attInvolvedIds == null || attInvolvedIds.isEmpty) {
    return Future.value([]); // Return empty list if no attInvIds are provided
  }

  // Step 1: Get principalIds from attinvolved using cattIds
  var whereClauseAttsInvolved;
  for (var attInvolvedId in attInvolvedIds) {
    if (whereClauseAttsInvolved == null) {
      whereClauseAttsInvolved = AttsInvolved.t.attId.equals(attInvolvedId);
    } else {
      whereClauseAttsInvolved = whereClauseAttsInvolved | AttsInvolved.t.attId.equals(attInvolvedId);
    }
  }

  var AttInvolvedResults = await AttsInvolved.db.find(session, where: (_) => whereClauseAttsInvolved);
  var principalIds = AttInvolvedResults.map((row) => row.principalId).toList();

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

Future<List<Principal>> getPrincipalByStarsInvolvedId(Session session, {List<int>? starInvolvedIds}) async {
  print("Getting principal with starInvolvedIds: $starInvolvedIds");

  if (starInvolvedIds == null || starInvolvedIds.isEmpty) {
    return Future.value([]); // Return empty list if no starsInvolvedIds are provided
  }

  // Step 1: Get principalIds from starsInvolved using orgIds
  var whereClauseStarsInvolved;
  for (var starInvId in starInvolvedIds) {
    if (whereClauseStarsInvolved == null) {
      whereClauseStarsInvolved = StarsInvolved.t.starId.equals(starInvId);
    } else {
      whereClauseStarsInvolved = whereClauseStarsInvolved | StarsInvolved.t.starId.equals(starInvId);
    }
  }

  var StarsInvolvedResults = await StarsInvolved.db.find(session, where: (_) => whereClauseStarsInvolved);
  var principalIds = StarsInvolvedResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByOrgsId(Session session, {List<int>? orgIds}) async {
  print("Getting principal with orgIds: $orgIds");

  if (orgIds == null || orgIds.isEmpty) {
    return Future.value([]); // Return empty list if no orgIds are provided
  }

  // Step 1: Get principalIds from PrincipalOrganisation using orgIds
  var whereClausePrincipalOrganisations;
  for (var orgId in orgIds) {
    if (whereClausePrincipalOrganisations == null) {
      whereClausePrincipalOrganisations = PrincipalOrgs.t.orgId.equals(orgId);
    } else {
      whereClausePrincipalOrganisations = whereClausePrincipalOrganisations | PrincipalOrgs.t.orgId.equals(orgId);
    }
  }

  var PrincipalOrgsResults = await PrincipalOrgs.db.find(session, where: (_) => whereClausePrincipalOrganisations);
  var principalIds = PrincipalOrgsResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByCategoryId(Session session, {List<int>? categoryIds}) async {
  print("Getting principal with categoryIds: $categoryIds");

  if (categoryIds == null || categoryIds.isEmpty) {
    return Future.value([]); // Return empty list if no categoryIds are provided
  }

  // Step 1: Get principalIds from PrincipalOrganisation using orgIds
  var whereClausePrincipalCategories;
  for (var categoryId in categoryIds) {
    if (whereClausePrincipalCategories == null) {
      whereClausePrincipalCategories = PrincipalCategories.t.categoryId.equals(categoryId);
    } else {
      whereClausePrincipalCategories = whereClausePrincipalCategories | PrincipalCategories.t.categoryId.equals(categoryId);
    }
  }

  var PrincipalCategoriesResults = await PrincipalCategories.db.find(session, where: (_) => whereClausePrincipalCategories);
  var principalIds = PrincipalCategoriesResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

Future<List<Principal>> getPrincipalByTermId(Session session, {List<int>? termIds}) async {
  print("Getting principal with termIds: $termIds");

  if (termIds == null || termIds.isEmpty) {
    return Future.value([]); // Return empty list if no termIds are provided
  }

  // Step 1: Get principalIds from PrincipalTerms using termIds
  var whereClausePrincipalTerms;
  for (var termId in termIds) {
    if (whereClausePrincipalTerms == null) {
      whereClausePrincipalTerms = PrincipalTerms.t.termId.equals(termId);
    } else {
      whereClausePrincipalTerms = whereClausePrincipalTerms | PrincipalTerms.t.termId.equals(termId);
    }
  }

  var PrincipalTermsResults = await PrincipalTerms.db.find(session, where: (_) => whereClausePrincipalTerms);
  var principalIds = PrincipalTermsResults.map((row) => row.principalId).toList();

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.point,
  );
}

///単一user version
Future<List<Principal>> getPrincipalByUserId(Session session, {int? userId}) async {
  print("Getting principal with userId: $userId");

  if (userId == null) {
    return Future.value([]); // Return empty list if no userId is provided
  }

  // Step 1: Get principalIds from PrincipalUser using userId
  var whereClausePrincipalUser = PrincipalUser.t.userId.equals(userId);
  
  var PrincipalUserResults = await PrincipalUser.db.find(session, where: (_) => whereClausePrincipalUser);
  var principalIds = PrincipalUserResults.map((row) => row.principalId).toList();

  if (principalIds.isEmpty) {
    return Future.value([]);
  }

  // Step 2: Get Principals using principalIds
  var whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId); // Assuming the id field in Principal table is named 'id'
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    //orderBy: Principal.t.id,
  );
}

}
