import 'package:get/get.dart';

import 'package:myhino/app/modules/vehicle_management/controllers/qr_controller.dart';

import '../controllers/vehicle_management_controller.dart';

class VehicleManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QrController>(
      () => QrController(),
    );
    Get.lazyPut<QrController>(
      () => QrController(),
    );
    Get.lazyPut<VehicleManagementController>(
      () => VehicleManagementController(),
    );
  }
}
