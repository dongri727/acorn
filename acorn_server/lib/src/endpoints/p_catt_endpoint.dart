import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PCattEndpoint extends Endpoint {
  //Fetch principal-Catt from DB
  Future<List<PCatt>> getPCatt(Session session,
      {String? keyword}) async {
    return await PCatt.find(
      session,
      //where: (t) => keyword !=null ? t.pCatt.like('%$keyword%') : Constant(true),
      orderBy: PCatt.t.catt_id,
    );
  }

  //Add PCatt in DB
  Future<int> addPCatt(Session session, PCatt pCatt) async {
    await PCatt.insert(session, pCatt);
    return pCatt.id!;
  }
}