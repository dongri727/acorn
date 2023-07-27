import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class LocalDatesEndpoint extends Endpoint {
  //Fetch days from DB
  Future<List<LocalDates>> getLocalDates(Session session,
      {String? keyword}) async {
    return await LocalDates.find(
      session,
      //where: (t) => keyword !=null ? t.localdate.like('%$keyword%') : Constant(true),
      //orderBy: LocalDates.t.localdates,
    );
  }

  //Add a category in DB
  Future<int> addLocalDates(Session session, LocalDates localdates) async {
    await LocalDates.insert(session, localdates);
    //var localdateLastVal = await session.db.query('SELECT LASTVAL()');
    //return localdateLastVal[0][0] as int;
    return localdates.id!;
  }
}
