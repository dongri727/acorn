import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PlacesEndpoint extends Endpoint {
  //Fetch places from DB
  Future<List<Places>> getPlaces(Session session, {String? keyword}) async {
    return await Places.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      orderBy: Places.t.place,
    );
  }

  //Add place in DB
  Future<int> addPlaces(Session session, Places places) async {
    await Places.insert(session, places);
    //var placeLastVal = await session.db.query('SELECT LASTVAL()');
    //return placeLastVal[0][0] as int;
    return places.id!;
  }
}
