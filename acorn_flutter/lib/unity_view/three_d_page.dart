//import 'dart:math';
import 'dart:developer';
import 'package:acorn_flutter/search/multiple_search_page.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../utils/custom_page_route.dart';

///なんのDataも渡さず、にただtempo-spacoを表示する設定になっているが
///webでは機能しない。


class ThreeDViewPage extends StatelessWidget {
  final List<int>? principalIds;
  const ThreeDViewPage({super.key, this.principalIds});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
    ..loadRequest(Uri.parse('https://tempo-spaco.web.app'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Colors.black)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          log('progress: $progress');
        },
        onPageStarted: (String url){
          log('page started: $url');
        },
        onPageFinished: (String url) {
          log('page finished: $url');
        },
        onWebResourceError: (WebResourceError error) {
          log('error: $error');
        },
      )
    );
    return Scaffold(
      body: SafeArea(
        child:
            Expanded(
                child: WebViewWidget(
                  controller: controller,
               ))),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push<String>(
                  context,
                  CustomPageRoute(
                    const MultiSearchPage(),
                  ),
                );
              },
              child: const Text(
                "return",
              ),
            ),
    );
  }}