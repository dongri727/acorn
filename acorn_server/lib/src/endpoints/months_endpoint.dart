import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';


class MonthsEndpoint extends Endpoint {
  //Fetch categories from DB
  Future<List<Months>> getMonths(Session session, {String? keyword}) async {
    return await Months.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      //orderBy: Months.t.month,
    );
  }

  //Add a category in DB
  Future<int> addMonths(Session session, Months months) async {
    await Months.insert(session, months);
    var monthsLastVal = await session.db.query('SELECT LASTVAL()');
    return monthsLastVal[0][0] as int;
  }
}