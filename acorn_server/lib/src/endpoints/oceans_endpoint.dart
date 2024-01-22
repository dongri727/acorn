import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class OceansEndpoint extends Endpoint {
  ///Fetches all Oceans from DB
  Future<List<Oceans>> getOceans(Session session, {String? keyword}) async {
    return await Oceans.db.find(
      session,
      orderBy: (oceans) => oceans.ocean,
    );
  }

  ///Adds an ocean in DB
  Future<int> addOceans(Session session, Oceans oceans) async {
    var newOcean = await Oceans.db.insertRow(session, oceans);
    var newOceanId = newOcean.id;
    return newOceanId!;
  }
}
