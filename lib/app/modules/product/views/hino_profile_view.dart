import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HinoProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HinoProfileView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HinoProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
