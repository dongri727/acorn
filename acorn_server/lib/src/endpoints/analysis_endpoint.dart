import 'package:serverpod/serverpod.dart';

class AnalysisEndpoint extends Endpoint {
  Future<List<dynamic>> getCountCountries(Session session) async {
     var countCountries = await session.db.unsafeQuery(
      r'SELECT principal.location, COUNT(*) AS Count FROM principal GROUP BY principal.location',
    );

    return countCountries;
  }
}
