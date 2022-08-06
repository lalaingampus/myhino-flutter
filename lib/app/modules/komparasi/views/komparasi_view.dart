import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/komparasi_controller.dart';

class KomparasiView extends GetView<KomparasiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KomparasiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KomparasiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
