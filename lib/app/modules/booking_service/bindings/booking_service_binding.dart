import 'package:get/get.dart';

import 'package:myhino/app/modules/booking_service/controllers/input_booking_controller.dart';

import '../controllers/booking_service_controller.dart';

class BookingServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputBookingController>(
      () => InputBookingController(),
    );
    Get.lazyPut<BookingServiceController>(
      () => BookingServiceController(),
    );
  }
}
