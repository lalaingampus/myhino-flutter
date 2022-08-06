import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditVehicleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditVehicleView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EditVehicleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
