import 'package:get/get.dart';

import '../controllers/vehicle_management_controller.dart';

class VehicleManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehicleManagementController>(
      () => VehicleManagementController(),
    );
  }
}
