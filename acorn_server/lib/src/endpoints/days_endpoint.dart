import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class DaysEndpoint extends Endpoint {
  //Fetch days from DB
  Future<List<Days>> getDays(Session session, {String? keyword}) async {
    return await Days.find(
      session,
      //where: (t) => keyword !=null ? t.day.like('%$keyword%') : Constant(true),
      //orderBy: Days.t.days,
    );
  }

  //Add a category in DB
  Future<int> addDays(Session session, Days days) async {
    await Days.insert(session, days);
    //var daysLastVal = await session.db.query('SELECT LASTVAL()');
    //return daysLastVal[0][0] as int;
    return days.id!;
  }
}
