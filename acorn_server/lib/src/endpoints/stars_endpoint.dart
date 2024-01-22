import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StarsEndpoint extends Endpoint {
  ///Fetches all Stars from DB
  Future<List<Stars>> getStars(Session session, {String? keyword}) async {
    return await Stars.db.find(
      session,
      orderBy: (stars) => stars.id,
    );
  }

  //Adds a star in DB
  Future<void> addStars(Session session, Stars stars) async {
    await Stars.db.insertRow(session, stars);
  }
}
