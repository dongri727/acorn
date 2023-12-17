import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithMapEndpoint extends Endpoint {
  //Fetch WithMap from DB
  Future<List<WithMap>> getWithMap(Session session,
      {int? keynumber}) async {
    return await WithMap.find(
      session,
      //where: (t) => keynumber !=null ? t.principal_id.equal('%$keynumber%') : Constant(true),
      orderBy: WithMap.t.principal_id,
    );
  }

  //Add a WithMap in DB
  Future<int> addWithMap(Session session, WithMap withMap) async {
    await WithMap.insert(session, withMap);
    //var localdateLastVal = await session.db.query('SELECT LASTVAL()');
    //return localdateLastVal[0][0] as int;
    return withMap.id!;
  }
}