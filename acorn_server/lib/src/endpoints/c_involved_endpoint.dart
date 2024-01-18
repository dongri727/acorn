import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryInvolvedEndpoint extends Endpoint {
  //Fetch countries-involved from DB
  Future<List<CountryInvolved>> getCInvolved(Session session,
      {String? keyword}) async {
    return await CountryInvolved.db.find(
      session,
      //where: (t) => keyword !=null ? t.countryInvolved.like('%$keyword%') : Constant(true),
      //orderBy: CountryInvolved.t.paysId,
    );
  }

  //Add country involved in DB
  Future<int> addCInvolved(Session session, CountryInvolved cInvolved) async {
    await CountryInvolved.db.insert(session, cInvolved as List<CountryInvolved>);
    return cInvolved.id!;
  }
}