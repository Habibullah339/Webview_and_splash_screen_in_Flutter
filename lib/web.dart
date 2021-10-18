import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class WebViewClass extends StatefulWidget {
  @override
  _WebViewClassState createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('WebView'),
      // ),



      body: SafeArea(
        child: WebView(

              initialUrl: 'https://web.uettaxila.edu.pk/',
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
            ),


            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //
            //   ),
            //   child: Text("Developed By Habibullah"),
            // ),




      ),
    );
  }
}