import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalUserEndpoint extends Endpoint {
  //Fetch principal-user from DB
  Future<List<PrincipalUser>> getPUserId(Session session, {int? userId}) async {
    return await PrincipalUser.find(
      session,
      orderBy: PrincipalUser.t.principal_id,
    );
  }

  //Add PUser in DB
  Future<int> addPrincipalUser(Session session, PrincipalUser pUser) async {
    await PrincipalUser.insert(session, pUser);
    return pUser.id!;
  }
}
