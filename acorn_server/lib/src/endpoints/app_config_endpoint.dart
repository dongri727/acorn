import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class AppConfigEndpoint extends Endpoint {
  /// アプリ起動時などに呼ぶ想定。
  /// platform: "ios" | "android" | "web"
  /// locale: "ja" | "en" など（任意）
  Future<AppConfigResponse> get(
    Session session, {
    required String platform,
    String? locale,
  }) async {
    // AppConfigは1行運用を想定（複数行にしたいならwhere条件を入れてOK）
    final rows = await AppConfig.db.find(
      session,
      orderBy: (t) => t.id,
      limit: 1,
    );

    // 未登録なら安全側のデフォルト
    final cfg = rows.isNotEmpty ? rows.first : null;

    // platform別に分岐（フィールド名はあなたのモデルに合わせてください）
    int minBuild = 0;
    int latestBuild = 0;
    String message = '';

    if (cfg != null) {
      switch (platform.toLowerCase()) {
        case 'ios':
          minBuild = cfg.minBuildIos ?? 0;
          latestBuild = cfg.latestBuildIos ?? 0;
          break;
        case 'android':
          minBuild = cfg.minBuildAndroid ?? 0;
          latestBuild = cfg.latestBuildAndroid ?? 0;
          break;
        case 'web':
        default:
          minBuild = cfg.minBuildWeb ?? 0;
          latestBuild = cfg.latestBuildWeb ?? 0;
          break;
      }

      // localeがあれば言語別メッセージ
      final loc = (locale ?? '').toLowerCase();
      if (loc.startsWith('ja')) {
        message = cfg.messageJa ?? '';
      } else {
        message = cfg.messageEn ?? (cfg.messageJa ?? '');
      }
    }

    return AppConfigResponse(
      minBuild: minBuild,
      latestBuild: latestBuild,
      message: message,
      storeUrlIos: cfg?.storeUrlIos,
      storeUrlAndroid: cfg?.storeUrlAndroid,
      webUrl: cfg?.webUrl,
      maintenance: cfg?.maintenance ?? false,
    );
  }
}