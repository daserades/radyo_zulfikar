import 'dart:async';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        return SafeArea(
          child: WebView(
            initialUrl: 'https://www.radyozulfikar.com/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            // javascriptChannels: <JavascriptChannel>[
            //   _toasterJavascriptChannel(context),
            // ].toSet(),
            onPageStarted: (String url) {
              print('Sayfa Yüklemesi Başlatıldı: $url');
            },
            onPageFinished: (String url) {
              print('Sayfa Yüklemesi Tamamlandı: $url');
            },
            gestureNavigationEnabled: true,
          ),
        );
      }),
      // floatingActionButton: favoriteButton(),
    );
  }

  // JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  //   return JavascriptChannel(
  //       name: 'Toaster',
  //       onMessageReceived: (JavascriptMessage message) {
  //         // ignore: deprecated_member_use
  //         Scaffold.of(context).showSnackBar(
  //           SnackBar(content: Text(message.message)),
  //         );
  //       });
  // }

  Widget favoriteButton() {
    return FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context,
            AsyncSnapshot<WebViewController> controller) {
          if (controller.hasData) {
            return FloatingActionButton(
              onPressed: () {
                // Share olabilir
              },
              child: Icon(Icons.share),
            );
          }
          return Container();
        });
  }
}
