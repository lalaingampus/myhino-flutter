import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vehicle_management_controller.dart';

class VehicleManagementView extends GetView<VehicleManagementController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VehicleManagementView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VehicleManagementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
