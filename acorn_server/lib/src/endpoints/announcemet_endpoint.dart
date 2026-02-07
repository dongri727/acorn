import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class AnnouncementEndpoint extends Endpoint {
  /// 最新のお知らせを返す（既読管理はFlutter側のローカル保存を想定）
  /// platform: "ios" | "android" | "web"（任意で絞り込み）
  /// locale: "ja" | "en"（将来の拡張用。現状は未使用）
  Future<List<Announcement>> listLatest(
    Session session, {
    String? platform,
    String? locale,
    int limit = 10,
  }) async {
    // where を null にすると「全件対象」になります。
    WhereExpressionBuilder<AnnouncementTable>? where;

    final p = platform?.toLowerCase().trim();
    if (p != null && p.isNotEmpty) {
      // targetPlatforms が "ios,android,web" のようなCSVを想定。
      // nullable カラムなので isNotNull() を挟んでから部分一致。
      // ※Serverpodのバージョンによっては ilike が無いので like を使用します。
      // targetPlatforms は小文字で保存する運用（例: "ios,android,web"）にしてください。
      where = (t) => t.targetPlatforms.like('%$p%');
    }

    final rows = await Announcement.db.find(
      session,
      where: where,
      orderBy: (t) => t.publishedAt,
      orderDescending: true,
      limit: limit,
    );

    // localeで本文差し替えをやるなら、DTOに詰め替える方式が安全。
    // ここでは最小実装としてモデルをそのまま返します。
    return rows;
  }
}