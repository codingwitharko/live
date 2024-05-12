import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

import 'app/routes/app_pages.dart';
import 'package:media_kit/media_kit.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized( );
  MediaKit.ensureInitialized( );

  WebViewPlatform.instance = WebWebViewPlatform();

  runApp(
    GetMaterialApp(
      title: "live stream tester",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
