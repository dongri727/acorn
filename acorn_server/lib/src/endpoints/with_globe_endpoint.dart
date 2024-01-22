import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithGlobeEndpoint extends Endpoint {
  /// Fetches WithGlobe from DB
  Future<List<WithGlobe>> getWithGlobe(Session session,
      {List<int>? keyNumbers}) async {
    // 条件の構築
    var whereClauseWithGlobe;
    if (keyNumbers != null && keyNumbers.isNotEmpty) {
      for (var keyNumber in keyNumbers) {
        if (whereClauseWithGlobe == null) {
          whereClauseWithGlobe = WithGlobe.t.principalId.equals(keyNumber);
        } else {
          whereClauseWithGlobe =
              whereClauseWithGlobe | WithGlobe.t.principalId.equals(keyNumber);
        }
      }
    } else {
      whereClauseWithGlobe = Constant.bool(true);
    }

    return await WithGlobe.db.find(
      session,
      where: (_) => whereClauseWithGlobe,
      orderBy: (withGlobe) => withGlobe.coefficient,
    );
  }

  ///Adds a WithGlobe in DB
  Future<void> addWithGlobe(Session session, WithGlobe withGlobe) async {
    await WithGlobe.db.insertRow(session, withGlobe);
  }
}
