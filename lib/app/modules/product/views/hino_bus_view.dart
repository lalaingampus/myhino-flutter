import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HinoBusView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HinoBusView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HinoBusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
