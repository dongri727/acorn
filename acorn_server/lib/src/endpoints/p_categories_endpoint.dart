import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class PrincipalCategoriesEndpoint extends Endpoint {
  ///Selects some junctions of principal-categories from DB
  Future<List<PrincipalCategories>> getPCategories(Session session,
      {int? keynumber}) async {
    return await PrincipalCategories.db.find(
      session,
      where: (t) => keynumber !=null ? t.categoryId.equals(keynumber) : Constant.bool(true),
      orderBy: (principalCategories) => principalCategories.principalId,
    );
  }

  ///Adds a junction of PrincipalCategory in DB
  Future<void> addPCategories(Session session, PrincipalCategories pCategories) async {
    await PrincipalCategories.db.insertRow(session, pCategories);
  }
}