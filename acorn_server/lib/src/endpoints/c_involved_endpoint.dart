import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryInvolvedEndpoint extends Endpoint {
  ///Selects some junctions of countries-involved from DB
  Future<List<CountryInvolved>> getCInvolved(Session session,
      {int? keynumber}) async {
    return await CountryInvolved.db.find(
      session,
      where: (t) => keynumber !=null ? t.paysId.equals(keynumber) : Constant.bool(true),
      orderBy: (countryInvolved) => countryInvolved.principalId,
    );
  }

  ///Adds a junction of country involved in DB
  Future<void> addCInvolved(Session session, CountryInvolved cInvolved) async {
    await CountryInvolved.db.insertRow(session, cInvolved);
  }
}