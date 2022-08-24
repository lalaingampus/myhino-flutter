import 'package:get/get.dart';

import '../controllers/hino_indonesia_controller.dart';

class HinoIndonesiaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HinoIndonesiaController>(
      () => HinoIndonesiaController(),
    );
  }
}
