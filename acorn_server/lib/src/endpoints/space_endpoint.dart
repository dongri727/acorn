import 'package:acorn_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class SpaceEndpoint extends Endpoint {

  ///add an event in Space
  Future<int> addSpace(
      Session session, Space space) async {
    var newSpace = await Space.db.insertRow(session, space);
    var newId = newSpace.id;
    return newId!;
  }

  /// Fetches Space from DB
  Future<List<Space>> getSpace(Session session, {String? keyword}) async {
    try {
      return await Space.db.find(
        session,
        where: (t) => keyword != null ? t.precise.equals(keyword) : Constant.bool(true),
        orderBy: (space) => space.point,
        );
    } catch (e) {
      print('Error fetching Space data: $e');
      throw Exception('Failed to fetch Space data');
    }
  }
}