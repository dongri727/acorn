import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class WithMapEndpoint extends Endpoint {
  /// Fetches WithMap from DB
  ///
  /// - By default, returns only non-soft-deleted rows (`deletedAt == null`).
  /// - If [updatedAfter] is provided, returns rows updated after that timestamp (UTC recommended).
  /// - If [keyNumbers] is provided, filters by `principalId` in that set (still excluding soft-deleted rows).
  /// - [limit] caps the number of returned rows to keep Unity transfers sane.
  Future<List<WithMap>> getWithMap(
    Session session, {
    List<int>? keyNumbers,
    DateTime? updatedAfter,
    int limit = 500,
  }) async {
    // Always hide soft-deleted rows.
    var whereClause = WithMap.t.deletedAt.equals(null);

    // Optional filter: only selected principalIds.
    if (keyNumbers != null && keyNumbers.isNotEmpty) {
      // Build an OR-clause without relying on a null/implicit dynamic variable.
      var principalClause = WithMap.t.principalId.equals(keyNumbers.first);
      for (final keyNumber in keyNumbers.skip(1)) {
        principalClause = principalClause | WithMap.t.principalId.equals(keyNumber);
      }
      whereClause = whereClause & principalClause;
    }

    // Optional filter: incremental sync.
    if (updatedAfter != null) {
      whereClause = whereClause & (WithMap.t.updatedAt > updatedAfter);
    }

    return await WithMap.db.find(
      session,
      where: (_) => whereClause,
      orderBy: (t) => t.updatedAt,
      limit: limit,
    );
  }

  ///Adds a WithMap in DB
  Future<void> addWithMap(Session session, WithMap withMap) async {
    withMap.updatedAt = DateTime.now().toUtc();
    withMap.deletedAt = null;
    await WithMap.db.insertRow(session, withMap);
  }
}
