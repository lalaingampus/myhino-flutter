import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HinoDutroView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HinoDutroView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HinoDutroView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
