import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BeritaEuroView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Euro4"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt, color: Colors.grey[400]),
            onPressed: () {},
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
