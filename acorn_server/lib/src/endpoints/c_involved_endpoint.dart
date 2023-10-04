import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryInvolvedEndpoint extends Endpoint {
  //Fetch countries-involved from DB
  Future<List<CountryInvolved>> getCInvolved(Session session,
      {String? keyword}) async {
    return await CountryInvolved.find(
      session,
      //where: (t) => keyword !=null ? t.countryInvolved.like('%$keyword%') : Constant(true),
      orderBy: CountryInvolved.t.pays_id,
    );
  }

  //Add country involved in DB
  Future<int> addCInvolved(Session session, CountryInvolved cInvolved) async {
    await CountryInvolved.insert(session, cInvolved);
    return cInvolved.id!;
  }
}