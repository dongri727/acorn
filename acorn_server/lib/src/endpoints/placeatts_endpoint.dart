import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PlaceattsEndpoint extends Endpoint {
  ///Fetches places from DB
  Future<List<Placeatts>> getPlaceATTs(Session session,
      {String? keyword}) async {
    return await Placeatts.db.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      //orderBy: Placeatts.t.placeatt,
    );
  }

  ///Adds place in DB
  Future<int> addPlaceATTs(Session session, Placeatts placeatts) async {
    await Placeatts.db.insertRow(session, placeatts);
    return placeatts.id!;
  }
}
