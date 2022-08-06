import 'package:get/get.dart';

import '../controllers/htc_controller.dart';

class HtcBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HtcController>(
      () => HtcController(),
    );
  }
}
