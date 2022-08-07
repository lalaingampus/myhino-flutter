import 'package:get/get.dart';

import 'package:myhino/app/modules/suku_cadang/controllers/info_controller.dart';

import '../controllers/suku_cadang_controller.dart';

class SukuCadangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoController>(
      () => InfoController(),
    );
    Get.lazyPut<SukuCadangController>(
      () => SukuCadangController(),
    );
  }
}
