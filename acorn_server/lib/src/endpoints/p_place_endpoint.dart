import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalPlaceEndpoint extends Endpoint {
  //Fetch principal-Place from DB　along with related Principal and Places info
  Future<List<Map<String, dynamic>>> getPrincipalPlace(Session session,
      {String? keyword}) async {
            var sql = '''
      SELECT P.*, Pl.*
      FROM principal P
      INNER JOIN principal_place PP ON P.id = PP.principal_id
      INNER JOIN places Pl ON PP.place_id = Pl.id
      WHERE ${keyword != null ? "Pl.place LIKE '%$keyword%'" : '1=1'}
      ORDER BY PP.place_id
    ''';

    var results = await session.db.query(sql);
    
    return results.map((row) => {
      'principal': Principal,
      'place': Places,
    }).toList();
  }

  //Add principal-place in DB
  Future<int> addPrincipalPlace(Session session, PrincipalPlace principalPlace) async {
    await PrincipalPlace.insert(session, principalPlace);
    return principalPlace.id!;
  }
}