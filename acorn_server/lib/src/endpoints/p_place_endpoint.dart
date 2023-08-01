import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPlaceEndpoint extends Endpoint {
  //Fetch principal-Place from DB
  Future<List<PrincipalPlace>> getPrincipalPlace(Session session,
      {String? keyword}) async {
    return await PrincipalPlace.find(
      session,
      //where: (t) => keyword !=null ? t.principalPlace.like('%$keyword%') : Constant(true),
      orderBy: PrincipalPlace.t.place_id,
    );
  }

  //Add country involved in DB
  Future<int> addPrincipalPlace(Session session, PrincipalPlace principalPlace) async {
    await PrincipalPlace.insert(session, principalPlace);
    return principalPlace.id!;
  }
}