import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kredit_controller.dart';

class KreditView extends GetView<KreditController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KreditView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KreditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
