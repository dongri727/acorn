import 'package:serverpod/serverpod.dart';
import 'package:acorn_server/src/generated/protocol.dart';

class DetailEndpoint extends Endpoint {

  ///Adds a Detail in DB
  Future<int> addDetail(Session session, Detail detail) async {
    var newDetail = await Detail.db.insertRow(session, detail);
    var newDetailId = newDetail.id;
    return newDetailId!;
  }

  ///Fetches all Detail from DB
  Future<List<Detail>> getDetail(Session session,
      {String? keyword}) async {
    return await Detail.db.find(
      session,
      orderBy: (detail) => detail.genre,
    );
  }

  ///Fetches selected Detail from DB in selected genre
  Future<List<Detail>> getDetailByGenre(Session session,
      {String? genre}) async {
    return await Detail.db.find(
      session,
      where: (t) => genre != null ? t.genre.equals(genre) : Constant.bool(true),
      orderBy: (detail) => detail.mot,
    );
  }

  // todo detailを加えたら、同じジャンルのdetailだけを返すように変更する 
  ///Adds a new detail and returns all Detail in same genre
  Future<List<Detail>> addAndReturnDetailByGenre(
      Session session, Detail detail) async {
    await Detail.db.insertRow(session, detail);
    var selectedDetail = await getDetailByGenre(session, genre: detail.genre);
    return selectedDetail;
  }

  ///Fetches selected Detail with principalId
  Future<List<Detail>> getDetailByPrincipalId(Session session,
      {int? principalId}) async {
    if (principalId == null) {
      return Future.value([]);
    }
    //Step 1: Get DetalIds from PrincipalDetail using principalId
    var whereClausePrincipalDetail =
        PrincipalDetail.t.principalId.equals(principalId);

    var principalDetailResults = await PrincipalDetail.db
        .find(session, where: (_) => whereClausePrincipalDetail);
    var detailIds =
        principalDetailResults.map((row) => row.detailId).toList();

    if (detailIds.isEmpty) {
      return Future.value([]);
    }

    //Step 2: Get Detail using categoryIds
    return await getDetailByIds(session, detailIds);
  }

/*   Future<List<Detail>> getDetailByIds(Session session, List<int> detailIds) async {
  if (detailIds.isEmpty) {
    return Future.value([]);
  }

  var whereClauseDetail = Detail.t.id.isIn(detailIds);
  return await Detail.db.find(
    session,
    where: (_) => whereClauseDetail,
    orderBy: (detail) => detail.mot,
  );
}  */ 
 
  Future<List<Detail>> getDetailByIds(
      Session session, List<int> detailIds) async {
    if (detailIds.isEmpty) {
      return Future.value([]);
    }

    dynamic whereClauseDetail;
    for (var detailId in detailIds) {
      if (whereClauseDetail == null) {
        whereClauseDetail = Detail.t.id.equals(detailId);
      } else {
        whereClauseDetail =
            whereClauseDetail | Detail.t.id.equals(detailId);
      }
    }
    return await Detail.db.find(
      session,
      where: (_) => whereClauseDetail,
      orderBy: (detail) => detail.mot,
    );
  }
}
