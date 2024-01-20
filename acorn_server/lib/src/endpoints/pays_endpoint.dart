import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PaysEndpoint extends Endpoint {
  ///Fetches pays involved from DB
  Future<List<Pays>> getPays(Session session, {String? keyword}) async {
    return await Pays.db.find(
      session,
      where: (t) => keyword !=null ? t.pays.like('%$keyword%') : Constant.bool(true),
      //orderBy: Pays.t.pays,
    );
  }

  ///Adds pays in DB
  Future<int> addPays(Session session, Pays pays) async {
    await Pays.db.insertRow(session, pays);
    return pays.id!;
  }
}
