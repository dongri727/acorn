import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalUserEndpoint extends Endpoint {
  //Fetchs principal-user from DB
  Future<List<PrincipalUser>> getPUserId(Session session, {int? userId}) async {
    return await PrincipalUser.db.find(
      session,
      //orderBy: PrincipalUser.t.principalId,
    );
  }

  //Adds PUser in DB
  Future<int> addPrincipalUser(Session session, PrincipalUser pUser) async {
    await PrincipalUser.db.insert(session, pUser as List<PrincipalUser>);
    return pUser.id!;
  }
}
