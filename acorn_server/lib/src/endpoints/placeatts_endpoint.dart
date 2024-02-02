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
}
