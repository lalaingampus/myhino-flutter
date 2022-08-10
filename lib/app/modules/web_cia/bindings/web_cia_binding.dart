import 'package:get/get.dart';

import '../controllers/web_cia_controller.dart';

class WebCiaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebCiaController>(
      () => WebCiaController(),
    );
  }
}
