import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SeasEndpoint extends Endpoint {
  //Fetch seas from DB
  Future<List<Seas>> getSeas(Session session, {String? keyword}) async {
    return await Seas.db.find(
      session,
      //where: (t) => keyword !=null ? t.seas.like('%$keyword%') : Constant(true),
      //orderBy: Seas.t.sea,
    );
  }

  //Add sea in DB
  Future<int> addSeas(Session session, Seas seas) async {
    await Seas.db.insert(session, seas as List<Seas>);
    return seas.id!;
  }
}
