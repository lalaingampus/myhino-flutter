import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ContentHinoView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContentHinoView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ContentHinoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
