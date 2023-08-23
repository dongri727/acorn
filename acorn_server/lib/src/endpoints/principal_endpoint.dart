import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PrincipalEndpoint extends Endpoint {
  //Principal

  Future<int> addPrincipal(Session session, Principal principal) async {
    await Principal.insert(session, principal);
    return principal.id!;
  }

/*   Future<List<Principal>> getPrincipal(Session session,
      {String? keyword}) async {
    print("Getting principal with keyword: $keyword");
    return await Principal.find(
      session,
      where: (t) =>
          keyword != null ? t.pays.like('%$keyword%') : Constant(true),
      orderBy: Principal.t.annee,
    );
  } */

  Future<List<Principal>> getPrincipal(Session session,
    {List<String>? keyword}) async {
  print("Getting principal with keywords: $keyword");

  var whereClause;
  if (keyword != null && keyword.isNotEmpty) {
    for (var keyword in keyword) {
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
    where: whereClause,
    orderBy: Principal.t.annee,
  );
}
}
