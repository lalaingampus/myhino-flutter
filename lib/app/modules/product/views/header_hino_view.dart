import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HeaderHinoView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeaderHinoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HeaderHinoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
