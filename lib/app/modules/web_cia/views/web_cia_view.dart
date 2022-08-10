import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/web_cia_controller.dart';

class WebCiaView extends GetView<WebCiaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebCiaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WebCiaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
