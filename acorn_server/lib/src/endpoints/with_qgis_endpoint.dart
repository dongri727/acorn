import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithQgisEndpoint extends Endpoint {
  /// Fetches WithQgis from DB
  Future<List<WithQgis>> getWithQgis(Session session,
      {List<int>? keyNumbers}) async {
    // 条件の構築
    var whereClauseWithQgis;
    if (keyNumbers != null && keyNumbers.isNotEmpty) {
      for (var keyNumber in keyNumbers) {
        if (whereClauseWithQgis == null) {
          whereClauseWithQgis = WithQgis.t.principalId.equals(keyNumber);
        } else {
          whereClauseWithQgis =
              whereClauseWithQgis | WithQgis.t.principalId.equals(keyNumber);
        }
      }
    } else {
      whereClauseWithQgis = Constant.bool(true);
    }

    return await WithQgis.db.find(
      session,
      where: (_) => whereClauseWithQgis,
    );
  }

  ///Adds a WithQgis in DB
  Future<void> addWithQgis(Session session, WithQgis withQgis) async {
    await WithQgis.db.insertRow(session, withQgis);
  }
}