import 'package:acorn_flutter/mobile/register/register_page.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

// ゲームデータが5件未満のときに表示するダイアログ
class GameUnder5 extends StatelessWidget {
  const GameUnder5({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.gameDialogA),
      content: Text(AppLocalizations.of(context)!.gameDialogB),
      actions: [
        TextButton(
          child: Text(AppLocalizations.of(context)!.gameAlertC),
          onPressed: () {
            Navigator.push<String>(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()));
          },
        ),
        TextButton(
          child: Text(AppLocalizations.of(context)!.gameAlertD),
          onPressed: () {
            Navigator.of(context).pop(); // ダイアログを閉じる
          },
        ),
      ],
    );
  }
}

// 底部シートの表示
void showGameBottomSheet(BuildContext context, VoidCallback onRetry, VoidCallback onResetGame) {
  showModalBottomSheet(
    backgroundColor: Colors.white.withOpacity(0.5),
    context: context,
    barrierColor: Colors.black.withOpacity(0.3),
    isDismissible: false,
    builder: (BuildContext context) {
      return SizedBox(
        height: 250,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.gameDialogA,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                AppLocalizations.of(context)!.gameDialogB,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  onRetry(); // 同じカードで再挑戦
                },
                child: Text(
                  AppLocalizations.of(context)!.gameDialogC,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  onResetGame(); // 新しいゲームを開始
                },
                child: Text(
                  AppLocalizations.of(context)!.gameDialogD,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
