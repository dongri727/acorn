import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class JapaneseEndpoint extends Endpoint {
  /// Fetches all JapaneseNames from DB
  Future<List<Japanese>> getAllJapaneseNames(Session session) async {
    try {
      var japaneseNames = await Japanese.db.find(session);
      print('Fetched Japanese names: $japaneseNames'); // デバッグ出力
      return japaneseNames;
    } catch (e) {
      print('Error fetching Japanese names: $e');
      throw Exception('Failed to fetch Japanese names');
    }
  }

  ///Adds a japanese in DB
  Future<int> addJapanese(Session session, Japanese japanese) async {
    await Japanese.db.insertRow(session, japanese);
    return japanese.id!;
  }
}