import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class StarsEndpoint extends Endpoint {
  //Fetch Stars from DB
  Future<List<Stars>> getStars(Session session, {String? keyword}) async {
    return await Stars.find(
      session,
      //where: (t) => keyword !=null ? t.stars.like('%$keyword%') : Constant(true),
      orderBy: Stars.t.star,
    );
  }

  //Add star in DB
  Future<int> addStars(Session session, Stars stars) async {
    await Stars.insert(session, stars);
    return stars.id!;
  }
}
