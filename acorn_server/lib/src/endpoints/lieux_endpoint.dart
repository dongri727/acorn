import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class LieuxEndpoint extends Endpoint {
  //Fetch lieux from DB
  Future<List<Lieux>> getLieux(Session session, {String? keyword}) async {
    return await Lieux.db.find(
      session,
      //where: (t) => keyword !=null ? t.latitude.like('%$keyword%') : Constant(true),
      //orderBy: Lieux.t.latitude,
    );
  }

  //Add lieux in DB
  Future<int> addLieux(Session session, Lieux lieux) async {
    await Lieux.db.insert(session, lieux as List<Lieux>);
    //var lieuLastVal = await session.db.query('SELECT LASTVAL()');
    //return lieuLastVal[0][0] as int;
    return lieux.id!;
  }
}
