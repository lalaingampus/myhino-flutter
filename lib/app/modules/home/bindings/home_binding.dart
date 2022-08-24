import 'package:get/get.dart';

import 'package:myhino/app/modules/home/controllers/berita_promosi_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeritaPromosiController>(
      () => BeritaPromosiController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
