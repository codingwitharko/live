import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

class WebViewView extends StatefulWidget {
  const WebViewView({super.key});

  @override
  WebViewViewState createState() => WebViewViewState();
}

class WebViewViewState extends State<WebViewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(24.0),
        child: const Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child:  Webview(url: "https://caspian13.cdn.asset.aparat.com/aparat-video/ed6c4d6fbdefef2eecab2937d4a341b557567898-720p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjhmMzE1ZGRiMjkzZDIyYmRkMzA3NmNkYmRjNzI3MzQ2IiwiZXhwIjoxNzE1NDUxNDA0LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.Aqj321AuioMfdYx9emJ64JtDx1WqT7zNZ5Ifn01nlao")),
                  SizedBox(width: 24.0),
                  Expanded(child:  Webview(url: "rtsp://admin:123asdfg@185.190.23.227:555/cam/realmonitor?channel=1&subtype=0")),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Expanded(
              child: Row(
                children: [
                  Expanded(child:  Webview(url: "https://telewebion.com/")),
                  SizedBox(width: 24.0),
                  Expanded(child:  Webview(url: "https://www.youtube.com/")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}