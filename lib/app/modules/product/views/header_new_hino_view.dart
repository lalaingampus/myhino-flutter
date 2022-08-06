import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HeaderNewHinoView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeaderNewHinoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HeaderNewHinoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
