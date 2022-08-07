import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SimulasiKreditController extends GetxController {
  //TODO: Implement SimulasiKreditController
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  var vehicle_model = "".obs;
  var variant = "".obs;
  var harga_unit = 0.obs;
  var harga_karoseri = 0.obs;
  var jumlah_unit = "".obs;
  var dp = "".obs;
  var insurance_type = "".obs;
  var biaya_assuransi = 0.obs;
  var biaya_administrasi = 0.obs;
  var biaya_provisi = 0.obs;
  var tenor = 0.obs;
  var bunga = 0.obs;
  var metod_angsuran = "".obs;

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
