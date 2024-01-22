import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class UniverseEndpoint extends Endpoint {
  ///Fetches all universe from DB
  Future<List<Universe>> getUniverse(Session session, {String? keyword}) async {
    return await Universe.db.find(
      session,
      orderBy: (universe) => universe.id,
    );
  }

  ///Adds universe in DB
  Future<void> addUniverse(Session session, Universe universe) async {
    await Universe.db.insertRow(session, universe);
  }
}