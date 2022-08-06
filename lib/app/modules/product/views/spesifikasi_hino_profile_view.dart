import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SpesifikasiHinoProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ZS4141 - Euro4"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
