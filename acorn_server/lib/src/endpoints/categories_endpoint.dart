import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class CategoriesEndpoint extends Endpoint {
  ///Fetches all categories from DB
  Future<List<Categories>> getCategories(Session session,
      {String? keyword}) async {
    return await Categories.db.find(
      session,
      orderBy: (categories) => categories.category,
    );
  }

  ///Adds a category in DB
  Future<int> addCategories(Session session, Categories categories) async {
    var newCategory = await Categories.db.insertRow(session, categories);
    var newCategoryId = newCategory.id;
    return newCategoryId!;
  }
}
