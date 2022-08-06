import 'package:get/get.dart';

import '../controllers/kredit_controller.dart';

class KreditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KreditController>(
      () => KreditController(),
    );
  }
}
