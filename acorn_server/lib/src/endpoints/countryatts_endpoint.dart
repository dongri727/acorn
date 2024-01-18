import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryattsEndpoint extends Endpoint {
  //Fetch countries att from DB
  Future<List<Countryatts>> getCountryATTs(Session session,
      {String? keyword}) async {
    return await Countryatts.db.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      //orderBy: Countryatts.t.countryatt,
    );
  }

  //Add country att in DB
  Future<int> addCountryATTs(Session session, Countryatts countryatts) async {
    await Countryatts.db.insert(session, countryatts as List<Countryatts>);
    //var countryattsLastVal = await session.db.query('SELECT LASTVAL()');
    //return countryattsLastVal[0][0] as int;
    return countryatts.id!;
  }
}
