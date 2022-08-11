import 'package:flutter/material.dart';
import 'package:myhino/app/widgets/slider.dart';
import 'package:get/get.dart';

class DriverTrainingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DriverTrainingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DriverTrainingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
