import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/komparasi_controller.dart';

class KomparasiView extends GetView<KomparasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Komparasi Produk"),
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
