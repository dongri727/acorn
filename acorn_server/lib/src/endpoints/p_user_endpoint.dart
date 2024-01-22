import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalUserEndpoint extends Endpoint {
  ///Selects a junction of principal and a current user from DB
  Future<List<PrincipalUser>> getPUserId(Session session, {int? userId}) async {
    return await PrincipalUser.db.find(
      session,
      orderBy: (principalUser) => principalUser.principalId,
    );
  }

  ///Adds PUser in DB
  Future<void> addPrincipalUser(Session session, PrincipalUser pUser) async {
    await PrincipalUser.db.insertRow(session, pUser);
  }
}
