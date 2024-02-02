import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SeasEndpoint extends Endpoint {
  ///Fetches all seas from DB
  Future<List<Seas>> getSeas(Session session, {String? keyword}) async {
    return await Seas.db.find(
      session,
      orderBy: (seas) => seas.sea,
    );
  }

  ///Adds a sea in DB
  Future<void> addSeas(Session session, Seas seas) async {
    await Seas.db.insertRow(session, seas);
  }

  ///Adds a new Sea and returns all Seas
  Future<List<Seas>> addAndReturnSeas(
      Session session, Seas seas) async {
    await Seas.db.insertRow(session, seas);
    var allSeas = await Seas.db.find(
      session,
      orderBy: (seas) => seas.sea,
    );
    return allSeas;
  }
}
