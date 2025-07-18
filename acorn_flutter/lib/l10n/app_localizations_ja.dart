// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get indexA => 'これは『四次元年表』のモバイル版です。『四次元年表』のうち必須項目の入力と国別検索のみご利用いただけます。詳細登録、各種検索等フルバージョンをご利用の場合は、PCやタブレットなど広い画面から以下にアクセスしてください。\nhttp://app.laporte.academy';

  @override
  String get indexB => '『四次元年表』のデータベースは英語表記で運用されています。国名は予測変換を用いて、必ず英語で登録してください。なお、\nアメリカUnited States\nイギリスはUnited Kingdom\n大韓民国はSouth Korea\n朝鮮民主主義人民共和国はNorth Korea\nとなります。';

  @override
  String get indexC => '事象名を日本語で登録された場合、順次、英語に修正されますのでご了承ください。CLASSIC表示の事象名は、コピーしてお手持ちの自動翻訳に掛けることができます。';

  @override
  String get infoA => 'このアプリは、あなたのどんな個人情報も一切取得しませんし、あなたのデバイス中の情報を追跡、利用することもありません。';

  @override
  String get infoB => 'あなたが登録してくださった歴史情報があなたと紐付けられることはありません。あなたがなにを登録し、なにを検索したかはについて、記録は一切残りません。';

  @override
  String get infoC => '『四次元年表』とは宇宙の始原から終わりなき「今」に至る、全ての歴史的事象を、分野にかかわらず網羅するデータベースです。「いつ」だけでなく、｢どこで｣を必須項目とし、時間的距離、空間的距離を正しく表示することを目指します。';

  @override
  String get infoD => '『四次元年表』における歴史的事象とは、「いつ、どこで」の情報を備えた、単一のできごとを指します。例えば「明治維新」は単一のできごととはみなされません。登録は　「1868年４月11日　徳川慶喜　水戸へ　日本　東京（江戸）　寛永寺」のようになります。これを｢明治維新｣として検索可能にする場合は、web版｢四次元年表｣において、termに「明治維新」を追加してください。';

  @override
  String get infoE => '『四次元年表』の趣旨に反する情報は、運営者によって以下の対応を取ります。\n１、修正\n２、閲覧停止（将来公開される可能性あり）\n３、削除';

  @override
  String get infoF => '登録いただいた歴史情報は公共財として扱われ、登録したあなた自身でも削除することはできません。個人情報等を書き込まないようご注意ください。誤って登録した情報を削除したい場合、また、削除すべきと思われる情報を見つけた場合は、下記までご連絡ください。';

  @override
  String get infoG => '『四次元年表』開発をともにする方を求めています。Flutter、AWS、PostgreSQL, Unity等を扱えるエンジニアほか、データ入力やデータ修正等にご協力いただける方は、下記までご連絡ください。';

  @override
  String get infoH => 'when.where.what.database727@gmail.com';

  @override
  String get registerA => '入力';

  @override
  String get registerB => 'いつ';

  @override
  String get registerC => '現在のどの国に相当する場所で';

  @override
  String get registerD => 'なにがあった？';

  @override
  String get registerE => '登録';

  @override
  String get search => '国名を入力して🔍にタッチしてください\n\'全件取得の場合は空欄のままタッチしてください。';

  @override
  String get scalableA => '国名を入力して🔍にタッチしてください\n全件取得の場合は空欄のままタッチしてください\nタッチせずに進むとエラーになります。';

  @override
  String get scalableB => '🔍にタッチしたら、表示域を選択してください';

  @override
  String get gameA => '国名を予測変換から選んでください。\n未選択でゲームを開始すると\n全件が対象になります。';

  @override
  String get gameB => 'カードを正しい順序に並べ替えてください。';

  @override
  String get gameDialogA => '残念！';

  @override
  String get gameDialogB => '再挑戦しますか？';

  @override
  String get gameDialogC => '同じカードでもう一回';

  @override
  String get gameDialogD => '新しいカード';

  @override
  String get gameAlertA => '事象が足りません';

  @override
  String get gameAlertB => '５件以上の事象が必要です';

  @override
  String get gameAlertC => '事象を追加する';

  @override
  String get gameAlertD => '別の国を選ぶ';

  @override
  String get cover => 'assets/images/cover_ja.png';

  @override
  String get modeA => '時空をめぐる四次元の旅';

  @override
  String get modeB => 'このプロジェクトは';

  @override
  String get modeC => '使い方動画(YouTube)';

  @override
  String get modeD => '詳細版（大画面）';

  @override
  String get modeE => '簡易版(スマホ対応）';

  @override
  String get modeF => 'iOSアプリ';

  @override
  String get modeG => 'Androidアプリ';

  @override
  String get webIndexA => '事象登録';

  @override
  String get webIndexB => '検索と表示';

  @override
  String get webIndexC => '一括登録';

  @override
  String get tabTopA => '事象登録';

  @override
  String get tabTopB => '目次';

  @override
  String get tabTopC => '検索';

  @override
  String get tabTopD => '必須情報';

  @override
  String get tabTopE => '位置情報 ';

  @override
  String get tabTopF => '追加情報 A';

  @override
  String get tabTopG => '追加情報 B';

  @override
  String get tabTopH => '検索用語';

  @override
  String get tabTopI => '入力確認';

  @override
  String get tabTopJ => '時代情報';

  @override
  String get principalA => '事象名(50文字以内)';

  @override
  String get showSelect => '選択肢を表示';

  @override
  String get saveTempo => '一時保存';

  @override
  String get principalD => '警告';

  @override
  String get principalE => '入力されていない項目があります。\nすべて必須です。';

  @override
  String get principalModelA => 'epochJa';

  @override
  String get principalModelB => 'cosmosJa';

  @override
  String get principalModelC => 'merJa';

  @override
  String get principalModelD => 'principalOptionsJa';

  @override
  String get universe => '宇宙';

  @override
  String get currentCountryName => '現在の国名';

  @override
  String get oceanName => '海洋名';

  @override
  String get billion => '〜十億年前';

  @override
  String get million => '〜百万年前';

  @override
  String get thousand => '千年単位';

  @override
  String get dating => '炭素年代測定';

  @override
  String get bce => '紀元前';

  @override
  String get ce => '西暦';

  @override
  String get newNameWant => '新規の名称';

  @override
  String get addNewName => '名称を追加';

  @override
  String get latitude => '緯度(十進法）';

  @override
  String get longitude => '経度（十進法）';

  @override
  String get searchA => '検索';

  @override
  String get searchB => 'どの表示形式にしますか';

  @override
  String get searchC => '標準';

  @override
  String get searchD => 'なにで絞り込みますか';

  @override
  String get searchE => '選択肢を表示して選ぶ';

  @override
  String get searchF => '確定';

  @override
  String get saveAll => 'これを登録しますか?';
}
