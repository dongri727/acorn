import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class OceansEndpoint extends Endpoint {
  //Fetch Oceans from DB
  Future<List<Oceans>> getOceans(Session session, {String? keyword}) async {
    return await Oceans.db.find(
      session,
      //where: (t) => keyword !=null ? t.oceans.like('%$keyword%') : Constant(true),
      //orderBy: Oceans.t.ocean,
    );
  }

  //Add sea in DB
  Future<int> addOceans(Session session, Oceans oceans) async {
    await Oceans.db.insert(session, oceans as List<Oceans>);
    return oceans.id!;
  }
}
