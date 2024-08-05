import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StarsEndpoint extends Endpoint {
  ///Fetches all Stars from DB
  Future<List<Stars>> getStars(Session session, {String? keyword}) async {
    return await Stars.db.find(
      session,
      where: (t) =>
          keyword != null ? t.area.equals(keyword) : Constant.bool(true),
      orderBy: (stars) => stars.id,
    );
  }

  //Adds a star in DB
  Future<void> addStars(Session session, Stars stars) async {
    await Stars.db.insertRow(session, stars);
  }

  ///Adds a new Star and returns all Stars
  Future<List<Stars>> addAndReturnStars(Session session, Stars stars) async {
    await Stars.db.insertRow(session, stars);
    var allStars = await Stars.db.find(
      session,
      orderBy: (stars) => stars.id,
      //To maintain the order of the solar system, the entire List is managed by Id
    );
    return allStars;
  }

  ///Fetches selected stars involved with principalId
  Future<List<Stars>> getStarsByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get starIds from stars-involved using principalId
    var whereClauseStarsInvolved =
        StarsInvolved.t.principalId.equals(principalId);

    var starsInvolvedResults = await StarsInvolved.db
        .find(session, where: (_) => whereClauseStarsInvolved);
    var starIds = starsInvolvedResults.map((row) => row.starId).toList();

    if (starIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Stars using paysIds
    return await getStarsByIds(session, starIds);
  }

  Future<List<Stars>> getStarsByIds(Session session, List<int> starIds) async {
    if (starIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClauseStars;
    for (var starId in starIds) {
      if (whereClauseStars == null) {
        whereClauseStars = Stars.t.id.equals(starId);
      } else {
        whereClauseStars = whereClauseStars | Stars.t.id.equals(starId);
      }
    }
    return await Stars.db.find(
      session,
      where: (_) => whereClauseStars,
      orderBy: (stars) => stars.star,
    );
  }

  Future<List<Stars>> addAndReturnStarsWithKeyArea(
      Session session, Stars stars, String keyword) async {
    await Stars.db.insertRow(session, stars);
    var allStarsWithKeyArea = await Stars.db.find(
      session,
      where: (t) => t.area.equals(keyword),
      orderBy: (stars) => stars.id,
    );
    return allStarsWithKeyArea;
  }
}
