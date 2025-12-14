import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Laporte extends StatelessWidget {
  const Laporte({super.key});

  static const _background = Color(0xFF050816); // 深めの紺
  static const _cardBackground = Color(0xFF111827);
  static const _accent = Color(0xFFF5D48F); // 淡いゴールド

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 960),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildHero(context),
                const SizedBox(height: 40),
                _buildAppGrid(context),
                const SizedBox(height: 40),
                _buildFooter(context),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text("back"),
          ),
    );
  }

  // ───────────────── Hero ─────────────────

  Widget _buildHero(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        // ロゴ
        SizedBox(
          height: 140,
          child: Image.asset(
            'assets/images/laporte.png', // TODO: ここにロゴパスを合わせる
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'la porte',
          style: textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            letterSpacing: 4,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Tools for curious minds.',
          textAlign: TextAlign.center,
          style: textTheme.titleMedium?.copyWith(
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Exploratory apps for mapping time, space, and language.',
          textAlign: TextAlign.center,
          style: textTheme.bodyMedium?.copyWith(
            color: Colors.white60,
          ),
        ),
        const SizedBox(height: 32),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.white54,
          size: 32,
        ),
      ],
    );
  }

  // ───────────────── Apps Grid ─────────────────

  Widget _buildAppGrid(BuildContext context) {
    final apps = _apps;
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: apps
          .map(
            (app) => _AppCard(
          app: app,
        ),
      )
          .toList(),
    );
  }

  // ───────────────── Footer ─────────────────

  Widget _buildFooter(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const Divider(color: Colors.white12),
        const SizedBox(height: 16),
        Text(
          '© la porte',
          style: textTheme.bodySmall?.copyWith(color: Colors.white54),
        ),
      ],
    );
  }

  // ───────────────── Data ─────────────────

  static final List<_AppInfo> _apps = [
    _AppInfo(
      title: 'Chronomap\nWhen-Where-What\nDatabase',
      subtitle: 'Time, location, and events in one spatial map.',
      iconAsset: 'assets/images/icon.png',
      links: [
        _AppLink(
          label: 'Open Web',
          uri: Uri.parse('https://chronomap.serverpod.space'),
        ),
      ],
    ),
    _AppInfo(
      title: '4D Timeline – Unity',
      subtitle: 'Immersive exploration of the same data in 3D.',
      iconAsset: 'assets/images/icon.png',
      links: [
        _AppLink(
          label: 'Unity Build',
          uri: Uri.parse(''),
        ),
      ],
    ),
    _AppInfo(
      title: 'Chronomap in Maritime',
      subtitle: 'Explore human history across the seas.',
      iconAsset: 'assets/images/maritime.png',
      links: [
        _AppLink(
          label: 'iOS',
          uri: Uri.parse('https://apps.apple.com/jp/app/chronomap-in-maritime/id6738851225'),
        ),
        _AppLink(
          label: 'Android',
          uri: Uri.parse('https://play.google.com/store/apps/details?id=academy.laporte.chronomap_in_maritime&hl=ja'),
        ),
      ],
    ),
    _AppInfo(
      title: 'Chronomap in Space',
      subtitle: 'Heliocentric event explorer.',
      iconAsset: 'assets/images/space.png',
      links: [
        _AppLink(
          label: 'iOS',
          uri: Uri.parse('https://apps.apple.com/jp/app/chronomap-in-cosmos/id6642644551'),
        ),
      ],
    ),
    _AppInfo(
      title: 'Chronomap for Mobile',
      subtitle: 'Chronomap in your pocket.',
      iconAsset: 'assets/images/icon.png',
      links: [
        _AppLink(
          label: 'iOS',
          uri: Uri.parse('https://apps.apple.com/...'),
        ),
        _AppLink(
          label: 'Android',
          uri: Uri.parse('https://play.google.com/store/apps/details?...'),
        ),
      ],
    ),
    _AppInfo(
      title: 'Scatter3D Maker',
      subtitle: 'Turn any CSV into a 3D scatter plot.',
      iconAsset: 'assets/images/scatter.png',
      links: [
        _AppLink(
          label: 'iOS',
          uri: Uri.parse('https://apps.apple.com/jp/app/scatter3d-maker/id6746820074'),
        ),
        _AppLink(
          label: 'Android',
          uri: Uri.parse('https://play.google.com/store/apps/details?id=com.laporte.scatter3d_maker&hl=ja'),
        ),
      ],
    ),
    _AppInfo(
      title: 'かんたんご',
      subtitle: 'Japanese–Korean shared Kanji vocabulary.',
      iconAsset: 'assets/images/kantango.png',
      links: [
        _AppLink(
          label: 'iOS',
          uri: Uri.parse('https://apps.apple.com/jp/app/%E3%81%8B%E3%82%93%E3%81%9F%E3%82%93%E3%81%94/id6754549470'),
        ),
        _AppLink(
          label: 'Android',
          uri: Uri.parse('https://play.google.com/store/apps/details?id=academy.laporte.kantango&hl=ja'),
        ),
      ],
    ),
    _AppInfo(
      title: 'ChronoMap',
      subtitle: 'How to use Chronomap.',
      iconAsset: 'assets/images/laporte.png',
      links: [
        _AppLink(
          label: 'YouTube',
          uri: Uri.parse('https://www.youtube.com/@laporte_academy'),
        ),
      ],
    ),
  ];
}

// ───────────────────────── Helper models & widgets ─────────────────────────

class _AppInfo {
  final String title;
  final String subtitle;
  final String iconAsset;
  final List<_AppLink> links;

  const _AppInfo({
    required this.title,
    required this.subtitle,
    required this.iconAsset,
    required this.links,
  });
}

class _AppLink {
  final String label;
  final Uri uri;

  const _AppLink({
    required this.label,
    required this.uri,
  });
}

class _AppCard extends StatelessWidget {
  final _AppInfo app;

  const _AppCard({required this.app});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 205,
        maxWidth: 210,
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Laporte._cardBackground,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // アイコン
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  app.iconAsset,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              app.title,
              style: textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              app.subtitle,
              style: textTheme.bodySmall?.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: app.links
                  .map(
                    (link) => _LinkChip(link: link),
              )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _LinkChip extends StatelessWidget {
  final _AppLink link;

  const _LinkChip({required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launch(link.uri),
      borderRadius: BorderRadius.circular(999),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: Laporte._accent),
        ),
        child: Text(
          link.label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Laporte._accent,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// 外部リンク起動
Future<void> _launch(Uri uri) async {
  final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (!ok) {
    debugPrint('Could not launch $uri');
  }
}