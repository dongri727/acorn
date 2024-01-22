import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CountryattsEndpoint extends Endpoint {
  ///Fetches all countries-att from DB
  Future<List<Countryatts>> getCountryATTs(Session session,
      {String? keyword}) async {
    return await Countryatts.db.find(
      session,
      orderBy: (countryatts) => countryatts.countryatt,
    );
  }

  ///Adds a country-att in DB
  Future<int> addCountryATTs(Session session, Countryatts countryatts) async {
    var newCatt = await Countryatts.db.insertRow(session, countryatts);
    var newCattId = newCatt.id;
    return newCattId!;
  }
}
