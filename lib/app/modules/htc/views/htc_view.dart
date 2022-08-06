import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/htc_controller.dart';

class HtcView extends GetView<HtcController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HtcView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HtcView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
