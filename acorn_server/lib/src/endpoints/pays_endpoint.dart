import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PaysEndpoint extends Endpoint {
  //Fetch pays involved from DB
  Future<List<Pays>> getPays(Session session, {String? keyword}) async {
    return await Pays.find(
      session,
      //where: (t) => keyword !=null ? t.pays.like('%$keyword%') : Constant(true),
      orderBy: Pays.t.pays,
    );
  }

  //Add pays in DB
  Future<int> addPays(Session session, Pays pays) async {
    await Pays.insert(session, pays);
    var paysLastVal = await session.db.query('SELECT LASTVAL()');
    return paysLastVal[0][0] as int;
  }
}