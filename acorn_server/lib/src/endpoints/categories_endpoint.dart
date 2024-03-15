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

  ///Adds a new categories and returns all Categories
  Future<List<Categories>> addAndReturnCategories(
      Session session, Categories categories) async {
    await Categories.db.insertRow(session, categories);
    var allCategories = await Categories.db.find(
      session,
      orderBy: (categories) => categories.category,
    );
    return allCategories;
  }

  ///Fetches selected categories with principalId
  Future<List<Categories>> getCategoriesByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get CategoryIds from PrincipalCategories using principalId
    var whereClausePrincipalCategories =
        PrincipalCategories.t.principalId.equals(principalId);

    var principalCategoriesResults = await PrincipalCategories.db
        .find(session, where: (_) => whereClausePrincipalCategories);
    var categoryIds =
        principalCategoriesResults.map((row) => row.categoryId).toList();

    if (categoryIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Categories using categoryIds
    return await getCategoriesByIds(session, categoryIds);
  }

  Future<List<Categories>> getCategoriesByIds(
      Session session, List<int> categoryIds) async {
    if (categoryIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClauseCategories;
    for (var categoryId in categoryIds) {
      if (whereClauseCategories == null) {
        whereClauseCategories = Categories.t.id.equals(categoryId);
      } else {
        whereClauseCategories =
            whereClauseCategories | Categories.t.id.equals(categoryId);
      }
    }
    return await Categories.db.find(
      session,
      where: (_) => whereClauseCategories,
      orderBy: (categories) => categories.category,
    );
  }
}
