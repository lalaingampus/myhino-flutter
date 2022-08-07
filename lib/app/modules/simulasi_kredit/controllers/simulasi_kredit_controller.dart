import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SimulasiKreditController extends GetxController {
  //TODO: Implement SimulasiKreditController
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  var vehicleModel = "".obs;

  TextEditingController variant = TextEditingController();
  TextEditingController hargaUnit = TextEditingController();
  TextEditingController hargaKaroseri = TextEditingController();

  TextEditingController jumlahUnit = TextEditingController();
  TextEditingController dp = TextEditingController();
  TextEditingController insuranceType = TextEditingController();
  TextEditingController biayaAssuransi = TextEditingController();
  TextEditingController biayaAdministrasi = TextEditingController();
  TextEditingController biayaProvisi = TextEditingController();
  TextEditingController tenor = TextEditingController();
  TextEditingController bunga = TextEditingController();
  TextEditingController metodeAngsuran = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void changeModel(value) {
    Get.snackbar("vehicle model", value.toString());
  }
}
