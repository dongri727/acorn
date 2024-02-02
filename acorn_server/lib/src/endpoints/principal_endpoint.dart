import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(
      Session session, Principal principal) async {
    var newPrincipal = await Principal.db.insertRow(session, principal);
    var newId = newPrincipal.id;
    return newId!;
  }

  Future<List<Principal>> getPrincipal(Session session,
      {List<String>? keywords}) async {
    print("Getting principal with keywords: $keywords");

    dynamic ouSeTrouve;
    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (ouSeTrouve == null) {
          ouSeTrouve = Principal.t.location.like('%$keyword%');
        } else {
          ouSeTrouve = ouSeTrouve | Principal.t.location.like('%$keyword%');
        }
      }
    } else {
      ouSeTrouve = Constant.bool(true);
    }

    return await Principal.db.find(
      session,
      where: (_) => ouSeTrouve,
      orderBy: (principal) => principal.point,
    );
  }

  Future<List<Principal>> getPrincipalByPeriod(Session session,
      {List<String>? keywords}) async {
    print("Getting principal with keywords: $keywords");

    dynamic quellePeriod;
    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (quellePeriod == null) {
          quellePeriod = Principal.t.period.equals(keyword);
        } else {
          quellePeriod = quellePeriod | Principal.t.period.equals(keyword);
        }
      }
    } else {
      quellePeriod = Constant.bool(true);
    }

    return await Principal.db.find(
      session,
      where: (_) => quellePeriod,
      orderBy: (principal) => principal.point,
      orderDescending: false,
    );
  }

  Future<List<Principal>> getPrincipalByPrecise(Session session,
      {List<String>? keywords}) async {
    print("Getting principal with placeIds: $keywords");

    dynamic ouPrecise;

    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (ouPrecise == null) {
          ouPrecise = Principal.t.precise.like('%$keyword%');
        } else {
          ouPrecise = ouPrecise | Principal.t.precise.like('%$keyword%');
        }
      }
    } else {
      ouPrecise = Constant.bool(true);
    }

    return await Principal.db.find(
      session,
      where: (_) => ouPrecise,
      orderBy: (principal) => principal.point,
    );
  }

  

  Future<List<Principal>> getPrincipalByCattId(Session session,
      {List<int>? cattIds}) async {

    if (cattIds == null || cattIds.isEmpty) {
      return Future.value([]); // Return empty list if no cattIds are provided
    }

    // Step 1: Get principalIds from TablePCatt using cattIds
    dynamic junctionPCatt;
    for (var cattId in cattIds) {
      if (junctionPCatt == null) {
        junctionPCatt = PrincipalCatt.t.cattId.equals(cattId);
      } else {
        junctionPCatt =
            junctionPCatt | PrincipalCatt.t.cattId.equals(cattId);
      }
    }

    dynamic pCattResults = await PrincipalCatt.db.find(session,
        where: (_) => junctionPCatt);
    var principalIds =
        pCattResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    dynamic selectedPrincipal;
    for (var principalId in principalIds) {
      if (selectedPrincipal == null) {
        selectedPrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        selectedPrincipal =
            selectedPrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => selectedPrincipal,
      orderBy: (principal) => principal.point,
    );
  }

  Future<List<Principal>> getPrincipalByPattId(Session session,
      {List<int>? pattIds}) async {

    if (pattIds == null || pattIds.isEmpty) {
      return Future.value([]); // Return empty list if no pattIds are provided
    }

    // Step 1: Get principalIds from TablePPatt using pattIds
    dynamic junctionPPatt;
    for (var pattId in pattIds) {
      if (junctionPPatt == null) {
        junctionPPatt = PrincipalPatt.t.pattId.equals(pattId);
      } else {
        junctionPPatt =
            junctionPPatt | PrincipalPatt.t.pattId.equals(pattId);
      }
    }

    dynamic pPattResults = await PrincipalPatt.db.find(session,
        where: (_) => junctionPPatt);
    var principalIds =
        pPattResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    dynamic selectedPrincipal;
    for (var principalId in principalIds) {
      if (selectedPrincipal == null) {
        selectedPrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        selectedPrincipal =
            selectedPrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => selectedPrincipal,
      orderBy: (principal) => principal.point,
    );
  }

  Future<List<Principal>> getPrincipalByPersonId(Session session,
      {List<int>? personIds}) async {

    if (personIds == null || personIds.isEmpty) {
      return Future.value([]); // Return empty list if no personIds are provided
    }

    // Step 1: Get principalIds from PrincipalPeople using personIds
    dynamic junctionPPeople;
    for (var personId in personIds) {
      if (junctionPPeople == null) {
        junctionPPeople =
            PrincipalPeople.t.personId.equals(personId);
      } else {
        junctionPPeople = junctionPPeople |
            PrincipalPeople.t.personId.equals(personId);
      }
    }

    dynamic pPeopleResults = await PrincipalPeople.db
        .find(session, where: (_) => junctionPPeople);
    var principalIds =
        pPeopleResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    dynamic selectedPrincipal;
    for (var principalId in principalIds) {
      if (selectedPrincipal == null) {
        selectedPrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        selectedPrincipal =
            selectedPrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => selectedPrincipal,
      orderBy: (principal) => principal.point,
    );
  }

  Future<List<Principal>> getPrincipalByCInvolvedId(Session session,
      {List<int>? cInvolvedIds}) async {
    print("Getting principal with cInvolvedIds: $cInvolvedIds");

    if (cInvolvedIds == null || cInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no pattIds are provided
    }

    // Step 1: Get principalIds from TableA using cattIds
    var whereClauseCountryInvolved;
    for (var cInvolvedId in cInvolvedIds) {
      if (whereClauseCountryInvolved == null) {
        whereClauseCountryInvolved =
            CountryInvolved.t.paysId.equals(cInvolvedId);
      } else {
        whereClauseCountryInvolved = whereClauseCountryInvolved |
            CountryInvolved.t.paysId.equals(cInvolvedId);
      }
    }

    var CInvolvedResults = await CountryInvolved.db
        .find(session, where: (_) => whereClauseCountryInvolved);
    var principalIds = CInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      //orderBy: Principal.t.point,
    );
  }

  Future<List<Principal>> getPrincipalByAttInvolvedId(Session session,
      {List<int>? cattInvolvedIds}) async {
    print("Getting principal with attInvolvedIds: $cattInvolvedIds");

    if (cattInvolvedIds == null || cattInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no attInvIds are provided
    }

    // Step 1: Get principalIds from attinvolved using cattIds
    var whereClauseCattsInvolved;
    for (var cattInvolvedId in cattInvolvedIds) {
      if (whereClauseCattsInvolved == null) {
        whereClauseCattsInvolved = CattsInvolved.t.cattId.equals(cattInvolvedId);
      } else {
        whereClauseCattsInvolved = whereClauseCattsInvolved |
            CattsInvolved.t.cattId.equals(cattInvolvedId);
      }
    }

    var CattInvolvedResults = await CattsInvolved.db
        .find(session, where: (_) => whereClauseCattsInvolved);
    var principalIds =
        CattInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      orderBy: (principal) => principal.point,
    );
  }

  Future<List<Principal>> getPrincipalByStarsInvolvedId(Session session,
      {List<int>? starInvolvedIds}) async {
    print("Getting principal with starInvolvedIds: $starInvolvedIds");

    if (starInvolvedIds == null || starInvolvedIds.isEmpty) {
      return Future.value(
          []); // Return empty list if no starsInvolvedIds are provided
    }

    // Step 1: Get principalIds from starsInvolved using orgIds
    var whereClauseStarsInvolved;
    for (var starInvId in starInvolvedIds) {
      if (whereClauseStarsInvolved == null) {
        whereClauseStarsInvolved = StarsInvolved.t.starId.equals(starInvId);
      } else {
        whereClauseStarsInvolved =
            whereClauseStarsInvolved | StarsInvolved.t.starId.equals(starInvId);
      }
    }

    var StarsInvolvedResults = await StarsInvolved.db
        .find(session, where: (_) => whereClauseStarsInvolved);
    var principalIds =
        StarsInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      //orderBy: Principal.t.point,
    );
  }

  Future<List<Principal>> getPrincipalByOrgsId(Session session,
      {List<int>? orgIds}) async {
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
        whereClausePrincipalOrganisations = whereClausePrincipalOrganisations |
            PrincipalOrgs.t.orgId.equals(orgId);
      }
    }

    var PrincipalOrgsResults = await PrincipalOrgs.db
        .find(session, where: (_) => whereClausePrincipalOrganisations);
    var principalIds =
        PrincipalOrgsResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      //orderBy: Principal.t.point,
    );
  }

  Future<List<Principal>> getPrincipalByCategoryId(Session session,
      {List<int>? categoryIds}) async {
    print("Getting principal with categoryIds: $categoryIds");

    if (categoryIds == null || categoryIds.isEmpty) {
      return Future.value(
          []); // Return empty list if no categoryIds are provided
    }

    // Step 1: Get principalIds from PrincipalOrganisation using orgIds
    var whereClausePrincipalCategories;
    for (var categoryId in categoryIds) {
      if (whereClausePrincipalCategories == null) {
        whereClausePrincipalCategories =
            PrincipalCategories.t.categoryId.equals(categoryId);
      } else {
        whereClausePrincipalCategories = whereClausePrincipalCategories |
            PrincipalCategories.t.categoryId.equals(categoryId);
      }
    }

    var PrincipalCategoriesResults = await PrincipalCategories.db
        .find(session, where: (_) => whereClausePrincipalCategories);
    var principalIds =
        PrincipalCategoriesResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      //orderBy: Principal.t.point,
    );
  }

  Future<List<Principal>> getPrincipalByTermId(Session session,
      {List<int>? termIds}) async {
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
        whereClausePrincipalTerms =
            whereClausePrincipalTerms | PrincipalTerms.t.termId.equals(termId);
      }
    }

    var PrincipalTermsResults = await PrincipalTerms.db
        .find(session, where: (_) => whereClausePrincipalTerms);
    var principalIds =
        PrincipalTermsResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      //orderBy: Principal.t.point,
    );
  }

  ///単一user version
  Future<List<Principal>> getPrincipalByUserId(Session session,
      {int? userId}) async {
    print("Getting principal with userId: $userId");

    if (userId == null) {
      return Future.value([]); // Return empty list if no userId is provided
    }

    // Step 1: Get principalIds from PrincipalUser using userId
    var whereClausePrincipalUser = PrincipalUser.t.userId.equals(userId);

    var PrincipalUserResults = await PrincipalUser.db
        .find(session, where: (_) => whereClausePrincipalUser);
    var principalIds =
        PrincipalUserResults.map((row) => row.principalId).toList();

    if (principalIds.isEmpty) {
      return Future.value([]);
    }

    // Step 2: Get Principals using principalIds
    var whereClausePrincipal;
    for (var principalId in principalIds) {
      if (whereClausePrincipal == null) {
        whereClausePrincipal = Principal.t.id.equals(
            principalId); // Assuming the id field in Principal table is named 'id'
      } else {
        whereClausePrincipal =
            whereClausePrincipal | Principal.t.id.equals(principalId);
      }
    }

    return await Principal.db.find(
      session,
      where: (_) => whereClausePrincipal,
      //orderBy: Principal.t.id,
    );
  }
}
