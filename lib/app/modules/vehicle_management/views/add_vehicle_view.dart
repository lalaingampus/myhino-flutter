import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddVehicleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddVehicleView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddVehicleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
