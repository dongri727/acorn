import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PlacesEndpoint extends Endpoint {
  ///Fetches places belonging to the destinated country
  Future<List<Places>> getPlaces(Session session, {String? keyword}) async {
    return await Places.db.find(
      session,
      where: (t) =>
          keyword != null ? t.country.equals(keyword) : Constant.bool(true),
      orderBy: (places) => places.place,
      orderDescending: false,
    );
  }

  ///Adds place in DB 
  Future<void> addPlaces(Session session, Places places) async {
    await Places.db.insertRow(session, places);
  }

  ///Adds a new Place and returns all Places
  Future<List<Places>> addAndReturnPlaces(
      Session session, Places places) async {
    await Places.db.insertRow(session, places);
    var allPlaces = await Places.db.find(
      session,
      orderBy: (places) => places.place,
    );
    return allPlaces;
  }

  ///Adds a new Place and returns Places in the same country
  Future<List<Places>> addAndReturnPlacesWithKeyCountry(
      Session session, Places places, String keyword) async {
    await Places.db.insertRow(session, places);
    var allPlacesWithKeyCountry = await Places.db.find(
      session,
      where: (t) => t.country.equals(keyword),
      orderBy: (places) => places.place,
    );
    return allPlacesWithKeyCountry;
  }

  ///
  Future<List<Places>> getPlacesInv(Session session,
      {List<dynamic>? placeInvIds}) async {
    print("Getting places with keynumbers: $placeInvIds");

    var whereClause;
    if (placeInvIds != null && placeInvIds.isNotEmpty) {
      for (var placeInvId in placeInvIds) {
        if (whereClause == null) {
          whereClause = Places.t.id.equals(placeInvId);
        } else {
          whereClause = whereClause | Places.t.id.equals(placeInvId);
        }
      }
    } else {
      whereClause = Constant.bool(true);
    }

    return await Places.db.find(
      session,
      where: (_) => whereClause,
      orderBy: (places) => places.place,
    );
  }

  ///Fetches selected place involved with principalId
  Future<List<Places>> getPlacesByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get paysIds from country-involved using principalId
    var whereClausePlaceInvolved =
        PlaceInvolved.t.principalId.equals(principalId);

    var placeInvolvedResults = await PlaceInvolved.db
        .find(session, where: (_) => whereClausePlaceInvolved);
    var placeIds =
        placeInvolvedResults.map((row) => row.placeId).toList();

    if (placeIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Pays using paysIds
    return await getPlacesByIds(session, placeIds);
  }

  Future<List<Places>> getPlacesByIds(
      Session session, List<int> placeIds) async {
    if (placeIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClausePlaces;
    for (var placeId in placeIds) {
      if (whereClausePlaces == null) {
        whereClausePlaces = Places.t.id.equals(placeId);
      } else {
        whereClausePlaces =
            whereClausePlaces | Places.t.id.equals(placeId);
      }
    }
    return await Places.db.find(
      session,
      where: (_) => whereClausePlaces,
      orderBy: (places) => places.place,
    );
  }
}
