import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Euro4View extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Euro4View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Euro4View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
