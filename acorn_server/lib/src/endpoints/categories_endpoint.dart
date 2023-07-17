import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';


class CategoriesEndpoint extends Endpoint {
  //Fetch categories from DB
  Future<List<Categories>> getCategories(Session session, {String? keyword}) async {
    return await Categories.find(
      session,
      //where: (t) => keyword !=null ? t.title.like('%$keyword%') : Constant(true),
      orderBy: Categories.t.category,
    );
  }

  //Add a category in DB
  Future<int> addCategories(Session session, Categories categories) async {
    await Categories.insert(session, categories);
    var categoryLastVal = await session.db.query('SELECT LASTVAL()');
    return categoryLastVal[0][0] as int;
  }
}