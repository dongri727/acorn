import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PaysEndpoint extends Endpoint {
  ///Fetches all countries from DB
  Future<List<Pays>> getPays(Session session, {String? keyword}) async {
    return await Pays.db.find(
      session,
      orderBy: (pays) => pays.pays,
    );
  }

  ///Adds a new country when it is certified by the United Nations.
  Future<int> addPays(Session session, Pays pays) async {
    await Pays.db.insertRow(session, pays);
    return pays.id!;
  }
}
