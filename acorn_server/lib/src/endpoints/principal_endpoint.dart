import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(Session session, Principal principal) async {
    await Principal.insert(session, principal);
    return principal.id!;
  }

  Future<List<Principal>> getPrincipal(Session session,
      {List<String>? keywords}) async {
    print("Getting principal with keywords: $keywords");

    var whereClause;
    if (keywords != null && keywords.isNotEmpty) {
      for (var keyword in keywords) {
        if (whereClause == null) {
          whereClause = Principal.t.pays.like('%$keyword%');
        } else {
          whereClause = whereClause | Principal.t.pays.like('%$keyword%');
        }
      }
    } else {
      whereClause = Constant(true);
    }

    return await Principal.find(
      session,
      where: (_) => whereClause,
      orderBy: Principal.t.annee,
    );
  }
}
