import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class UniverseEndpoint extends Endpoint {
  //Fetch universe involved from DB
  Future<List<Universe>> getUniverse(Session session, {String? keyword}) async {
    return await Universe.find(
      session,
      //where: (t) => keyword !=null ? t.universe.like('%$keyword%') : Constant(true),
      orderBy: Universe.t.id,
    );
  }

  //Add universe in DB
  Future<int> addUniverse(Session session, Universe universe) async {
    await Universe.insert(session, universe);
    return universe.id!;
  }
}