import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PlacesEndpoint extends Endpoint {
  ///Fetches places from DB
  Future<List<Places>> getPlaces(Session session, {String? keyword}) async {
    return await Places.db.find(
      session,
      where: (t) => keyword !=null ? t.country.equals(keyword) : Constant.bool(true),
      //orderBy: Places.t.place,
    );
  }

  ///Adds place in DB
  Future<int> addPlaces(Session session, Places places) async {
    await Places.db.insertRow(session, places);
    return places.id!;
  }

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
      //orderBy: Places.t.place, 
    );
  }
}
