import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithMapEndpoint extends Endpoint {
  //Fetch WithMap from DB
  Future<List<WithMap>> getWithMap(Session session,
      {int? keynumber}) async {
    return await WithMap.find(
      session,
      //where: (t) => keynumber !=null ? t.principal_id.equal('%$keynumber%') : Constant(true),
      orderBy: WithMap.t.principalId,
    );
  }

  //Add a WithMap in DB
  Future<int> addWithMap(Session session, WithMap withMap) async {
    await WithMap.insert(session, withMap);
    return withMap.id!;
  }
}