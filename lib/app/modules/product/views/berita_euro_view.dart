import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BeritaEuroView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeritaEuroView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeritaEuroView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
