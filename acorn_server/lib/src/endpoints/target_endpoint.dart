import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class TargetEndpoint extends Endpoint {
  ///Adds target in DB
  Future<int> addTarget(Session session, Target target) async {
    await Target.db.insertRow(session, target);
    return target.id!;
  }

  ///Fetches all target from DB
  Future<List<Target>> getTarget(Session session, {String? keyword}) async {
    return await Target.db.find(session);
  }

  ///Adds a new Target and returns all Target
  ///detailに追加して新しいidを取得してからしかaddできない。
  Future<List<Target>> addAndReturnTarget(
      Session session, Target target) async {
    await Target.db.insertRow(session, target);
    var allTarget = await Target.db.find(session);
    return allTarget;
  }
}

