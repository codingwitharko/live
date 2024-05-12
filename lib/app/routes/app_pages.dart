import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/media_kit_view/bindings/media_kit_view_binding.dart';
import '../modules/media_kit_view/views/media_kit_view_view.dart';
import '../modules/web_view/bindings/web_view_binding.dart';
import '../modules/web_view/views/web_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_KIT_VIEW,
      page: () => const MediaKitViewView(),
      binding: MediaKitViewBinding(),
    ),
    GetPage(
      name: _Paths.WEB_VIEW,
      page: () => const WebViewView(),
      binding: WebViewBinding(),
    ),
  ];
}
