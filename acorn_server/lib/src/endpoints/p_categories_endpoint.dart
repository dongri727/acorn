import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalCategoriesEndpoint extends Endpoint {
  //Fetch principal-categories from DB
  Future<List<PrincipalCategories>> getPCategories(Session session,
      {String? keyword}) async {
    return await PrincipalCategories.db.find(
      session,
      //where: (t) => keyword !=null ? t.pCategories.like('%$keyword%') : Constant(true),
      //orderBy: PrincipalCategories.t.category_id,
    );
  }

  //Add POrgs in DB
  Future<int> addPCategories(Session session, PrincipalCategories pCategories) async {
    await PrincipalCategories.db.insert(session, pCategories as List<PrincipalCategories>);
    return pCategories.id!;
  }
}