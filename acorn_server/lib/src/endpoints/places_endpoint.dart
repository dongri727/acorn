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

  ///Adds a new Place and returns all Places
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
}
