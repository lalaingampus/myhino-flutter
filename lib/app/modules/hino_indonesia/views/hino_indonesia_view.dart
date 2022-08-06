import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hino_indonesia_controller.dart';

class HinoIndonesiaView extends GetView<HinoIndonesiaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('booking-service');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
