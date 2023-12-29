import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Civitas Ku',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: new WebView(
          initialUrl: "https://sika.unindra.ac.id/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
