import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputBookingController extends GetxController {
  //TODO: Implement InputBookingController

  TextEditingController vehicle = TextEditingController();
  TextEditingController dealer = TextEditingController();

  TextEditingController alasanBooking = TextEditingController();



  @override
  void onClose() {}

  void changeModel(value) {
    Get.snackbar("vehicle model", value.toString());
  }
}
