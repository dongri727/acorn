import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';
//import '../endpoints/c_involved_endpoint.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(
      Session session, Principal principal) async {
    var newPrincipal = await Principal.db.insertRow(session, principal);
    var newId = newPrincipal.id;
    return newId!;
  }

    Future<bool> updatePrincipal(Session session, int id, String newPrecise) async {
    var principal = await Principal.db.findById(session, id);
    if (principal == null) {
      return false; // IDに対応するレコードが見つからない場合
    }
    principal.precise = newPrecise;
    var updatedPrincipal = await Principal.db.updateRow(session, principal);
    return updatedPrincipal != null; // 更新が成功した場合はtrueを返す
  }

  Future<Principal> updatePrincipalAndReturn(Session session, int id, String newPrecise) async {
  var principal = await Principal.db.findById(session, id);
  if (principal == null) {
    throw Exception('Principal not found'); // IDに対応するレコードが見つからない場合は例外を投げる
  }
  principal.precise = newPrecise;
  var updatedPrincipal = await Principal.db.updateRow(session, principal);
  if (updatedPrincipal == null) {
    throw Exception('Failed to update principal'); // 更新が失敗した場合は例外を投げる
  }

      // 更新が成功した場合は、更新されたレコードを取得して返す
    var updatedRecord = await Principal.db.findById(session, id);
    if (updatedRecord == null) {
      throw Exception('Failed to fetch updated principal'); // 更新後にレコードが取得できない場合
    }

    return updatedRecord;
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
    return await getPrincipalsByIds(session, principalIds);
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
    return await getPrincipalsByIds(session, principalIds);
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
    return await getPrincipalsByIds(session, principalIds);
  }

  ///Get list-principal using country-involved-id
  Future<List<Principal>> getPrincipalByCInvolvedId(Session session,
      {List<int>? cInvolvedIds}) async {
    print("Getting principal with cInvolvedIds: $cInvolvedIds");

    if (cInvolvedIds == null || cInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no pattIds are provided
    }

    // Step 1: Get principalIds from TableA using cattIds
    //var principalIds = await countryInvolvedEndpoint.getPrincipalIdsByCInvolvedIds(session, cInvolvedIds: cInvolvedIds);

    dynamic whereClauseCountryInvolved;
    for (var cInvolvedId in cInvolvedIds) {
      if (whereClauseCountryInvolved == null) {
        whereClauseCountryInvolved =
            CountryInvolved.t.paysId.equals(cInvolvedId);
      } else {
        whereClauseCountryInvolved = whereClauseCountryInvolved |
            CountryInvolved.t.paysId.equals(cInvolvedId);
      }
    }

    var cInvolvedResults = await CountryInvolved.db
        .find(session, where: (_) => whereClauseCountryInvolved);
    var principalIds = cInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

   Future<List<Principal>> getPrincipalByPInvolvedId(Session session,
      {List<int>? pInvolvedIds}) async {
    print("Getting principal with pInvolvedIds: $pInvolvedIds");

    if (pInvolvedIds == null || pInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no pattIds are provided
    }

    // Step 1: Get principalIds from TableA using cattIds
    dynamic whereClausePlaceInvolved;
    for (var pInvolvedId in pInvolvedIds) {
      if (whereClausePlaceInvolved == null) {
        whereClausePlaceInvolved =
            PlaceInvolved.t.placeId.equals(pInvolvedId);
      } else {
        whereClausePlaceInvolved = whereClausePlaceInvolved |
            PlaceInvolved.t.placeId.equals(pInvolvedId);
      }
    }

    var pInvolvedResults = await PlaceInvolved.db
        .find(session, where: (_) => whereClausePlaceInvolved);
    var principalIds = pInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  Future<List<Principal>> getPrincipalByCattInvolvedId(Session session,
      {List<int>? cattInvolvedIds}) async {
    print("Getting principal with cattInvolvedIds: $cattInvolvedIds");

    if (cattInvolvedIds == null || cattInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no cattInvIds are provided
    }

    // Step 1: Get principalIds from attinvolved using cattIds
    dynamic whereClauseCattsInvolved;
    for (var cattInvolvedId in cattInvolvedIds) {
      if (whereClauseCattsInvolved == null) {
        whereClauseCattsInvolved = CattsInvolved.t.cattId.equals(cattInvolvedId);
      } else {
        whereClauseCattsInvolved = whereClauseCattsInvolved |
            CattsInvolved.t.cattId.equals(cattInvolvedId);
      }
    }

    var cattInvolvedResults = await CattsInvolved.db
        .find(session, where: (_) => whereClauseCattsInvolved);
    var principalIds =
        cattInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

    Future<List<Principal>> getPrincipalByPattInvolvedId(Session session,
      {List<int>? pattInvolvedIds}) async {
    print("Getting principal with pattInvolvedIds: $pattInvolvedIds");

    if (pattInvolvedIds == null || pattInvolvedIds.isEmpty) {
      return Future.value([]); // Return empty list if no pattInvIds are provided
    }

    // Step 1: Get principalIds from attinvolved using pattIds
    dynamic whereClausePattsInvolved;
    for (var pattInvolvedId in pattInvolvedIds) {
      if (whereClausePattsInvolved == null) {
        whereClausePattsInvolved = CattsInvolved.t.cattId.equals(pattInvolvedId);
      } else {
        whereClausePattsInvolved = whereClausePattsInvolved |
            PattsInvolved.t.pattId.equals(pattInvolvedId);
      }
    }

    var pattInvolvedResults = await PattsInvolved.db
        .find(session, where: (_) => whereClausePattsInvolved);
    var principalIds =
        pattInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  Future<List<Principal>> getPrincipalByStarsInvolvedId(Session session,
      {List<int>? starInvolvedIds}) async {
    print("Getting principal with starInvolvedIds: $starInvolvedIds");

    if (starInvolvedIds == null || starInvolvedIds.isEmpty) {
      return Future.value(
          []); // Return empty list if no starsInvolvedIds are provided
    }

    // Step 1: Get principalIds from starsInvolved using orgIds
    dynamic whereClauseStarsInvolved;
    for (var starInvId in starInvolvedIds) {
      if (whereClauseStarsInvolved == null) {
        whereClauseStarsInvolved = StarsInvolved.t.starId.equals(starInvId);
      } else {
        whereClauseStarsInvolved =
            whereClauseStarsInvolved | StarsInvolved.t.starId.equals(starInvId);
      }
    }

    var starsInvolvedResults = await StarsInvolved.db
        .find(session, where: (_) => whereClauseStarsInvolved);
    var principalIds =
        starsInvolvedResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  Future<List<Principal>> getPrincipalByOrgsId(Session session,
      {List<int>? orgIds}) async {
    print("Getting principal with orgIds: $orgIds");

    if (orgIds == null || orgIds.isEmpty) {
      return Future.value([]); // Return empty list if no orgIds are provided
    }

    // Step 1: Get principalIds from PrincipalOrganisation using orgIds
    dynamic whereClausePrincipalOrganisations;
    for (var orgId in orgIds) {
      if (whereClausePrincipalOrganisations == null) {
        whereClausePrincipalOrganisations = PrincipalOrgs.t.orgId.equals(orgId);
      } else {
        whereClausePrincipalOrganisations = whereClausePrincipalOrganisations |
            PrincipalOrgs.t.orgId.equals(orgId);
      }
    }

    var principalOrgsResults = await PrincipalOrgs.db
        .find(session, where: (_) => whereClausePrincipalOrganisations);
    var principalIds =
        principalOrgsResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  Future<List<Principal>> getPrincipalByCategoryId(Session session,
      {List<int>? categoryIds}) async {
    print("Getting principal with categoryIds: $categoryIds");

    if (categoryIds == null || categoryIds.isEmpty) {
      return Future.value(
          []); // Return empty list if no categoryIds are provided
    }

    // Step 1: Get principalIds from PrincipalOrganisation using orgIds
    dynamic whereClausePrincipalCategories;
    for (var categoryId in categoryIds) {
      if (whereClausePrincipalCategories == null) {
        whereClausePrincipalCategories =
            PrincipalCategories.t.categoryId.equals(categoryId);
      } else {
        whereClausePrincipalCategories = whereClausePrincipalCategories |
            PrincipalCategories.t.categoryId.equals(categoryId);
      }
    }

    var principalCategoriesResults = await PrincipalCategories.db
        .find(session, where: (_) => whereClausePrincipalCategories);
    var principalIds =
        principalCategoriesResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  Future<List<Principal>> getPrincipalByTermId(Session session,
      {List<int>? termIds}) async {
    print("Getting principal with termIds: $termIds");

    if (termIds == null || termIds.isEmpty) {
      return Future.value([]); // Return empty list if no termIds are provided
    }

    // Step 1: Get principalIds from PrincipalTerms using termIds
    dynamic whereClausePrincipalTerms;
    for (var termId in termIds) {
      if (whereClausePrincipalTerms == null) {
        whereClausePrincipalTerms = PrincipalTerms.t.termId.equals(termId);
      } else {
        whereClausePrincipalTerms =
            whereClausePrincipalTerms | PrincipalTerms.t.termId.equals(termId);
      }
    }

    var principalTermsResults = await PrincipalTerms.db
        .find(session, where: (_) => whereClausePrincipalTerms);
    var principalIds =
        principalTermsResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
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

    var principalUserResults = await PrincipalUser.db
        .find(session, where: (_) => whereClausePrincipalUser);
    var principalIds =
        principalUserResults.map((row) => row.principalId).toList();

    if (principalIds.isEmpty) {
      return Future.value([]);
    }

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  ///get principal by DetailIds
  Future<List<Principal>> getPrincipalByDetailIds(Session session,
      {List<int>? detailIds}) async {
    print("Getting principal with termIds: $detailIds");

    if (detailIds == null || detailIds.isEmpty) {
      return Future.value([]); // Return empty list if no detailIds are provided
    }

    // Step 1: Get principalIds from PrincipalDetail using detailIds
    dynamic whereClausePrincipalDetail;
    for (var detailId in detailIds) {
      if (whereClausePrincipalDetail == null) {
        whereClausePrincipalDetail = PrincipalDetail.t.detailId.equals(detailId);
      } else {
        whereClausePrincipalDetail =
            whereClausePrincipalDetail | PrincipalTerms.t.termId.equals(detailId);
      }
    }

    var principalDetailResults = await PrincipalDetail.db
        .find(session, where: (_) => whereClausePrincipalDetail);
    var principalIds =
        principalDetailResults.map((row) => row.principalId).toList();

    // Step 2: Get Principals using principalIds
    return await getPrincipalsByIds(session, principalIds);
  }

  ///二段階検索共通第２Step
  Future<List<Principal>> getPrincipalsByIds(Session session, List<int> principalIds) async {
  if (principalIds.isEmpty) {
    return Future.value([]); // 空のIDリストが与えられた場合は、空のリストを返します。
  }

  dynamic whereClausePrincipal;
  for (var principalId in principalIds) {
    if (whereClausePrincipal == null) {
      whereClausePrincipal = Principal.t.id.equals(principalId);
    } else {
      whereClausePrincipal = whereClausePrincipal | Principal.t.id.equals(principalId);
    }
  }

  return await Principal.db.find(
    session,
    where: (_) => whereClausePrincipal,
    orderBy: (principal) => principal.point,
  );
}

}




