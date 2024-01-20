import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithMapEndpoint extends Endpoint {
  ///Fetches WithMap from DB
  Future<List<WithMap>> getWithMap(Session session,
      {int? keynumber}) async {
    return await WithMap.db.find(
      session,
      //where: (t) => keynumber !=null ? t.principal_id.equal('%$keynumber%') : Constant(true),
      //orderBy: WithMap.t.principalId,
    );
  }

  //Add a WithMap in DB
  Future<int> addWithMap(Session session, WithMap withMap) async {
    await WithMap.db.insertRow(session, withMap);
    return withMap.id!;
  }
}