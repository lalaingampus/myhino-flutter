import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HinoRangerView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HinoRangerView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HinoRangerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
