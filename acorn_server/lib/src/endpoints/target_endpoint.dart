import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';
  
  ///Adds a term in DB
  Future<int> addTarget(Session session, Target target) async {
    await Target.db.insertRow(session, target);
    return target.id!;
  }
