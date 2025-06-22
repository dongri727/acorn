import 'package:serverpod/serverpod.dart';

class AnalysisEndpoint extends Endpoint {
  Future<List<dynamic>> getCountCountries(Session session) async {
     var countCountries = await session.db.unsafeQuery(
      r'SELECT principal.location, COUNT(*)FROM principalGROUP BY principal.locationON CONFLICT (pays) DO UPDATESET combien = EXCLUDED.combien;',
    );
    return countCountries;
  }
}
