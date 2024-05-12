import 'package:get/get.dart';

import '../controllers/media_kit_view_controller.dart';

class MediaKitViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MediaKitViewController>(
      () => MediaKitViewController(),
    );
  }
}
