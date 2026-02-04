import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithMapEndpoint extends Endpoint {
  /// Fetches WithMap from DB
  Future<List<WithMap>> getWithMap(Session session,
      {List<int>? keyNumbers}) async {
    // 条件の構築
    var whereClauseWithMap;
    if (keyNumbers != null && keyNumbers.isNotEmpty) {
      for (var keyNumber in keyNumbers) {
        if (whereClauseWithMap == null) {
          whereClauseWithMap = WithMap.t.principalId.equals(keyNumber);
        } else {
          whereClauseWithMap =
              whereClauseWithMap | WithMap.t.principalId.equals(keyNumber);
        }
      }
    } else {
      // By default, hide soft-deleted rows.
      whereClauseWithMap = WithMap.t.deletedAt.equals(null);
    }

    return await WithMap.db.find(
      session,
      where: (_) => whereClauseWithMap,
      orderBy: (withMap) => withMap.logarithm,
    );
  }

  ///Adds a WithMap in DB
  Future<void> addWithMap(Session session, WithMap withMap) async {
    withMap.updatedAt ??= DateTime.now().toUtc();
    withMap.deletedAt = null;
    await WithMap.db.insertRow(session, withMap);
  }
}
