import 'package:get/get.dart';

import '../controllers/telematics_controller.dart';

class TelematicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TelematicsController>(
      () => TelematicsController(),
    );
  }
}
