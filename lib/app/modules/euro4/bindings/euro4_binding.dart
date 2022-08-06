import 'package:get/get.dart';

import '../controllers/euro4_controller.dart';

class Euro4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Euro4Controller>(
      () => Euro4Controller(),
    );
  }
}
