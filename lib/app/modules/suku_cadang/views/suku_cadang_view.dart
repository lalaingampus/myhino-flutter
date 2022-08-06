import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/suku_cadang_controller.dart';

class SukuCadangView extends GetView<SukuCadangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SukuCadangView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SukuCadangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
