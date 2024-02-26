import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PlaceInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of places-involved from DB
  Future<List<PlaceInvolved>> getPInvolved(Session session,
      {int? keynumber}) async {
    return await PlaceInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.placeId.equals(keynumber) : Constant.bool(true),
      orderBy: (placeInvolved) => placeInvolved.principalId,
    );
  }

  ///Adds a junction of country involved in DB
  Future<void> addPInvolved(Session session, PlaceInvolved pInvolved) async {
    await PlaceInvolved.db.insertRow(session, pInvolved);
  }
}