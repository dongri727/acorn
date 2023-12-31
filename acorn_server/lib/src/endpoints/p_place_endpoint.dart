import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPlaceEndpoint extends Endpoint {
  //Fetch principal-Place from DB
  Future<List<PrincipalPlace>> getPPlace(Session session,
      {String? keyword}) async {
    return await PrincipalPlace.find(
      session,
      //where: (t) => keyword !=null ? t.pPeople.like('%$keyword%') : Constant(true),
      orderBy: PrincipalPlace.t.place_id,
    );
  }

  //Add Principal place in DB
  Future<int> addPPlace(Session session, PrincipalPlace principalPlace) async {
    await PrincipalPlace.insert(session, principalPlace);
    return principalPlace.id!;
  }

  Future<List<dynamic>> getPPlaceNarrowed(Session session) async {
    var placeInvIds = await session.db
        .query('SELECT DISTINCT place_id FROM principal_place');

    return placeInvIds.map((row) => row[0]).toList();
  }
}
