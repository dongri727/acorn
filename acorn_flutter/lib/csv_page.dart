import 'dart:convert';
import 'dart:html' as html; // Flutter Web用のファイルダウンロードに利用
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

/// CSVテンプレートのダウンロードとアップロードを行うページ
class CSVPage extends StatefulWidget {
  const CSVPage({super.key});

  @override
  State<CSVPage> createState() => _CSVPageState();
}

class _CSVPageState extends State<CSVPage> {
  String _uploadedContent = '';

  /// CSVテンプレートを生成してダウンロードを実施する処理
  void _downloadTemplate() {
    // CSVのテンプレート内容（必要な要件に合わせて修正してください）
    const csvContent = 'name,era,year,month,day,location,precise,latitude,longitude';

    // UTF-8にエンコードしてBlobを作成
    final bytes = utf8.encode(csvContent);
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    // AnchorElementを生成してダウンロードを実施
    final anchor = html.AnchorElement(href: url)
      ..style.display = 'none'
      ..download = 'template.csv';
    html.document.body!.append(anchor);
    anchor.click();

    // 後処理
    anchor.remove();
    html.Url.revokeObjectUrl(url);
  }

  /// CSVファイルをアップロードし、内容を読み込む処理
  Future<void> _uploadCSV() async {
    // file_pickerを利用してCSVファイルを選択
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
      withData: true, // Flutter Webの場合、bytesプロパティを利用するためtrueにする
    );

    if (result != null && result.files.isNotEmpty) {
      final fileBytes = result.files.single.bytes;
      if (fileBytes != null) {
        // バイト列をUTF-8文字列に変換
        final content = utf8.decode(fileBytes);
        setState(() {
          _uploadedContent = content;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CSV テンプレート / アップロード')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // CSVテンプレートダウンロードボタン
            ElevatedButton(
              onPressed: _downloadTemplate,
              child: const Text('CSV テンプレートをダウンロード'),
            ),
            const SizedBox(height: 20),
            // CSVアップロードボタン
            ElevatedButton(
              onPressed: _uploadCSV,
              child: const Text('CSV ファイルをアップロード'),
            ),
            const SizedBox(height: 20),
            // アップロードしたCSVファイルの内容を表示
            if (_uploadedContent.isNotEmpty)
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    _uploadedContent,
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}