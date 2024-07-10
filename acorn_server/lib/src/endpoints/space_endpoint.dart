import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SpaceEndpoint extends Endpoint {

  Future<int> addSpace(
      Session session, Space space) async {
    var newSpace = await Space.db.insertRow(session, space);
    var newId = newSpace.id;
    return newId!;
  }

  /// Fetches all Space from DB
  Future<List<Space>> getAllSpace(Session session) async {
    try {
      var space = await Space.db.find(session);
      print('Fetched Space: $space'); // デバッグ出力
      return space;
    } catch (e) {
      print('Error fetching Space data: $e');
      throw Exception('Failed to fetch Space data');
    }
  }
}