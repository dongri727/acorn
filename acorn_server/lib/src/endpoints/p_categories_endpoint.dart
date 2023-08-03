import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalCategoriesEndpoint extends Endpoint {
  //Fetch principal-categories from DB
  Future<List<PrincipalCategories>> getPrincipalCategories(Session session,
      {String? keyword}) async {
    return await PrincipalCategories.find(
      session,
      //where: (t) => keyword !=null ? t.pCategories.like('%$keyword%') : Constant(true),
      orderBy: PrincipalCategories.t.category_id,
    );
  }

  //Add POrgs in DB
  Future<int> addPrincipalCategories(Session session, PrincipalCategories principalCategories) async {
    await PrincipalCategories.insert(session, principalCategories);
    return principalCategories.id!;
  }
}