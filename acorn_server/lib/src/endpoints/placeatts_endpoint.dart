import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PlaceattsEndpoint extends Endpoint {
  //Fetch places from DB
  Future<List<Placeatts>> getPlaceATTs(Session session, {String? keyword}) async {
    return await Placeatts.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      orderBy: Placeatts.t.placeatt,
    );
  }

  //Add place in DB
  Future<int> addPlaceATTs(Session session, Placeatts placeatts) async {
    await Placeatts.insert(session, placeatts);
    var placeattsLastVal = await session.db.query('SELECT LASTVAL()');
    return placeattsLastVal[0][0] as int;
  }
}