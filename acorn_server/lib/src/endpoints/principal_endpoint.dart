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

  Future<List<Principal>> getPrincipalByPlaces(Session session, {List<int>? keynumbers}) async {
    print("Getting principal with placeIds: $keynumbers");

    var whereClause;

    if (keynumbers != null && keynumbers.isNotEmpty) {
      for (var keynumber in keynumbers) {
        if (whereClause == null) {
          whereClause = Principal.t.placeId.equals(keynumber);
        } else {
          whereClause = whereClause | Principal.t.placeId.equals(keynumber);
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

  Future<List<Principal>> getPrincipalByCatt(Session session, {List<int>? keynumbers}) async {
    print("Getting principal with cattIds: $keynumbers");

    var whereClause;

    if (keynumbers != null && keynumbers.isNotEmpty) {
      for (var keynumber in keynumbers) {
        if (whereClause == null) {
          whereClause = Principal.t.cattId.equals(keynumber);
        } else {
          whereClause = whereClause | Principal.t.cattId.equals(keynumber);
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

  Future<List<Principal>> getPrincipalByPatt(Session session, {List<int>? keynumbers}) async {
    print("Getting principal with pattIds: $keynumbers");

    var whereClause;

    if (keynumbers != null && keynumbers.isNotEmpty) {
      for (var keynumber in keynumbers) {
        if (whereClause == null) {
          whereClause = Principal.t.pattId.equals(keynumber);
        } else {
          whereClause = whereClause | Principal.t.pattId.equals(keynumber);
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

  Future<List<Principal>> getPrincipalByCategory(Session session, {List<int>? keynumbers}) async {
    print("Getting principal with categoryId: $keynumbers");

    var whereClause;

    if (keynumbers != null && keynumbers.isNotEmpty) {
      for (var keynumber in keynumbers) {
        if (whereClause == null) {
          whereClause = Principal.t.categoryId.equals(keynumber);
        } else {
          whereClause = whereClause | Principal.t.categoryId.equals(keynumber);
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

  Future<List<Principal>> getPrincipalByPeople(Session session, {List<int>? keynumbers}) async {
    print("Getting principal with personId: $keynumbers");

    var whereClause;

    if (keynumbers != null && keynumbers.isNotEmpty) {
      for (var keynumber in keynumbers) {
        if (whereClause == null) {
          whereClause = Principal.t.personId.equals(keynumber);
        } else {
          whereClause = whereClause | Principal.t.personId.equals(keynumber);
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
