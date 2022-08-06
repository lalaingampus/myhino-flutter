import 'package:get/get.dart';

import '../controllers/komparasi_controller.dart';

class KomparasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KomparasiController>(
      () => KomparasiController(),
    );
  }
}
