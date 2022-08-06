import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/telematics_controller.dart';

class TelematicsView extends GetView<TelematicsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TelematicsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TelematicsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
