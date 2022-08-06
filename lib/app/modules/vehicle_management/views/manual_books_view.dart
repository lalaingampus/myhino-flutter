import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ManualBooksView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ManualBooksView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ManualBooksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
