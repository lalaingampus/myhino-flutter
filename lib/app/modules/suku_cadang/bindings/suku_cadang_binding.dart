import 'package:get/get.dart';

import '../controllers/suku_cadang_controller.dart';

class SukuCadangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SukuCadangController>(
      () => SukuCadangController(),
    );
  }
}
